import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mint_app/data/data.dart';
import 'package:mint_app/presentation/bloc/status.dart';

part 'main_event.dart';
part 'main_state.dart';
part 'main_bloc.freezed.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final FirebaseFirestoreGatewayImpl _firebaseFirestoreGatewayImpl;
  MainBloc(this._firebaseFirestoreGatewayImpl)
      : super(const MainState(status: BlocStatus.loading)) {
    on<MainEvent>((event, emit) async {
      try {
        await event.when<Future<void>>(
          getDoctors: () => _getDoctors(emit: emit),
          getDoctorsMatching: (
            communicationValue,
            therapyBeforeValue,
            priceValue,
            selectedProblems,
          ) =>
              _getDoctorsMatching(
            emit: emit,
            priceValue: priceValue,
            selectedProblems: selectedProblems,
          ),
          getDoctorsBySymptoms: (selectedSymptoms) => _getDoctorsBySymptoms(
            emit: emit,
            selectedSymptoms: selectedSymptoms,
          ),
        );
      } on Exception catch (error) {
        emit(await _errorState(error));
        log('error: $error');
      }
    });
  }

  Future<void> _getDoctors({
    required Emitter<MainState> emit,
  }) async {
    try {
      final doctors = await _firebaseFirestoreGatewayImpl.getDoctors();
      final user = await _firebaseFirestoreGatewayImpl.getCurrentUserInfo();

      emit(state.copyWith(
        status: BlocStatus.loaded,
        doctors: doctors,
        currentUser: user,
        allDoctors: doctors,
      ));
    } on Exception catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }

  Future<void> _getDoctorsMatching({
    required Emitter<MainState> emit,
    required String priceValue,
    required List<String> selectedProblems,
  }) async {
    try {
      final currentList = List<Doctor>.from(state.allDoctors ?? <Doctor>[]);
      final filteredList = currentList
          .where(
            (e) =>
                (priceValue == 'Up to 1000₴'
                    ? e.price <= 1000
                    : priceValue == '500-1000₴'
                        ? e.price >= 500 && e.price <= 1000
                        : priceValue == '1000-2000₴'
                            ? e.price >= 1000 && e.price <= 2000
                            : e.price >= 2000) &&
                selectedProblems
                    .any((element) => e.specialization.contains(element)),
          )
          .toList();

      emit(state.copyWith(
        status: BlocStatus.loaded,
        doctors: filteredList,
        currentUser: state.currentUser,
      ));
    } on Exception catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }

  Future<void> _getDoctorsBySymptoms({
    required Emitter<MainState> emit,
    required List<String> selectedSymptoms,
  }) async {
    try {
      final currentList = List<Doctor>.from(state.allDoctors ?? <Doctor>[]);
      final filteredList = currentList
          .where(
            (e) => selectedSymptoms
                .any((element) => e.specialization.contains(element)),
          )
          .toList();

      emit(state.copyWith(
        status: BlocStatus.loaded,
        doctors: filteredList,
        currentUser: state.currentUser,
      ));
    } on Exception catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }

  Future<MainState> _errorState(Object error) async => MainState(
        currentUser: state.currentUser,
        doctors: state.doctors,
        error: error,
        status: BlocStatus.error,
      );
}
