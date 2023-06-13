// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phone_auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PhoneAuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber, bool isRegistration)
        sendOtpToPhone,
    required TResult Function(String otpCode, String verificationId)
        verifySentOtp,
    required TResult Function(int? token, String verificationId) onPhoneOtpSent,
    required TResult Function(AuthCredential credential)
        onPhoneAuthVerificationComplete,
    required TResult Function(String error) onPhoneAuthError,
    required TResult Function(String pinCode) setAppPinCode,
    required TResult Function() onTwillioSendSms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber, bool isRegistration)? sendOtpToPhone,
    TResult? Function(String otpCode, String verificationId)? verifySentOtp,
    TResult? Function(int? token, String verificationId)? onPhoneOtpSent,
    TResult? Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    TResult? Function(String error)? onPhoneAuthError,
    TResult? Function(String pinCode)? setAppPinCode,
    TResult? Function()? onTwillioSendSms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, bool isRegistration)? sendOtpToPhone,
    TResult Function(String otpCode, String verificationId)? verifySentOtp,
    TResult Function(int? token, String verificationId)? onPhoneOtpSent,
    TResult Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    TResult Function(String error)? onPhoneAuthError,
    TResult Function(String pinCode)? setAppPinCode,
    TResult Function()? onTwillioSendSms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOtpToPhone value) sendOtpToPhone,
    required TResult Function(_VerifySentOtp value) verifySentOtp,
    required TResult Function(_OnPhoneOtpSent value) onPhoneOtpSent,
    required TResult Function(_OnPhoneAuthVerificationComplete value)
        onPhoneAuthVerificationComplete,
    required TResult Function(_OnPhoneAuthError value) onPhoneAuthError,
    required TResult Function(_SetAppPinCode value) setAppPinCode,
    required TResult Function(_OnTwillioSendSms value) onTwillioSendSms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOtpToPhone value)? sendOtpToPhone,
    TResult? Function(_VerifySentOtp value)? verifySentOtp,
    TResult? Function(_OnPhoneOtpSent value)? onPhoneOtpSent,
    TResult? Function(_OnPhoneAuthVerificationComplete value)?
        onPhoneAuthVerificationComplete,
    TResult? Function(_OnPhoneAuthError value)? onPhoneAuthError,
    TResult? Function(_SetAppPinCode value)? setAppPinCode,
    TResult? Function(_OnTwillioSendSms value)? onTwillioSendSms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtpToPhone value)? sendOtpToPhone,
    TResult Function(_VerifySentOtp value)? verifySentOtp,
    TResult Function(_OnPhoneOtpSent value)? onPhoneOtpSent,
    TResult Function(_OnPhoneAuthVerificationComplete value)?
        onPhoneAuthVerificationComplete,
    TResult Function(_OnPhoneAuthError value)? onPhoneAuthError,
    TResult Function(_SetAppPinCode value)? setAppPinCode,
    TResult Function(_OnTwillioSendSms value)? onTwillioSendSms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneAuthEventCopyWith<$Res> {
  factory $PhoneAuthEventCopyWith(
          PhoneAuthEvent value, $Res Function(PhoneAuthEvent) then) =
      _$PhoneAuthEventCopyWithImpl<$Res, PhoneAuthEvent>;
}

/// @nodoc
class _$PhoneAuthEventCopyWithImpl<$Res, $Val extends PhoneAuthEvent>
    implements $PhoneAuthEventCopyWith<$Res> {
  _$PhoneAuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SendOtpToPhoneCopyWith<$Res> {
  factory _$$_SendOtpToPhoneCopyWith(
          _$_SendOtpToPhone value, $Res Function(_$_SendOtpToPhone) then) =
      __$$_SendOtpToPhoneCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber, bool isRegistration});
}

