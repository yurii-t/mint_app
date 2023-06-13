import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mint_app/data/enums/doctor_experience.dart';
import 'package:mint_app/data/enums/specialities.dart';
import 'package:mint_app/data/gateway/firebase_firestore_gateway_impl.dart';

import 'package:mint_app/presentation/bloc/status.dart';

part 'filter_event.dart';
part 'filter_state.dart';
part 'filter_bloc.freezed.dart';

class FilterBloc extends Bloc<FilterEvent, FilterState> {
  final FirebaseFirestoreGatewayImpl _firebaseFirestoreGatewayImpl;
  FilterBloc(this._firebaseFirestoreGatewayImpl)
      : super(FilterState(
          status: BlocStatus.loading,
          experienceList: [
            DoctorExperience.all.toStringValue,
            DoctorExperience.noExprience.toStringValue,
            DoctorExperience.fromOneToThreeYears.toStringValue,
            DoctorExperience.fromFourToSevenYears.toStringValue,
            DoctorExperience.moreThanSevenYears.toStringValue,
          ],
          specialities: [
            Specialities.Motivation.toStringValue,
            Specialities.Panic.toStringValue,
            Specialities.Burnout.toStringValue,
            Specialities.Depression.toStringValue,
            Specialities.SelfConfidence.toStringValue,
            Specialities.Immigration.toStringValue,
            Specialities.Stress.toStringValue,
            Specialities.PurposeInLife.toStringValue,
            Specialities.Relationships.toStringValue,
            Specialities.Career.toStringValue,
            Specialities.Cheat.toStringValue,
            Specialities.Finance.toStringValue,
          ],
          selectedExperience: '',
          selectedSpecialities: [],
        )) {
    on<FilterEvent>((event, emit) async {
      try {
        await event.when<Future<void>>(
          loadFilter: () => _loadFilter(emit: emit),
          changePrice: (startPrice, endPrice) => _changePrice(
            emit: emit,
            startPrice: startPrice,
            endPrice: endPrice,
          ),
          selectExperience: (experience) =>
              _selectExperience(emit: emit, experience: experience),
          selectSpecialities: (selectedSeciality) => _selectSpecialities(
            emit: emit,
            selectedSeciality: selectedSeciality,
          ),
          clearFilter: () => _clearFilter(emit: emit),
        );
      } on Exception catch (error) {
        emit(await _errorState(error));
        log('error: $error');
      }
    });
  }

  Future<void> _loadFilter({
    required Emitter<FilterState> emit,
  }) async {
    try {
      final doctors = await _firebaseFirestoreGatewayImpl.getDoctors();

      final maxPrice = doctors.reduce(
        (value, element) => value.price > element.price ? value : element,
      );

      emit(state.copyWith(
        status: BlocStatus.loaded,
        startPrice: 0,
        endPrice: maxPrice.price,
        maxPrice: maxPrice.price,
      ));
    } on Exception catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }

  Future<void> _changePrice({
    required Emitter<FilterState> emit,
    required num startPrice,
    required num endPrice,
  }) async {
    try {
      emit(state.copyWith(
        status: BlocStatus.loaded,
        startPrice: startPrice,
        endPrice: endPrice,
      ));
    } on Exception catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }

  Future<void> _selectExperience({
    required Emitter<FilterState> emit,
    required String experience,
  }) async {
    try {
      emit(state.copyWith(
        status: BlocStatus.loaded,
        selectedExperience: experience,
      ));
    } on Exception catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }

  Future<void> _selectSpecialities({
    required Emitter<FilterState> emit,
    required String selectedSeciality,
  }) async {
    try {
      final List<String> selectedList =
          List<String>.from(state.selectedSpecialities);

      selectedList.contains(selectedSeciality)
          ? selectedList.remove(selectedSeciality)
          : selectedList.add(selectedSeciality);

      emit(state.copyWith(
        status: BlocStatus.loaded,
        selectedSpecialities: selectedList,
      ));
    } on Exception catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }

  Future<void> _clearFilter({
    required Emitter<FilterState> emit,
  }) async {
    try {
      emit(state.copyWith(
        status: BlocStatus.loaded,
        startPrice: 0,
        endPrice: state.maxPrice,
        selectedExperience: '',
        selectedSpecialities: [],
      ));
    } on Exception catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }

  Future<FilterState> _errorState(Object error) async => FilterState(
        experienceList: state.experienceList,
        specialities: state.specialities,
        selectedExperience: state.selectedExperience,
        selectedSpecialities: state.selectedSpecialities,
        error: error,
        status: BlocStatus.error,
      );
}
