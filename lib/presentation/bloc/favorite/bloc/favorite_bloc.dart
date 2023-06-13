import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mint_app/data/data.dart';
import 'package:mint_app/presentation/bloc/status.dart';

part 'favorite_event.dart';
part 'favorite_state.dart';
part 'favorite_bloc.freezed.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  final FirebaseFirestoreGatewayImpl _firebaseFirestoreGatewayImpl;
  FavoriteBloc(this._firebaseFirestoreGatewayImpl)
      : super(const FavoriteState(status: BlocStatus.loading)) {
    on<FavoriteEvent>((event, emit) async {
      try {
        await event.when<Future<void>>(
          getUserStream: () => _getUserStream(emit: emit),
          addDoctorToFavorite: (doctor) =>
              _addDoctorToFavorite(doctor: doctor, emit: emit),
        );
      } on Exception catch (error) {
        emit(await _errorState(error));
        log('error: $error');
      }
    });
  }

  Future<void> _getUserStream({
    required Emitter<FavoriteState> emit,
  }) async {
    try {
      await emit.forEach(
        _firebaseFirestoreGatewayImpl.streamCurrentUserInfo(),
        onData: (currentUser) => state.copyWith(
          status: BlocStatus.loaded,
          currentUser: currentUser,
        ),
      );
    } on Exception catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }

  Future<void> _addDoctorToFavorite({
    required Emitter<FavoriteState> emit,
    required Doctor doctor,
  }) async {
    try {
      await _firebaseFirestoreGatewayImpl.addDoctorToFavorite(doctor);
    } on Exception catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }

  Future<FavoriteState> _errorState(Object error) async => FavoriteState(
        currentUser: state.currentUser,
        error: error,
        status: BlocStatus.error,
      );
}