/// @nodoc
class __$$_SendOtpToPhoneCopyWithImpl<$Res>
    extends _$PhoneAuthEventCopyWithImpl<$Res, _$_SendOtpToPhone>
    implements _$$_SendOtpToPhoneCopyWith<$Res> {
  __$$_SendOtpToPhoneCopyWithImpl(
      _$_SendOtpToPhone _value, $Res Function(_$_SendOtpToPhone) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? isRegistration = null,
  }) {
    return _then(_$_SendOtpToPhone(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isRegistration: null == isRegistration
          ? _value.isRegistration
          : isRegistration // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SendOtpToPhone
    with DiagnosticableTreeMixin
    implements _SendOtpToPhone {
  const _$_SendOtpToPhone(
      {required this.phoneNumber, required this.isRegistration});

  @override
  final String phoneNumber;
  @override
  final bool isRegistration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PhoneAuthEvent.sendOtpToPhone(phoneNumber: $phoneNumber, isRegistration: $isRegistration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PhoneAuthEvent.sendOtpToPhone'))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('isRegistration', isRegistration));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendOtpToPhone &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.isRegistration, isRegistration) ||
                other.isRegistration == isRegistration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, isRegistration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendOtpToPhoneCopyWith<_$_SendOtpToPhone> get copyWith =>
      __$$_SendOtpToPhoneCopyWithImpl<_$_SendOtpToPhone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber, bool isRegistration)
        sendOtpToPhone,
    required TResult Function(String otpCode, String verificationId)
        verifySentOtp,
    required TResult Function(int? token, String verificationId) onPhoneOtpSent,
    required TResult Function(AuthCredential credential)
        onPhoneAuthVerificationComplete,
    required TResult Function(String error) onPhoneAuthError,
    required TResult Function(String pinCode) setAppPinCode,
    required TResult Function() onTwillioSendSms,
  }) {
    return sendOtpToPhone(phoneNumber, isRegistration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber, bool isRegistration)? sendOtpToPhone,
    TResult? Function(String otpCode, String verificationId)? verifySentOtp,
    TResult? Function(int? token, String verificationId)? onPhoneOtpSent,
    TResult? Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    TResult? Function(String error)? onPhoneAuthError,
    TResult? Function(String pinCode)? setAppPinCode,
    TResult? Function()? onTwillioSendSms,
  }) {
    return sendOtpToPhone?.call(phoneNumber, isRegistration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, bool isRegistration)? sendOtpToPhone,
    TResult Function(String otpCode, String verificationId)? verifySentOtp,
    TResult Function(int? token, String verificationId)? onPhoneOtpSent,
    TResult Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    TResult Function(String error)? onPhoneAuthError,
    TResult Function(String pinCode)? setAppPinCode,
    TResult Function()? onTwillioSendSms,
    required TResult orElse(),
  }) {
    if (sendOtpToPhone != null) {
      return sendOtpToPhone(phoneNumber, isRegistration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOtpToPhone value) sendOtpToPhone,
    required TResult Function(_VerifySentOtp value) verifySentOtp,
    required TResult Function(_OnPhoneOtpSent value) onPhoneOtpSent,
    required TResult Function(_OnPhoneAuthVerificationComplete value)
        onPhoneAuthVerificationComplete,
    required TResult Function(_OnPhoneAuthError value) onPhoneAuthError,
    required TResult Function(_SetAppPinCode value) setAppPinCode,
    required TResult Function(_OnTwillioSendSms value) onTwillioSendSms,
  }) {
    return sendOtpToPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOtpToPhone value)? sendOtpToPhone,
    TResult? Function(_VerifySentOtp value)? verifySentOtp,
    TResult? Function(_OnPhoneOtpSent value)? onPhoneOtpSent,
    TResult? Function(_OnPhoneAuthVerificationComplete value)?
        onPhoneAuthVerificationComplete,
    TResult? Function(_OnPhoneAuthError value)? onPhoneAuthError,
    TResult? Function(_SetAppPinCode value)? setAppPinCode,
    TResult? Function(_OnTwillioSendSms value)? onTwillioSendSms,
  }) {
    return sendOtpToPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtpToPhone value)? sendOtpToPhone,
    TResult Function(_VerifySentOtp value)? verifySentOtp,
    TResult Function(_OnPhoneOtpSent value)? onPhoneOtpSent,
    TResult Function(_OnPhoneAuthVerificationComplete value)?
        onPhoneAuthVerificationComplete,
    TResult Function(_OnPhoneAuthError value)? onPhoneAuthError,
    TResult Function(_SetAppPinCode value)? setAppPinCode,
    TResult Function(_OnTwillioSendSms value)? onTwillioSendSms,
    required TResult orElse(),
  }) {
    if (sendOtpToPhone != null) {
      return sendOtpToPhone(this);
    }
    return orElse();
  }
}

abstract class _SendOtpToPhone implements PhoneAuthEvent {
  const factory _SendOtpToPhone(
      {required final String phoneNumber,
      required final bool isRegistration}) = _$_SendOtpToPhone;

  String get phoneNumber;
  bool get isRegistration;
  @JsonKey(ignore: true)
  _$$_SendOtpToPhoneCopyWith<_$_SendOtpToPhone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VerifySentOtpCopyWith<$Res> {
  factory _$$_VerifySentOtpCopyWith(
          _$_VerifySentOtp value, $Res Function(_$_VerifySentOtp) then) =
      __$$_VerifySentOtpCopyWithImpl<$Res>;
  @useResult
  $Res call({String otpCode, String verificationId});
}

/// @nodoc
class __$$_VerifySentOtpCopyWithImpl<$Res>
    extends _$PhoneAuthEventCopyWithImpl<$Res, _$_VerifySentOtp>
    implements _$$_VerifySentOtpCopyWith<$Res> {
  __$$_VerifySentOtpCopyWithImpl(
      _$_VerifySentOtp _value, $Res Function(_$_VerifySentOtp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpCode = null,
    Object? verificationId = null,
  }) {
    return _then(_$_VerifySentOtp(
      otpCode: null == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String,
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_VerifySentOtp with DiagnosticableTreeMixin implements _VerifySentOtp {
  const _$_VerifySentOtp({required this.otpCode, required this.verificationId});

  @override
  final String otpCode;
  @override
  final String verificationId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PhoneAuthEvent.verifySentOtp(otpCode: $otpCode, verificationId: $verificationId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PhoneAuthEvent.verifySentOtp'))
      ..add(DiagnosticsProperty('otpCode', otpCode))
      ..add(DiagnosticsProperty('verificationId', verificationId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifySentOtp &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode) &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otpCode, verificationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerifySentOtpCopyWith<_$_VerifySentOtp> get copyWith =>
      __$$_VerifySentOtpCopyWithImpl<_$_VerifySentOtp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber, bool isRegistration)
        sendOtpToPhone,
    required TResult Function(String otpCode, String verificationId)
        verifySentOtp,
    required TResult Function(int? token, String verificationId) onPhoneOtpSent,
    required TResult Function(AuthCredential credential)
        onPhoneAuthVerificationComplete,
    required TResult Function(String error) onPhoneAuthError,
    required TResult Function(String pinCode) setAppPinCode,
    required TResult Function() onTwillioSendSms,
  }) {
    return verifySentOtp(otpCode, verificationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber, bool isRegistration)? sendOtpToPhone,
    TResult? Function(String otpCode, String verificationId)? verifySentOtp,
    TResult? Function(int? token, String verificationId)? onPhoneOtpSent,
    TResult? Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    TResult? Function(String error)? onPhoneAuthError,
    TResult? Function(String pinCode)? setAppPinCode,
    TResult? Function()? onTwillioSendSms,
  }) {
    return verifySentOtp?.call(otpCode, verificationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, bool isRegistration)? sendOtpToPhone,
    TResult Function(String otpCode, String verificationId)? verifySentOtp,
    TResult Function(int? token, String verificationId)? onPhoneOtpSent,
    TResult Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    TResult Function(String error)? onPhoneAuthError,
    TResult Function(String pinCode)? setAppPinCode,
    TResult Function()? onTwillioSendSms,
    required TResult orElse(),
  }) {
    if (verifySentOtp != null) {
      return verifySentOtp(otpCode, verificationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOtpToPhone value) sendOtpToPhone,
    required TResult Function(_VerifySentOtp value) verifySentOtp,
    required TResult Function(_OnPhoneOtpSent value) onPhoneOtpSent,
    required TResult Function(_OnPhoneAuthVerificationComplete value)
        onPhoneAuthVerificationComplete,
    required TResult Function(_OnPhoneAuthError value) onPhoneAuthError,
    required TResult Function(_SetAppPinCode value) setAppPinCode,
    required TResult Function(_OnTwillioSendSms value) onTwillioSendSms,
  }) {
    return verifySentOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOtpToPhone value)? sendOtpToPhone,
    TResult? Function(_VerifySentOtp value)? verifySentOtp,
    TResult? Function(_OnPhoneOtpSent value)? onPhoneOtpSent,
    TResult? Function(_OnPhoneAuthVerificationComplete value)?
        onPhoneAuthVerificationComplete,
    TResult? Function(_OnPhoneAuthError value)? onPhoneAuthError,
    TResult? Function(_SetAppPinCode value)? setAppPinCode,
    TResult? Function(_OnTwillioSendSms value)? onTwillioSendSms,
  }) {
    return verifySentOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtpToPhone value)? sendOtpToPhone,
    TResult Function(_VerifySentOtp value)? verifySentOtp,
    TResult Function(_OnPhoneOtpSent value)? onPhoneOtpSent,
    TResult Function(_OnPhoneAuthVerificationComplete value)?
        onPhoneAuthVerificationComplete,
    TResult Function(_OnPhoneAuthError value)? onPhoneAuthError,
    TResult Function(_SetAppPinCode value)? setAppPinCode,
    TResult Function(_OnTwillioSendSms value)? onTwillioSendSms,
    required TResult orElse(),
  }) {
    if (verifySentOtp != null) {
      return verifySentOtp(this);
    }
    return orElse();
  }
}

