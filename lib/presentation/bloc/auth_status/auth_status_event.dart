part of 'auth_status_bloc.dart';

@freezed
class AuthStatusEvent with _$AuthStatusEvent {
  const factory AuthStatusEvent.started() = _Started;
  const factory AuthStatusEvent.logedIn({required bool isRegistration}) =
      _LogedIn;
  const factory AuthStatusEvent.logedOut() = _LogedOut;
}
