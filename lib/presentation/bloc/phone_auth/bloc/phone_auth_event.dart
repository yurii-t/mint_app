part of 'phone_auth_bloc.dart';

@freezed
class PhoneAuthEvent with _$PhoneAuthEvent {
  const factory PhoneAuthEvent.sendOtpToPhone({
    required String phoneNumber,
    required bool isRegistration,
  }) = _SendOtpToPhone;

  const factory PhoneAuthEvent.verifySentOtp({
    required String otpCode,
    required String verificationId,
  }) = _VerifySentOtp;

  const factory PhoneAuthEvent.onPhoneOtpSent({
    required int? token,
    required String verificationId,
  }) = _OnPhoneOtpSent;
  const factory PhoneAuthEvent.onPhoneAuthVerificationComplete({
    required AuthCredential credential,
  }) = _OnPhoneAuthVerificationComplete;

  const factory PhoneAuthEvent.onPhoneAuthError({
    required String error,
  }) = _OnPhoneAuthError;
  const factory PhoneAuthEvent.setAppPinCode({
    required String pinCode,
  }) = _SetAppPinCode;

  const factory PhoneAuthEvent.onTwillioSendSms() = _OnTwillioSendSms;
}