abstract class _VerifySentOtp implements PhoneAuthEvent {
  const factory _VerifySentOtp(
      {required final String otpCode,
      required final String verificationId}) = _$_VerifySentOtp;

  String get otpCode;
  String get verificationId;
  @JsonKey(ignore: true)
  _$$_VerifySentOtpCopyWith<_$_VerifySentOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnPhoneOtpSentCopyWith<$Res> {
  factory _$$_OnPhoneOtpSentCopyWith(
          _$_OnPhoneOtpSent value, $Res Function(_$_OnPhoneOtpSent) then) =
      __$$_OnPhoneOtpSentCopyWithImpl<$Res>;
  @useResult
  $Res call({int? token, String verificationId});
}

/// @nodoc
class __$$_OnPhoneOtpSentCopyWithImpl<$Res>
    extends _$PhoneAuthEventCopyWithImpl<$Res, _$_OnPhoneOtpSent>
    implements _$$_OnPhoneOtpSentCopyWith<$Res> {
  __$$_OnPhoneOtpSentCopyWithImpl(
      _$_OnPhoneOtpSent _value, $Res Function(_$_OnPhoneOtpSent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? verificationId = null,
  }) {
    return _then(_$_OnPhoneOtpSent(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as int?,
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnPhoneOtpSent
    with DiagnosticableTreeMixin
    implements _OnPhoneOtpSent {
  const _$_OnPhoneOtpSent({required this.token, required this.verificationId});

  @override
  final int? token;
  @override
  final String verificationId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PhoneAuthEvent.onPhoneOtpSent(token: $token, verificationId: $verificationId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PhoneAuthEvent.onPhoneOtpSent'))
      ..add(DiagnosticsProperty('token', token))
      ..add(DiagnosticsProperty('verificationId', verificationId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnPhoneOtpSent &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token, verificationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnPhoneOtpSentCopyWith<_$_OnPhoneOtpSent> get copyWith =>
      __$$_OnPhoneOtpSentCopyWithImpl<_$_OnPhoneOtpSent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber, bool isRegistration)
        sendOtpToPhone,
    required TResult Function(String otpCode, String verificationId)
        verifySentOtp,
    required TResult Function(int? token, String verificationId) onPhoneOtpSent,
    required TResult Function(AuthCredential credential)
        onPhoneAuthVerificationComplete,
    required TResult Function(String error) onPhoneAuthError,
    required TResult Function(String pinCode) setAppPinCode,
    required TResult Function() onTwillioSendSms,
  }) {
    return onPhoneOtpSent(token, verificationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber, bool isRegistration)? sendOtpToPhone,
    TResult? Function(String otpCode, String verificationId)? verifySentOtp,
    TResult? Function(int? token, String verificationId)? onPhoneOtpSent,
    TResult? Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    TResult? Function(String error)? onPhoneAuthError,
    TResult? Function(String pinCode)? setAppPinCode,
    TResult? Function()? onTwillioSendSms,
  }) {
    return onPhoneOtpSent?.call(token, verificationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, bool isRegistration)? sendOtpToPhone,
    TResult Function(String otpCode, String verificationId)? verifySentOtp,
    TResult Function(int? token, String verificationId)? onPhoneOtpSent,
    TResult Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    TResult Function(String error)? onPhoneAuthError,
    TResult Function(String pinCode)? setAppPinCode,
    TResult Function()? onTwillioSendSms,
    required TResult orElse(),
  }) {
    if (onPhoneOtpSent != null) {
      return onPhoneOtpSent(token, verificationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOtpToPhone value) sendOtpToPhone,
    required TResult Function(_VerifySentOtp value) verifySentOtp,
    required TResult Function(_OnPhoneOtpSent value) onPhoneOtpSent,
    required TResult Function(_OnPhoneAuthVerificationComplete value)
        onPhoneAuthVerificationComplete,
    required TResult Function(_OnPhoneAuthError value) onPhoneAuthError,
    required TResult Function(_SetAppPinCode value) setAppPinCode,
    required TResult Function(_OnTwillioSendSms value) onTwillioSendSms,
  }) {
    return onPhoneOtpSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOtpToPhone value)? sendOtpToPhone,
    TResult? Function(_VerifySentOtp value)? verifySentOtp,
    TResult? Function(_OnPhoneOtpSent value)? onPhoneOtpSent,
    TResult? Function(_OnPhoneAuthVerificationComplete value)?
        onPhoneAuthVerificationComplete,
    TResult? Function(_OnPhoneAuthError value)? onPhoneAuthError,
    TResult? Function(_SetAppPinCode value)? setAppPinCode,
    TResult? Function(_OnTwillioSendSms value)? onTwillioSendSms,
  }) {
    return onPhoneOtpSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtpToPhone value)? sendOtpToPhone,
    TResult Function(_VerifySentOtp value)? verifySentOtp,
    TResult Function(_OnPhoneOtpSent value)? onPhoneOtpSent,
    TResult Function(_OnPhoneAuthVerificationComplete value)?
        onPhoneAuthVerificationComplete,
    TResult Function(_OnPhoneAuthError value)? onPhoneAuthError,
    TResult Function(_SetAppPinCode value)? setAppPinCode,
    TResult Function(_OnTwillioSendSms value)? onTwillioSendSms,
    required TResult orElse(),
  }) {
    if (onPhoneOtpSent != null) {
      return onPhoneOtpSent(this);
    }
    return orElse();
  }
}

