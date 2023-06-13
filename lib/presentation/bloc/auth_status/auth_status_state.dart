part of 'auth_status_bloc.dart';

@freezed
class AuthStatusState with _$AuthStatusState {
  const factory AuthStatusState({
    required BlocStatus status,
    final String? uid,
    final bool? isRegistration,
    final bool? isLogedOut,
    Object? error,
  }) = _AuthStatusState;
}
