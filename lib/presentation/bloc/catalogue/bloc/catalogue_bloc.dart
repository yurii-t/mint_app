import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mint_app/data/enums/doctor_experience.dart';
import 'package:mint_app/data/gateway/firebase_firestore_gateway_impl.dart';
import 'package:mint_app/data/models/doctor.dart';
import 'package:mint_app/presentation/bloc/status.dart';

part 'catalogue_event.dart';
part 'catalogue_state.dart';
part 'catalogue_bloc.freezed.dart';

class CatalogueBloc extends Bloc<CatalogueEvent, CatalogueState> {
  final FirebaseFirestoreGatewayImpl _firebaseFirestoreGatewayImpl;
  CatalogueBloc(this._firebaseFirestoreGatewayImpl)
      : super(const CatalogueState(status: BlocStatus.loading)) {
    on<CatalogueEvent>((event, emit) async {
      try {
        await event.when<Future<void>>(
          getCatalogueDoctors: () => _getCatalogueDoctors(emit: emit),
          applyFilters:
              (startPrice, endPrice, experience, selectedSecialities) =>
                  _applyFilters(
            emit: emit,
            startPrice: startPrice,
            endPrice: endPrice,
            experience: experience,
            selectedSecialities: selectedSecialities,
          ),
        );
      } on Exception catch (error) {
        emit(await _errorState(error));
        log('error: $error');
      }
    });
  }

  Future<void> _getCatalogueDoctors({
    required Emitter<CatalogueState> emit,
  }) async {
    try {
      final doctors = await _firebaseFirestoreGatewayImpl.getDoctors();

      emit(state.copyWith(
        status: BlocStatus.loaded,
        doctors: doctors,
        allDoctors: doctors,
      ));
    } on Exception catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }

  Future<void> _applyFilters({
    required Emitter<CatalogueState> emit,
    required num startPrice,
    required num endPrice,
    required String experience,
    required List<String> selectedSecialities,
  }) async {
    try {
      final doctors = List<Doctor>.from(state.allDoctors ?? <Doctor>[]);

      final filtredList = doctors
          .where((e) =>
              (e.price >= startPrice && e.price <= endPrice) &&
              (experience == DoctorExperience.noExprience.toStringValue
                  ? e.experience <= 0
                  : experience ==
                          DoctorExperience.fromOneToThreeYears.toStringValue
                      ? e.experience >= 1 && e.experience <= 3
                      : experience ==
                              DoctorExperience
                                  .fromFourToSevenYears.toStringValue
                          ? e.experience >= 4 && e.experience <= 7
                          : experience ==
                                  DoctorExperience
                                      .moreThanSevenYears.toStringValue
                              ? e.experience > 7
                              : e.experience >= 0) &&
              (selectedSecialities.isEmpty
                  ? e.specialization == e.specialization
                  : selectedSecialities
                      .any((element) => e.specialization.contains(element))))
          .toList();

      emit(state.copyWith(
        status: BlocStatus.loaded,
        doctors: filtredList,
        allDoctors: doctors,
      ));
    } on Exception catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }

  Future<CatalogueState> _errorState(Object error) async => CatalogueState(
        doctors: state.doctors,
        error: error,
        status: BlocStatus.error,
      );
}