abstract class _OnPhoneOtpSent implements PhoneAuthEvent {
  const factory _OnPhoneOtpSent(
      {required final int? token,
      required final String verificationId}) = _$_OnPhoneOtpSent;

  int? get token;
  String get verificationId;
  @JsonKey(ignore: true)
  _$$_OnPhoneOtpSentCopyWith<_$_OnPhoneOtpSent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnPhoneAuthVerificationCompleteCopyWith<$Res> {
  factory _$$_OnPhoneAuthVerificationCompleteCopyWith(
          _$_OnPhoneAuthVerificationComplete value,
          $Res Function(_$_OnPhoneAuthVerificationComplete) then) =
      __$$_OnPhoneAuthVerificationCompleteCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthCredential credential});
}

/// @nodoc
class __$$_OnPhoneAuthVerificationCompleteCopyWithImpl<$Res>
    extends _$PhoneAuthEventCopyWithImpl<$Res,
        _$_OnPhoneAuthVerificationComplete>
    implements _$$_OnPhoneAuthVerificationCompleteCopyWith<$Res> {
  __$$_OnPhoneAuthVerificationCompleteCopyWithImpl(
      _$_OnPhoneAuthVerificationComplete _value,
      $Res Function(_$_OnPhoneAuthVerificationComplete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? credential = null,
  }) {
    return _then(_$_OnPhoneAuthVerificationComplete(
      credential: null == credential
          ? _value.credential
          : credential // ignore: cast_nullable_to_non_nullable
              as AuthCredential,
    ));
  }
}

/// @nodoc

class _$_OnPhoneAuthVerificationComplete
    with DiagnosticableTreeMixin
    implements _OnPhoneAuthVerificationComplete {
  const _$_OnPhoneAuthVerificationComplete({required this.credential});

  @override
  final AuthCredential credential;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PhoneAuthEvent.onPhoneAuthVerificationComplete(credential: $credential)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'PhoneAuthEvent.onPhoneAuthVerificationComplete'))
      ..add(DiagnosticsProperty('credential', credential));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnPhoneAuthVerificationComplete &&
            (identical(other.credential, credential) ||
                other.credential == credential));
  }

  @override
  int get hashCode => Object.hash(runtimeType, credential);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnPhoneAuthVerificationCompleteCopyWith<
          _$_OnPhoneAuthVerificationComplete>
      get copyWith => __$$_OnPhoneAuthVerificationCompleteCopyWithImpl<
          _$_OnPhoneAuthVerificationComplete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber, bool isRegistration)
        sendOtpToPhone,
    required TResult Function(String otpCode, String verificationId)
        verifySentOtp,
    required TResult Function(int? token, String verificationId) onPhoneOtpSent,
    required TResult Function(AuthCredential credential)
        onPhoneAuthVerificationComplete,
    required TResult Function(String error) onPhoneAuthError,
    required TResult Function(String pinCode) setAppPinCode,
    required TResult Function() onTwillioSendSms,
  }) {
    return onPhoneAuthVerificationComplete(credential);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber, bool isRegistration)? sendOtpToPhone,
    TResult? Function(String otpCode, String verificationId)? verifySentOtp,
    TResult? Function(int? token, String verificationId)? onPhoneOtpSent,
    TResult? Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    TResult? Function(String error)? onPhoneAuthError,
    TResult? Function(String pinCode)? setAppPinCode,
    TResult? Function()? onTwillioSendSms,
  }) {
    return onPhoneAuthVerificationComplete?.call(credential);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, bool isRegistration)? sendOtpToPhone,
    TResult Function(String otpCode, String verificationId)? verifySentOtp,
    TResult Function(int? token, String verificationId)? onPhoneOtpSent,
    TResult Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    TResult Function(String error)? onPhoneAuthError,
    TResult Function(String pinCode)? setAppPinCode,
    TResult Function()? onTwillioSendSms,
    required TResult orElse(),
  }) {
    if (onPhoneAuthVerificationComplete != null) {
      return onPhoneAuthVerificationComplete(credential);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOtpToPhone value) sendOtpToPhone,
    required TResult Function(_VerifySentOtp value) verifySentOtp,
    required TResult Function(_OnPhoneOtpSent value) onPhoneOtpSent,
    required TResult Function(_OnPhoneAuthVerificationComplete value)
        onPhoneAuthVerificationComplete,
    required TResult Function(_OnPhoneAuthError value) onPhoneAuthError,
    required TResult Function(_SetAppPinCode value) setAppPinCode,
    required TResult Function(_OnTwillioSendSms value) onTwillioSendSms,
  }) {
    return onPhoneAuthVerificationComplete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOtpToPhone value)? sendOtpToPhone,
    TResult? Function(_VerifySentOtp value)? verifySentOtp,
    TResult? Function(_OnPhoneOtpSent value)? onPhoneOtpSent,
    TResult? Function(_OnPhoneAuthVerificationComplete value)?
        onPhoneAuthVerificationComplete,
    TResult? Function(_OnPhoneAuthError value)? onPhoneAuthError,
    TResult? Function(_SetAppPinCode value)? setAppPinCode,
    TResult? Function(_OnTwillioSendSms value)? onTwillioSendSms,
  }) {
    return onPhoneAuthVerificationComplete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtpToPhone value)? sendOtpToPhone,
    TResult Function(_VerifySentOtp value)? verifySentOtp,
    TResult Function(_OnPhoneOtpSent value)? onPhoneOtpSent,
    TResult Function(_OnPhoneAuthVerificationComplete value)?
        onPhoneAuthVerificationComplete,
    TResult Function(_OnPhoneAuthError value)? onPhoneAuthError,
    TResult Function(_SetAppPinCode value)? setAppPinCode,
    TResult Function(_OnTwillioSendSms value)? onTwillioSendSms,
    required TResult orElse(),
  }) {
    if (onPhoneAuthVerificationComplete != null) {
      return onPhoneAuthVerificationComplete(this);
    }
    return orElse();
  }
}

