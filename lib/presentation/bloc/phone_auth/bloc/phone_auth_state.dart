part of 'phone_auth_bloc.dart';

@freezed
class PhoneAuthState with _$PhoneAuthState {
  const factory PhoneAuthState({
    required BlocStatus status,
    final String? uid,
    final bool? isPhoneAuthVerified,
    final bool? isPhoneAuthCodeSentSuccess,
    final String? verificationId,
    final String? recoveryCode,
    final bool? isRegistration,
    final bool? isPhoneNumberExist,
    Object? error,
  }) = _PhoneAuthState;
}
