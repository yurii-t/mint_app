import 'dart:developer';

import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mint_app/data/data.dart';
import 'package:mint_app/presentation/bloc/status.dart';

part 'auth_status_event.dart';
part 'auth_status_state.dart';
part 'auth_status_bloc.freezed.dart';

class AuthStatusBloc extends Bloc<AuthStatusEvent, AuthStatusState> {
  final AuthGatewayImpl _authGatewayImpl;

  AuthStatusBloc(
    this._authGatewayImpl,
  ) : super(const AuthStatusState(status: BlocStatus.loading)) {
    on<AuthStatusEvent>((event, emit) async {
      try {
        await event.when<Future<void>>(
          started: () => _authStatusStarted(emit: emit),
          logedIn: (isRegistration) =>
              _logedIn(emit: emit, isRegistration: isRegistration),
          logedOut: () => _logedOut(emit: emit),
        );
      } on Exception catch (error) {
        emit(await _errorState(error));
        log('error: $error');
      }
    });
  }

  Future<void> _authStatusStarted({
    required Emitter<AuthStatusState> emit,
  }) async {
    try {
      final bool isSignIn = await _authGatewayImpl.isSignIn();

      if (isSignIn) {
        final String uid = await _authGatewayImpl.getCurrentUserUid();
        emit(state.copyWith(
          status: BlocStatus.loaded,
          uid: uid,
          isRegistration: false,
          isLogedOut: false,
        ));
      } else
        emit(state.copyWith(isLogedOut: true));
    } on Exception catch (_) {
      emit(state.copyWith(isLogedOut: true));
    }
  }

  Future<void> _logedIn({
    required Emitter<AuthStatusState> emit,
    required bool isRegistration,
  }) async {
    final String uid = await _authGatewayImpl.getCurrentUserUid();

    emit(state.copyWith(
      status: BlocStatus.loaded,
      uid: uid,
      isRegistration: isRegistration,
      isLogedOut: false,
    ));
  }

  Future<void> _logedOut({
    required Emitter<AuthStatusState> emit,
  }) async {
    await _authGatewayImpl.signOut();

    emit(state.copyWith(isLogedOut: true));
  }

  Future<AuthStatusState> _errorState(Object error) async => AuthStatusState(
        uid: state.uid,
        error: error,
        status: BlocStatus.error,
      );
}