abstract class _OnPhoneAuthVerificationComplete implements PhoneAuthEvent {
  const factory _OnPhoneAuthVerificationComplete(
          {required final AuthCredential credential}) =
      _$_OnPhoneAuthVerificationComplete;

  AuthCredential get credential;
  @JsonKey(ignore: true)
  _$$_OnPhoneAuthVerificationCompleteCopyWith<
          _$_OnPhoneAuthVerificationComplete>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnPhoneAuthErrorCopyWith<$Res> {
  factory _$$_OnPhoneAuthErrorCopyWith(
          _$_OnPhoneAuthError value, $Res Function(_$_OnPhoneAuthError) then) =
      __$$_OnPhoneAuthErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_OnPhoneAuthErrorCopyWithImpl<$Res>
    extends _$PhoneAuthEventCopyWithImpl<$Res, _$_OnPhoneAuthError>
    implements _$$_OnPhoneAuthErrorCopyWith<$Res> {
  __$$_OnPhoneAuthErrorCopyWithImpl(
      _$_OnPhoneAuthError _value, $Res Function(_$_OnPhoneAuthError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_OnPhoneAuthError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnPhoneAuthError
    with DiagnosticableTreeMixin
    implements _OnPhoneAuthError {
  const _$_OnPhoneAuthError({required this.error});

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PhoneAuthEvent.onPhoneAuthError(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PhoneAuthEvent.onPhoneAuthError'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnPhoneAuthError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnPhoneAuthErrorCopyWith<_$_OnPhoneAuthError> get copyWith =>
      __$$_OnPhoneAuthErrorCopyWithImpl<_$_OnPhoneAuthError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber, bool isRegistration)
        sendOtpToPhone,
    required TResult Function(String otpCode, String verificationId)
        verifySentOtp,
    required TResult Function(int? token, String verificationId) onPhoneOtpSent,
    required TResult Function(AuthCredential credential)
        onPhoneAuthVerificationComplete,
    required TResult Function(String error) onPhoneAuthError,
    required TResult Function(String pinCode) setAppPinCode,
    required TResult Function() onTwillioSendSms,
  }) {
    return onPhoneAuthError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber, bool isRegistration)? sendOtpToPhone,
    TResult? Function(String otpCode, String verificationId)? verifySentOtp,
    TResult? Function(int? token, String verificationId)? onPhoneOtpSent,
    TResult? Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    TResult? Function(String error)? onPhoneAuthError,
    TResult? Function(String pinCode)? setAppPinCode,
    TResult? Function()? onTwillioSendSms,
  }) {
    return onPhoneAuthError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, bool isRegistration)? sendOtpToPhone,
    TResult Function(String otpCode, String verificationId)? verifySentOtp,
    TResult Function(int? token, String verificationId)? onPhoneOtpSent,
    TResult Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    TResult Function(String error)? onPhoneAuthError,
    TResult Function(String pinCode)? setAppPinCode,
    TResult Function()? onTwillioSendSms,
    required TResult orElse(),
  }) {
    if (onPhoneAuthError != null) {
      return onPhoneAuthError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOtpToPhone value) sendOtpToPhone,
    required TResult Function(_VerifySentOtp value) verifySentOtp,
    required TResult Function(_OnPhoneOtpSent value) onPhoneOtpSent,
    required TResult Function(_OnPhoneAuthVerificationComplete value)
        onPhoneAuthVerificationComplete,
    required TResult Function(_OnPhoneAuthError value) onPhoneAuthError,
    required TResult Function(_SetAppPinCode value) setAppPinCode,
    required TResult Function(_OnTwillioSendSms value) onTwillioSendSms,
  }) {
    return onPhoneAuthError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOtpToPhone value)? sendOtpToPhone,
    TResult? Function(_VerifySentOtp value)? verifySentOtp,
    TResult? Function(_OnPhoneOtpSent value)? onPhoneOtpSent,
    TResult? Function(_OnPhoneAuthVerificationComplete value)?
        onPhoneAuthVerificationComplete,
    TResult? Function(_OnPhoneAuthError value)? onPhoneAuthError,
    TResult? Function(_SetAppPinCode value)? setAppPinCode,
    TResult? Function(_OnTwillioSendSms value)? onTwillioSendSms,
  }) {
    return onPhoneAuthError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtpToPhone value)? sendOtpToPhone,
    TResult Function(_VerifySentOtp value)? verifySentOtp,
    TResult Function(_OnPhoneOtpSent value)? onPhoneOtpSent,
    TResult Function(_OnPhoneAuthVerificationComplete value)?
        onPhoneAuthVerificationComplete,
    TResult Function(_OnPhoneAuthError value)? onPhoneAuthError,
    TResult Function(_SetAppPinCode value)? setAppPinCode,
    TResult Function(_OnTwillioSendSms value)? onTwillioSendSms,
    required TResult orElse(),
  }) {
    if (onPhoneAuthError != null) {
      return onPhoneAuthError(this);
    }
    return orElse();
  }
}

abstract class _OnPhoneAuthError implements PhoneAuthEvent {
  const factory _OnPhoneAuthError({required final String error}) =
      _$_OnPhoneAuthError;

  String get error;
  @JsonKey(ignore: true)
  _$$_OnPhoneAuthErrorCopyWith<_$_OnPhoneAuthError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetAppPinCodeCopyWith<$Res> {
  factory _$$_SetAppPinCodeCopyWith(
          _$_SetAppPinCode value, $Res Function(_$_SetAppPinCode) then) =
      __$$_SetAppPinCodeCopyWithImpl<$Res>;
  @useResult
  $Res call({String pinCode});
}

/// @nodoc
class __$$_SetAppPinCodeCopyWithImpl<$Res>
    extends _$PhoneAuthEventCopyWithImpl<$Res, _$_SetAppPinCode>
    implements _$$_SetAppPinCodeCopyWith<$Res> {
  __$$_SetAppPinCodeCopyWithImpl(
      _$_SetAppPinCode _value, $Res Function(_$_SetAppPinCode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pinCode = null,
  }) {
    return _then(_$_SetAppPinCode(
      pinCode: null == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetAppPinCode with DiagnosticableTreeMixin implements _SetAppPinCode {
  const _$_SetAppPinCode({required this.pinCode});

  @override
  final String pinCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PhoneAuthEvent.setAppPinCode(pinCode: $pinCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PhoneAuthEvent.setAppPinCode'))
      ..add(DiagnosticsProperty('pinCode', pinCode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetAppPinCode &&
            (identical(other.pinCode, pinCode) || other.pinCode == pinCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pinCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetAppPinCodeCopyWith<_$_SetAppPinCode> get copyWith =>
      __$$_SetAppPinCodeCopyWithImpl<_$_SetAppPinCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber, bool isRegistration)
        sendOtpToPhone,
    required TResult Function(String otpCode, String verificationId)
        verifySentOtp,
    required TResult Function(int? token, String verificationId) onPhoneOtpSent,
    required TResult Function(AuthCredential credential)
        onPhoneAuthVerificationComplete,
    required TResult Function(String error) onPhoneAuthError,
    required TResult Function(String pinCode) setAppPinCode,
    required TResult Function() onTwillioSendSms,
  }) {
    return setAppPinCode(pinCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber, bool isRegistration)? sendOtpToPhone,
    TResult? Function(String otpCode, String verificationId)? verifySentOtp,
    TResult? Function(int? token, String verificationId)? onPhoneOtpSent,
    TResult? Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    TResult? Function(String error)? onPhoneAuthError,
    TResult? Function(String pinCode)? setAppPinCode,
    TResult? Function()? onTwillioSendSms,
  }) {
    return setAppPinCode?.call(pinCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, bool isRegistration)? sendOtpToPhone,
    TResult Function(String otpCode, String verificationId)? verifySentOtp,
    TResult Function(int? token, String verificationId)? onPhoneOtpSent,
    TResult Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    TResult Function(String error)? onPhoneAuthError,
    TResult Function(String pinCode)? setAppPinCode,
    TResult Function()? onTwillioSendSms,
    required TResult orElse(),
  }) {
    if (setAppPinCode != null) {
      return setAppPinCode(pinCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOtpToPhone value) sendOtpToPhone,
    required TResult Function(_VerifySentOtp value) verifySentOtp,
    required TResult Function(_OnPhoneOtpSent value) onPhoneOtpSent,
    required TResult Function(_OnPhoneAuthVerificationComplete value)
        onPhoneAuthVerificationComplete,
    required TResult Function(_OnPhoneAuthError value) onPhoneAuthError,
    required TResult Function(_SetAppPinCode value) setAppPinCode,
    required TResult Function(_OnTwillioSendSms value) onTwillioSendSms,
  }) {
    return setAppPinCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOtpToPhone value)? sendOtpToPhone,
    TResult? Function(_VerifySentOtp value)? verifySentOtp,
    TResult? Function(_OnPhoneOtpSent value)? onPhoneOtpSent,
    TResult? Function(_OnPhoneAuthVerificationComplete value)?
        onPhoneAuthVerificationComplete,
    TResult? Function(_OnPhoneAuthError value)? onPhoneAuthError,
    TResult? Function(_SetAppPinCode value)? setAppPinCode,
    TResult? Function(_OnTwillioSendSms value)? onTwillioSendSms,
  }) {
    return setAppPinCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtpToPhone value)? sendOtpToPhone,
    TResult Function(_VerifySentOtp value)? verifySentOtp,
    TResult Function(_OnPhoneOtpSent value)? onPhoneOtpSent,
    TResult Function(_OnPhoneAuthVerificationComplete value)?
        onPhoneAuthVerificationComplete,
    TResult Function(_OnPhoneAuthError value)? onPhoneAuthError,
    TResult Function(_SetAppPinCode value)? setAppPinCode,
    TResult Function(_OnTwillioSendSms value)? onTwillioSendSms,
    required TResult orElse(),
  }) {
    if (setAppPinCode != null) {
      return setAppPinCode(this);
    }
    return orElse();
  }
}

abstract class _SetAppPinCode implements PhoneAuthEvent {
  const factory _SetAppPinCode({required final String pinCode}) =
      _$_SetAppPinCode;

  String get pinCode;
  @JsonKey(ignore: true)
  _$$_SetAppPinCodeCopyWith<_$_SetAppPinCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnTwillioSendSmsCopyWith<$Res> {
  factory _$$_OnTwillioSendSmsCopyWith(
          _$_OnTwillioSendSms value, $Res Function(_$_OnTwillioSendSms) then) =
      __$$_OnTwillioSendSmsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnTwillioSendSmsCopyWithImpl<$Res>
    extends _$PhoneAuthEventCopyWithImpl<$Res, _$_OnTwillioSendSms>
    implements _$$_OnTwillioSendSmsCopyWith<$Res> {
  __$$_OnTwillioSendSmsCopyWithImpl(
      _$_OnTwillioSendSms _value, $Res Function(_$_OnTwillioSendSms) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnTwillioSendSms
    with DiagnosticableTreeMixin
    implements _OnTwillioSendSms {
  const _$_OnTwillioSendSms();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PhoneAuthEvent.onTwillioSendSms()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'PhoneAuthEvent.onTwillioSendSms'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnTwillioSendSms);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber, bool isRegistration)
        sendOtpToPhone,
    required TResult Function(String otpCode, String verificationId)
        verifySentOtp,
    required TResult Function(int? token, String verificationId) onPhoneOtpSent,
    required TResult Function(AuthCredential credential)
        onPhoneAuthVerificationComplete,
    required TResult Function(String error) onPhoneAuthError,
    required TResult Function(String pinCode) setAppPinCode,
    required TResult Function() onTwillioSendSms,
  }) {
    return onTwillioSendSms();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber, bool isRegistration)? sendOtpToPhone,
    TResult? Function(String otpCode, String verificationId)? verifySentOtp,
    TResult? Function(int? token, String verificationId)? onPhoneOtpSent,
    TResult? Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    TResult? Function(String error)? onPhoneAuthError,
    TResult? Function(String pinCode)? setAppPinCode,
    TResult? Function()? onTwillioSendSms,
  }) {
    return onTwillioSendSms?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, bool isRegistration)? sendOtpToPhone,
    TResult Function(String otpCode, String verificationId)? verifySentOtp,
    TResult Function(int? token, String verificationId)? onPhoneOtpSent,
    TResult Function(AuthCredential credential)?
        onPhoneAuthVerificationComplete,
    TResult Function(String error)? onPhoneAuthError,
    TResult Function(String pinCode)? setAppPinCode,
    TResult Function()? onTwillioSendSms,
    required TResult orElse(),
  }) {
    if (onTwillioSendSms != null) {
      return onTwillioSendSms();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOtpToPhone value) sendOtpToPhone,
    required TResult Function(_VerifySentOtp value) verifySentOtp,
    required TResult Function(_OnPhoneOtpSent value) onPhoneOtpSent,
    required TResult Function(_OnPhoneAuthVerificationComplete value)
        onPhoneAuthVerificationComplete,
    required TResult Function(_OnPhoneAuthError value) onPhoneAuthError,
    required TResult Function(_SetAppPinCode value) setAppPinCode,
    required TResult Function(_OnTwillioSendSms value) onTwillioSendSms,
  }) {
    return onTwillioSendSms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOtpToPhone value)? sendOtpToPhone,
    TResult? Function(_VerifySentOtp value)? verifySentOtp,
    TResult? Function(_OnPhoneOtpSent value)? onPhoneOtpSent,
    TResult? Function(_OnPhoneAuthVerificationComplete value)?
        onPhoneAuthVerificationComplete,
    TResult? Function(_OnPhoneAuthError value)? onPhoneAuthError,
    TResult? Function(_SetAppPinCode value)? setAppPinCode,
    TResult? Function(_OnTwillioSendSms value)? onTwillioSendSms,
  }) {
    return onTwillioSendSms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtpToPhone value)? sendOtpToPhone,
    TResult Function(_VerifySentOtp value)? verifySentOtp,
    TResult Function(_OnPhoneOtpSent value)? onPhoneOtpSent,
    TResult Function(_OnPhoneAuthVerificationComplete value)?
        onPhoneAuthVerificationComplete,
    TResult Function(_OnPhoneAuthError value)? onPhoneAuthError,
    TResult Function(_SetAppPinCode value)? setAppPinCode,
    TResult Function(_OnTwillioSendSms value)? onTwillioSendSms,
    required TResult orElse(),
  }) {
    if (onTwillioSendSms != null) {
      return onTwillioSendSms(this);
    }
    return orElse();
  }
}

abstract class _OnTwillioSendSms implements PhoneAuthEvent {
  const factory _OnTwillioSendSms() = _$_OnTwillioSendSms;
}

/// @nodoc
mixin _$PhoneAuthState {
  BlocStatus get status => throw _privateConstructorUsedError;
  String? get uid => throw _privateConstructorUsedError;
  bool? get isPhoneAuthVerified => throw _privateConstructorUsedError;
  bool? get isPhoneAuthCodeSentSuccess => throw _privateConstructorUsedError;
  String? get verificationId => throw _privateConstructorUsedError;
  String? get recoveryCode => throw _privateConstructorUsedError;
  bool? get isRegistration => throw _privateConstructorUsedError;
  bool? get isPhoneNumberExist => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhoneAuthStateCopyWith<PhoneAuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneAuthStateCopyWith<$Res> {
  factory $PhoneAuthStateCopyWith(
          PhoneAuthState value, $Res Function(PhoneAuthState) then) =
      _$PhoneAuthStateCopyWithImpl<$Res, PhoneAuthState>;
  @useResult
  $Res call(
      {BlocStatus status,
      String? uid,
      bool? isPhoneAuthVerified,
      bool? isPhoneAuthCodeSentSuccess,
      String? verificationId,
      String? recoveryCode,
      bool? isRegistration,
      bool? isPhoneNumberExist,
      Object? error});
}

/// @nodoc
class _$PhoneAuthStateCopyWithImpl<$Res, $Val extends PhoneAuthState>
    implements $PhoneAuthStateCopyWith<$Res> {
  _$PhoneAuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? uid = freezed,
    Object? isPhoneAuthVerified = freezed,
    Object? isPhoneAuthCodeSentSuccess = freezed,
    Object? verificationId = freezed,
    Object? recoveryCode = freezed,
    Object? isRegistration = freezed,
    Object? isPhoneNumberExist = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      isPhoneAuthVerified: freezed == isPhoneAuthVerified
          ? _value.isPhoneAuthVerified
          : isPhoneAuthVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPhoneAuthCodeSentSuccess: freezed == isPhoneAuthCodeSentSuccess
          ? _value.isPhoneAuthCodeSentSuccess
          : isPhoneAuthCodeSentSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      verificationId: freezed == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String?,
      recoveryCode: freezed == recoveryCode
          ? _value.recoveryCode
          : recoveryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isRegistration: freezed == isRegistration
          ? _value.isRegistration
          : isRegistration // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPhoneNumberExist: freezed == isPhoneNumberExist
          ? _value.isPhoneNumberExist
          : isPhoneNumberExist // ignore: cast_nullable_to_non_nullable
              as bool?,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PhoneAuthStateCopyWith<$Res>
    implements $PhoneAuthStateCopyWith<$Res> {
  factory _$$_PhoneAuthStateCopyWith(
          _$_PhoneAuthState value, $Res Function(_$_PhoneAuthState) then) =
      __$$_PhoneAuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status,
      String? uid,
      bool? isPhoneAuthVerified,
      bool? isPhoneAuthCodeSentSuccess,
      String? verificationId,
      String? recoveryCode,
      bool? isRegistration,
      bool? isPhoneNumberExist,
      Object? error});
}

/// @nodoc
class __$$_PhoneAuthStateCopyWithImpl<$Res>
    extends _$PhoneAuthStateCopyWithImpl<$Res, _$_PhoneAuthState>
    implements _$$_PhoneAuthStateCopyWith<$Res> {
  __$$_PhoneAuthStateCopyWithImpl(
      _$_PhoneAuthState _value, $Res Function(_$_PhoneAuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? uid = freezed,
    Object? isPhoneAuthVerified = freezed,
    Object? isPhoneAuthCodeSentSuccess = freezed,
    Object? verificationId = freezed,
    Object? recoveryCode = freezed,
    Object? isRegistration = freezed,
    Object? isPhoneNumberExist = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_PhoneAuthState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      isPhoneAuthVerified: freezed == isPhoneAuthVerified
          ? _value.isPhoneAuthVerified
          : isPhoneAuthVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPhoneAuthCodeSentSuccess: freezed == isPhoneAuthCodeSentSuccess
          ? _value.isPhoneAuthCodeSentSuccess
          : isPhoneAuthCodeSentSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      verificationId: freezed == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String?,
      recoveryCode: freezed == recoveryCode
          ? _value.recoveryCode
          : recoveryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isRegistration: freezed == isRegistration
          ? _value.isRegistration
          : isRegistration // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPhoneNumberExist: freezed == isPhoneNumberExist
          ? _value.isPhoneNumberExist
          : isPhoneNumberExist // ignore: cast_nullable_to_non_nullable
              as bool?,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_PhoneAuthState
    with DiagnosticableTreeMixin
    implements _PhoneAuthState {
  const _$_PhoneAuthState(
      {required this.status,
      this.uid,
      this.isPhoneAuthVerified,
      this.isPhoneAuthCodeSentSuccess,
      this.verificationId,
      this.recoveryCode,
      this.isRegistration,
      this.isPhoneNumberExist,
      this.error});

  @override
  final BlocStatus status;
  @override
  final String? uid;
  @override
  final bool? isPhoneAuthVerified;
  @override
  final bool? isPhoneAuthCodeSentSuccess;
  @override
  final String? verificationId;
  @override
  final String? recoveryCode;
  @override
  final bool? isRegistration;
  @override
  final bool? isPhoneNumberExist;
  @override
  final Object? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PhoneAuthState(status: $status, uid: $uid, isPhoneAuthVerified: $isPhoneAuthVerified, isPhoneAuthCodeSentSuccess: $isPhoneAuthCodeSentSuccess, verificationId: $verificationId, recoveryCode: $recoveryCode, isRegistration: $isRegistration, isPhoneNumberExist: $isPhoneNumberExist, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PhoneAuthState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('uid', uid))
      ..add(DiagnosticsProperty('isPhoneAuthVerified', isPhoneAuthVerified))
      ..add(DiagnosticsProperty(
          'isPhoneAuthCodeSentSuccess', isPhoneAuthCodeSentSuccess))
      ..add(DiagnosticsProperty('verificationId', verificationId))
      ..add(DiagnosticsProperty('recoveryCode', recoveryCode))
      ..add(DiagnosticsProperty('isRegistration', isRegistration))
      ..add(DiagnosticsProperty('isPhoneNumberExist', isPhoneNumberExist))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhoneAuthState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.isPhoneAuthVerified, isPhoneAuthVerified) ||
                other.isPhoneAuthVerified == isPhoneAuthVerified) &&
            (identical(other.isPhoneAuthCodeSentSuccess,
                    isPhoneAuthCodeSentSuccess) ||
                other.isPhoneAuthCodeSentSuccess ==
                    isPhoneAuthCodeSentSuccess) &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId) &&
            (identical(other.recoveryCode, recoveryCode) ||
                other.recoveryCode == recoveryCode) &&
            (identical(other.isRegistration, isRegistration) ||
                other.isRegistration == isRegistration) &&
            (identical(other.isPhoneNumberExist, isPhoneNumberExist) ||
                other.isPhoneNumberExist == isPhoneNumberExist) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      uid,
      isPhoneAuthVerified,
      isPhoneAuthCodeSentSuccess,
      verificationId,
      recoveryCode,
      isRegistration,
      isPhoneNumberExist,
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhoneAuthStateCopyWith<_$_PhoneAuthState> get copyWith =>
      __$$_PhoneAuthStateCopyWithImpl<_$_PhoneAuthState>(this, _$identity);
}

abstract class _PhoneAuthState implements PhoneAuthState {
  const factory _PhoneAuthState(
      {required final BlocStatus status,
      final String? uid,
      final bool? isPhoneAuthVerified,
      final bool? isPhoneAuthCodeSentSuccess,
      final String? verificationId,
      final String? recoveryCode,
      final bool? isRegistration,
      final bool? isPhoneNumberExist,
      final Object? error}) = _$_PhoneAuthState;

  @override
  BlocStatus get status;
  @override
  String? get uid;
  @override
  bool? get isPhoneAuthVerified;
  @override
  bool? get isPhoneAuthCodeSentSuccess;
  @override
  String? get verificationId;
  @override
  String? get recoveryCode;
  @override
  bool? get isRegistration;
  @override
  bool? get isPhoneNumberExist;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$_PhoneAuthStateCopyWith<_$_PhoneAuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
