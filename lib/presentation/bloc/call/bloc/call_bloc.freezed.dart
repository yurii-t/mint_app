// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'call_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CallEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isCaller, bool isEndCall) startCall,
    required TResult Function() incomingCall,
    required TResult Function() endCall,
    required TResult Function() toggleAudio,
    required TResult Function() switchCamera,
    required TResult Function() toggleVideo,
    required TResult Function() toggleSpeaker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isCaller, bool isEndCall)? startCall,
    TResult? Function()? incomingCall,
    TResult? Function()? endCall,
    TResult? Function()? toggleAudio,
    TResult? Function()? switchCamera,
    TResult? Function()? toggleVideo,
    TResult? Function()? toggleSpeaker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isCaller, bool isEndCall)? startCall,
    TResult Function()? incomingCall,
    TResult Function()? endCall,
    TResult Function()? toggleAudio,
    TResult Function()? switchCamera,
    TResult Function()? toggleVideo,
    TResult Function()? toggleSpeaker,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartCall value) startCall,
    required TResult Function(_IncomingCall value) incomingCall,
    required TResult Function(_EndCall value) endCall,
    required TResult Function(_ToggleAudio value) toggleAudio,
    required TResult Function(_SwitchCamera value) switchCamera,
    required TResult Function(_ToggleVideo value) toggleVideo,
    required TResult Function(_ToggleSpeaker value) toggleSpeaker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartCall value)? startCall,
    TResult? Function(_IncomingCall value)? incomingCall,
    TResult? Function(_EndCall value)? endCall,
    TResult? Function(_ToggleAudio value)? toggleAudio,
    TResult? Function(_SwitchCamera value)? switchCamera,
    TResult? Function(_ToggleVideo value)? toggleVideo,
    TResult? Function(_ToggleSpeaker value)? toggleSpeaker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartCall value)? startCall,
    TResult Function(_IncomingCall value)? incomingCall,
    TResult Function(_EndCall value)? endCall,
    TResult Function(_ToggleAudio value)? toggleAudio,
    TResult Function(_SwitchCamera value)? switchCamera,
    TResult Function(_ToggleVideo value)? toggleVideo,
    TResult Function(_ToggleSpeaker value)? toggleSpeaker,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallEventCopyWith<$Res> {
  factory $CallEventCopyWith(CallEvent value, $Res Function(CallEvent) then) =
      _$CallEventCopyWithImpl<$Res, CallEvent>;
}

/// @nodoc
class _$CallEventCopyWithImpl<$Res, $Val extends CallEvent>
    implements $CallEventCopyWith<$Res> {
  _$CallEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartCallCopyWith<$Res> {
  factory _$$_StartCallCopyWith(
          _$_StartCall value, $Res Function(_$_StartCall) then) =
      __$$_StartCallCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isCaller, bool isEndCall});
}

/// @nodoc
class __$$_StartCallCopyWithImpl<$Res>
    extends _$CallEventCopyWithImpl<$Res, _$_StartCall>
    implements _$$_StartCallCopyWith<$Res> {
  __$$_StartCallCopyWithImpl(
      _$_StartCall _value, $Res Function(_$_StartCall) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCaller = null,
    Object? isEndCall = null,
  }) {
    return _then(_$_StartCall(
      isCaller: null == isCaller
          ? _value.isCaller
          : isCaller // ignore: cast_nullable_to_non_nullable
              as bool,
      isEndCall: null == isEndCall
          ? _value.isEndCall
          : isEndCall // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_StartCall with DiagnosticableTreeMixin implements _StartCall {
  const _$_StartCall({required this.isCaller, this.isEndCall = false});

  @override
  final bool isCaller;
  @override
  @JsonKey()
  final bool isEndCall;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CallEvent.startCall(isCaller: $isCaller, isEndCall: $isEndCall)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CallEvent.startCall'))
      ..add(DiagnosticsProperty('isCaller', isCaller))
      ..add(DiagnosticsProperty('isEndCall', isEndCall));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartCall &&
            (identical(other.isCaller, isCaller) ||
                other.isCaller == isCaller) &&
            (identical(other.isEndCall, isEndCall) ||
                other.isEndCall == isEndCall));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isCaller, isEndCall);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartCallCopyWith<_$_StartCall> get copyWith =>
      __$$_StartCallCopyWithImpl<_$_StartCall>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isCaller, bool isEndCall) startCall,
    required TResult Function() incomingCall,
    required TResult Function() endCall,
    required TResult Function() toggleAudio,
    required TResult Function() switchCamera,
    required TResult Function() toggleVideo,
    required TResult Function() toggleSpeaker,
  }) {
    return startCall(isCaller, isEndCall);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isCaller, bool isEndCall)? startCall,
    TResult? Function()? incomingCall,
    TResult? Function()? endCall,
    TResult? Function()? toggleAudio,
    TResult? Function()? switchCamera,
    TResult? Function()? toggleVideo,
    TResult? Function()? toggleSpeaker,
  }) {
    return startCall?.call(isCaller, isEndCall);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isCaller, bool isEndCall)? startCall,
    TResult Function()? incomingCall,
    TResult Function()? endCall,
    TResult Function()? toggleAudio,
    TResult Function()? switchCamera,
    TResult Function()? toggleVideo,
    TResult Function()? toggleSpeaker,
    required TResult orElse(),
  }) {
    if (startCall != null) {
      return startCall(isCaller, isEndCall);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartCall value) startCall,
    required TResult Function(_IncomingCall value) incomingCall,
    required TResult Function(_EndCall value) endCall,
    required TResult Function(_ToggleAudio value) toggleAudio,
    required TResult Function(_SwitchCamera value) switchCamera,
    required TResult Function(_ToggleVideo value) toggleVideo,
    required TResult Function(_ToggleSpeaker value) toggleSpeaker,
  }) {
    return startCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartCall value)? startCall,
    TResult? Function(_IncomingCall value)? incomingCall,
    TResult? Function(_EndCall value)? endCall,
    TResult? Function(_ToggleAudio value)? toggleAudio,
    TResult? Function(_SwitchCamera value)? switchCamera,
    TResult? Function(_ToggleVideo value)? toggleVideo,
    TResult? Function(_ToggleSpeaker value)? toggleSpeaker,
  }) {
    return startCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartCall value)? startCall,
    TResult Function(_IncomingCall value)? incomingCall,
    TResult Function(_EndCall value)? endCall,
    TResult Function(_ToggleAudio value)? toggleAudio,
    TResult Function(_SwitchCamera value)? switchCamera,
    TResult Function(_ToggleVideo value)? toggleVideo,
    TResult Function(_ToggleSpeaker value)? toggleSpeaker,
    required TResult orElse(),
  }) {
    if (startCall != null) {
      return startCall(this);
    }
    return orElse();
  }
}

abstract class _StartCall implements CallEvent {
  const factory _StartCall(
      {required final bool isCaller, final bool isEndCall}) = _$_StartCall;

  bool get isCaller;
  bool get isEndCall;
  @JsonKey(ignore: true)
  _$$_StartCallCopyWith<_$_StartCall> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IncomingCallCopyWith<$Res> {
  factory _$$_IncomingCallCopyWith(
          _$_IncomingCall value, $Res Function(_$_IncomingCall) then) =
      __$$_IncomingCallCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IncomingCallCopyWithImpl<$Res>
    extends _$CallEventCopyWithImpl<$Res, _$_IncomingCall>
    implements _$$_IncomingCallCopyWith<$Res> {
  __$$_IncomingCallCopyWithImpl(
      _$_IncomingCall _value, $Res Function(_$_IncomingCall) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_IncomingCall with DiagnosticableTreeMixin implements _IncomingCall {
  const _$_IncomingCall();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CallEvent.incomingCall()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CallEvent.incomingCall'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_IncomingCall);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isCaller, bool isEndCall) startCall,
    required TResult Function() incomingCall,
    required TResult Function() endCall,
    required TResult Function() toggleAudio,
    required TResult Function() switchCamera,
    required TResult Function() toggleVideo,
    required TResult Function() toggleSpeaker,
  }) {
    return incomingCall();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isCaller, bool isEndCall)? startCall,
    TResult? Function()? incomingCall,
    TResult? Function()? endCall,
    TResult? Function()? toggleAudio,
    TResult? Function()? switchCamera,
    TResult? Function()? toggleVideo,
    TResult? Function()? toggleSpeaker,
  }) {
    return incomingCall?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isCaller, bool isEndCall)? startCall,
    TResult Function()? incomingCall,
    TResult Function()? endCall,
    TResult Function()? toggleAudio,
    TResult Function()? switchCamera,
    TResult Function()? toggleVideo,
    TResult Function()? toggleSpeaker,
    required TResult orElse(),
  }) {
    if (incomingCall != null) {
      return incomingCall();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartCall value) startCall,
    required TResult Function(_IncomingCall value) incomingCall,
    required TResult Function(_EndCall value) endCall,
    required TResult Function(_ToggleAudio value) toggleAudio,
    required TResult Function(_SwitchCamera value) switchCamera,
    required TResult Function(_ToggleVideo value) toggleVideo,
    required TResult Function(_ToggleSpeaker value) toggleSpeaker,
  }) {
    return incomingCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartCall value)? startCall,
    TResult? Function(_IncomingCall value)? incomingCall,
    TResult? Function(_EndCall value)? endCall,
    TResult? Function(_ToggleAudio value)? toggleAudio,
    TResult? Function(_SwitchCamera value)? switchCamera,
    TResult? Function(_ToggleVideo value)? toggleVideo,
    TResult? Function(_ToggleSpeaker value)? toggleSpeaker,
  }) {
    return incomingCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartCall value)? startCall,
    TResult Function(_IncomingCall value)? incomingCall,
    TResult Function(_EndCall value)? endCall,
    TResult Function(_ToggleAudio value)? toggleAudio,
    TResult Function(_SwitchCamera value)? switchCamera,
    TResult Function(_ToggleVideo value)? toggleVideo,
    TResult Function(_ToggleSpeaker value)? toggleSpeaker,
    required TResult orElse(),
  }) {
    if (incomingCall != null) {
      return incomingCall(this);
    }
    return orElse();
  }
}

abstract class _IncomingCall implements CallEvent {
  const factory _IncomingCall() = _$_IncomingCall;
}

/// @nodoc
abstract class _$$_EndCallCopyWith<$Res> {
  factory _$$_EndCallCopyWith(
          _$_EndCall value, $Res Function(_$_EndCall) then) =
      __$$_EndCallCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EndCallCopyWithImpl<$Res>
    extends _$CallEventCopyWithImpl<$Res, _$_EndCall>
    implements _$$_EndCallCopyWith<$Res> {
  __$$_EndCallCopyWithImpl(_$_EndCall _value, $Res Function(_$_EndCall) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EndCall with DiagnosticableTreeMixin implements _EndCall {
  const _$_EndCall();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CallEvent.endCall()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CallEvent.endCall'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EndCall);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isCaller, bool isEndCall) startCall,
    required TResult Function() incomingCall,
    required TResult Function() endCall,
    required TResult Function() toggleAudio,
    required TResult Function() switchCamera,
    required TResult Function() toggleVideo,
    required TResult Function() toggleSpeaker,
  }) {
    return endCall();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isCaller, bool isEndCall)? startCall,
    TResult? Function()? incomingCall,
    TResult? Function()? endCall,
    TResult? Function()? toggleAudio,
    TResult? Function()? switchCamera,
    TResult? Function()? toggleVideo,
    TResult? Function()? toggleSpeaker,
  }) {
    return endCall?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isCaller, bool isEndCall)? startCall,
    TResult Function()? incomingCall,
    TResult Function()? endCall,
    TResult Function()? toggleAudio,
    TResult Function()? switchCamera,
    TResult Function()? toggleVideo,
    TResult Function()? toggleSpeaker,
    required TResult orElse(),
  }) {
    if (endCall != null) {
      return endCall();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartCall value) startCall,
    required TResult Function(_IncomingCall value) incomingCall,
    required TResult Function(_EndCall value) endCall,
    required TResult Function(_ToggleAudio value) toggleAudio,
    required TResult Function(_SwitchCamera value) switchCamera,
    required TResult Function(_ToggleVideo value) toggleVideo,
    required TResult Function(_ToggleSpeaker value) toggleSpeaker,
  }) {
    return endCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartCall value)? startCall,
    TResult? Function(_IncomingCall value)? incomingCall,
    TResult? Function(_EndCall value)? endCall,
    TResult? Function(_ToggleAudio value)? toggleAudio,
    TResult? Function(_SwitchCamera value)? switchCamera,
    TResult? Function(_ToggleVideo value)? toggleVideo,
    TResult? Function(_ToggleSpeaker value)? toggleSpeaker,
  }) {
    return endCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartCall value)? startCall,
    TResult Function(_IncomingCall value)? incomingCall,
    TResult Function(_EndCall value)? endCall,
    TResult Function(_ToggleAudio value)? toggleAudio,
    TResult Function(_SwitchCamera value)? switchCamera,
    TResult Function(_ToggleVideo value)? toggleVideo,
    TResult Function(_ToggleSpeaker value)? toggleSpeaker,
    required TResult orElse(),
  }) {
    if (endCall != null) {
      return endCall(this);
    }
    return orElse();
  }
}

abstract class _EndCall implements CallEvent {
  const factory _EndCall() = _$_EndCall;
}

/// @nodoc
abstract class _$$_ToggleAudioCopyWith<$Res> {
  factory _$$_ToggleAudioCopyWith(
          _$_ToggleAudio value, $Res Function(_$_ToggleAudio) then) =
      __$$_ToggleAudioCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ToggleAudioCopyWithImpl<$Res>
    extends _$CallEventCopyWithImpl<$Res, _$_ToggleAudio>
    implements _$$_ToggleAudioCopyWith<$Res> {
  __$$_ToggleAudioCopyWithImpl(
      _$_ToggleAudio _value, $Res Function(_$_ToggleAudio) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ToggleAudio with DiagnosticableTreeMixin implements _ToggleAudio {
  const _$_ToggleAudio();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CallEvent.toggleAudio()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CallEvent.toggleAudio'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ToggleAudio);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isCaller, bool isEndCall) startCall,
    required TResult Function() incomingCall,
    required TResult Function() endCall,
    required TResult Function() toggleAudio,
    required TResult Function() switchCamera,
    required TResult Function() toggleVideo,
    required TResult Function() toggleSpeaker,
  }) {
    return toggleAudio();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isCaller, bool isEndCall)? startCall,
    TResult? Function()? incomingCall,
    TResult? Function()? endCall,
    TResult? Function()? toggleAudio,
    TResult? Function()? switchCamera,
    TResult? Function()? toggleVideo,
    TResult? Function()? toggleSpeaker,
  }) {
    return toggleAudio?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isCaller, bool isEndCall)? startCall,
    TResult Function()? incomingCall,
    TResult Function()? endCall,
    TResult Function()? toggleAudio,
    TResult Function()? switchCamera,
    TResult Function()? toggleVideo,
    TResult Function()? toggleSpeaker,
    required TResult orElse(),
  }) {
    if (toggleAudio != null) {
      return toggleAudio();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartCall value) startCall,
    required TResult Function(_IncomingCall value) incomingCall,
    required TResult Function(_EndCall value) endCall,
    required TResult Function(_ToggleAudio value) toggleAudio,
    required TResult Function(_SwitchCamera value) switchCamera,
    required TResult Function(_ToggleVideo value) toggleVideo,
    required TResult Function(_ToggleSpeaker value) toggleSpeaker,
  }) {
    return toggleAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartCall value)? startCall,
    TResult? Function(_IncomingCall value)? incomingCall,
    TResult? Function(_EndCall value)? endCall,
    TResult? Function(_ToggleAudio value)? toggleAudio,
    TResult? Function(_SwitchCamera value)? switchCamera,
    TResult? Function(_ToggleVideo value)? toggleVideo,
    TResult? Function(_ToggleSpeaker value)? toggleSpeaker,
  }) {
    return toggleAudio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartCall value)? startCall,
    TResult Function(_IncomingCall value)? incomingCall,
    TResult Function(_EndCall value)? endCall,
    TResult Function(_ToggleAudio value)? toggleAudio,
    TResult Function(_SwitchCamera value)? switchCamera,
    TResult Function(_ToggleVideo value)? toggleVideo,
    TResult Function(_ToggleSpeaker value)? toggleSpeaker,
    required TResult orElse(),
  }) {
    if (toggleAudio != null) {
      return toggleAudio(this);
    }
    return orElse();
  }
}

abstract class _ToggleAudio implements CallEvent {
  const factory _ToggleAudio() = _$_ToggleAudio;
}

/// @nodoc
abstract class _$$_SwitchCameraCopyWith<$Res> {
  factory _$$_SwitchCameraCopyWith(
          _$_SwitchCamera value, $Res Function(_$_SwitchCamera) then) =
      __$$_SwitchCameraCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SwitchCameraCopyWithImpl<$Res>
    extends _$CallEventCopyWithImpl<$Res, _$_SwitchCamera>
    implements _$$_SwitchCameraCopyWith<$Res> {
  __$$_SwitchCameraCopyWithImpl(
      _$_SwitchCamera _value, $Res Function(_$_SwitchCamera) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SwitchCamera with DiagnosticableTreeMixin implements _SwitchCamera {
  const _$_SwitchCamera();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CallEvent.switchCamera()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CallEvent.switchCamera'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SwitchCamera);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isCaller, bool isEndCall) startCall,
    required TResult Function() incomingCall,
    required TResult Function() endCall,
    required TResult Function() toggleAudio,
    required TResult Function() switchCamera,
    required TResult Function() toggleVideo,
    required TResult Function() toggleSpeaker,
  }) {
    return switchCamera();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isCaller, bool isEndCall)? startCall,
    TResult? Function()? incomingCall,
    TResult? Function()? endCall,
    TResult? Function()? toggleAudio,
    TResult? Function()? switchCamera,
    TResult? Function()? toggleVideo,
    TResult? Function()? toggleSpeaker,
  }) {
    return switchCamera?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isCaller, bool isEndCall)? startCall,
    TResult Function()? incomingCall,
    TResult Function()? endCall,
    TResult Function()? toggleAudio,
    TResult Function()? switchCamera,
    TResult Function()? toggleVideo,
    TResult Function()? toggleSpeaker,
    required TResult orElse(),
  }) {
    if (switchCamera != null) {
      return switchCamera();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartCall value) startCall,
    required TResult Function(_IncomingCall value) incomingCall,
    required TResult Function(_EndCall value) endCall,
    required TResult Function(_ToggleAudio value) toggleAudio,
    required TResult Function(_SwitchCamera value) switchCamera,
    required TResult Function(_ToggleVideo value) toggleVideo,
    required TResult Function(_ToggleSpeaker value) toggleSpeaker,
  }) {
    return switchCamera(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartCall value)? startCall,
    TResult? Function(_IncomingCall value)? incomingCall,
    TResult? Function(_EndCall value)? endCall,
    TResult? Function(_ToggleAudio value)? toggleAudio,
    TResult? Function(_SwitchCamera value)? switchCamera,
    TResult? Function(_ToggleVideo value)? toggleVideo,
    TResult? Function(_ToggleSpeaker value)? toggleSpeaker,
  }) {
    return switchCamera?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartCall value)? startCall,
    TResult Function(_IncomingCall value)? incomingCall,
    TResult Function(_EndCall value)? endCall,
    TResult Function(_ToggleAudio value)? toggleAudio,
    TResult Function(_SwitchCamera value)? switchCamera,
    TResult Function(_ToggleVideo value)? toggleVideo,
    TResult Function(_ToggleSpeaker value)? toggleSpeaker,
    required TResult orElse(),
  }) {
    if (switchCamera != null) {
      return switchCamera(this);
    }
    return orElse();
  }
}

abstract class _SwitchCamera implements CallEvent {
  const factory _SwitchCamera() = _$_SwitchCamera;
}

/// @nodoc
abstract class _$$_ToggleVideoCopyWith<$Res> {
  factory _$$_ToggleVideoCopyWith(
          _$_ToggleVideo value, $Res Function(_$_ToggleVideo) then) =
      __$$_ToggleVideoCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ToggleVideoCopyWithImpl<$Res>
    extends _$CallEventCopyWithImpl<$Res, _$_ToggleVideo>
    implements _$$_ToggleVideoCopyWith<$Res> {
  __$$_ToggleVideoCopyWithImpl(
      _$_ToggleVideo _value, $Res Function(_$_ToggleVideo) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ToggleVideo with DiagnosticableTreeMixin implements _ToggleVideo {
  const _$_ToggleVideo();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CallEvent.toggleVideo()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CallEvent.toggleVideo'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ToggleVideo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isCaller, bool isEndCall) startCall,
    required TResult Function() incomingCall,
    required TResult Function() endCall,
    required TResult Function() toggleAudio,
    required TResult Function() switchCamera,
    required TResult Function() toggleVideo,
    required TResult Function() toggleSpeaker,
  }) {
    return toggleVideo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isCaller, bool isEndCall)? startCall,
    TResult? Function()? incomingCall,
    TResult? Function()? endCall,
    TResult? Function()? toggleAudio,
    TResult? Function()? switchCamera,
    TResult? Function()? toggleVideo,
    TResult? Function()? toggleSpeaker,
  }) {
    return toggleVideo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isCaller, bool isEndCall)? startCall,
    TResult Function()? incomingCall,
    TResult Function()? endCall,
    TResult Function()? toggleAudio,
    TResult Function()? switchCamera,
    TResult Function()? toggleVideo,
    TResult Function()? toggleSpeaker,
    required TResult orElse(),
  }) {
    if (toggleVideo != null) {
      return toggleVideo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartCall value) startCall,
    required TResult Function(_IncomingCall value) incomingCall,
    required TResult Function(_EndCall value) endCall,
    required TResult Function(_ToggleAudio value) toggleAudio,
    required TResult Function(_SwitchCamera value) switchCamera,
    required TResult Function(_ToggleVideo value) toggleVideo,
    required TResult Function(_ToggleSpeaker value) toggleSpeaker,
  }) {
    return toggleVideo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartCall value)? startCall,
    TResult? Function(_IncomingCall value)? incomingCall,
    TResult? Function(_EndCall value)? endCall,
    TResult? Function(_ToggleAudio value)? toggleAudio,
    TResult? Function(_SwitchCamera value)? switchCamera,
    TResult? Function(_ToggleVideo value)? toggleVideo,
    TResult? Function(_ToggleSpeaker value)? toggleSpeaker,
  }) {
    return toggleVideo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartCall value)? startCall,
    TResult Function(_IncomingCall value)? incomingCall,
    TResult Function(_EndCall value)? endCall,
    TResult Function(_ToggleAudio value)? toggleAudio,
    TResult Function(_SwitchCamera value)? switchCamera,
    TResult Function(_ToggleVideo value)? toggleVideo,
    TResult Function(_ToggleSpeaker value)? toggleSpeaker,
    required TResult orElse(),
  }) {
    if (toggleVideo != null) {
      return toggleVideo(this);
    }
    return orElse();
  }
}

abstract class _ToggleVideo implements CallEvent {
  const factory _ToggleVideo() = _$_ToggleVideo;
}

/// @nodoc
abstract class _$$_ToggleSpeakerCopyWith<$Res> {
  factory _$$_ToggleSpeakerCopyWith(
          _$_ToggleSpeaker value, $Res Function(_$_ToggleSpeaker) then) =
      __$$_ToggleSpeakerCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ToggleSpeakerCopyWithImpl<$Res>
    extends _$CallEventCopyWithImpl<$Res, _$_ToggleSpeaker>
    implements _$$_ToggleSpeakerCopyWith<$Res> {
  __$$_ToggleSpeakerCopyWithImpl(
      _$_ToggleSpeaker _value, $Res Function(_$_ToggleSpeaker) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ToggleSpeaker with DiagnosticableTreeMixin implements _ToggleSpeaker {
  const _$_ToggleSpeaker();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CallEvent.toggleSpeaker()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CallEvent.toggleSpeaker'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ToggleSpeaker);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isCaller, bool isEndCall) startCall,
    required TResult Function() incomingCall,
    required TResult Function() endCall,
    required TResult Function() toggleAudio,
    required TResult Function() switchCamera,
    required TResult Function() toggleVideo,
    required TResult Function() toggleSpeaker,
  }) {
    return toggleSpeaker();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isCaller, bool isEndCall)? startCall,
    TResult? Function()? incomingCall,
    TResult? Function()? endCall,
    TResult? Function()? toggleAudio,
    TResult? Function()? switchCamera,
    TResult? Function()? toggleVideo,
    TResult? Function()? toggleSpeaker,
  }) {
    return toggleSpeaker?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isCaller, bool isEndCall)? startCall,
    TResult Function()? incomingCall,
    TResult Function()? endCall,
    TResult Function()? toggleAudio,
    TResult Function()? switchCamera,
    TResult Function()? toggleVideo,
    TResult Function()? toggleSpeaker,
    required TResult orElse(),
  }) {
    if (toggleSpeaker != null) {
      return toggleSpeaker();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartCall value) startCall,
    required TResult Function(_IncomingCall value) incomingCall,
    required TResult Function(_EndCall value) endCall,
    required TResult Function(_ToggleAudio value) toggleAudio,
    required TResult Function(_SwitchCamera value) switchCamera,
    required TResult Function(_ToggleVideo value) toggleVideo,
    required TResult Function(_ToggleSpeaker value) toggleSpeaker,
  }) {
    return toggleSpeaker(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartCall value)? startCall,
    TResult? Function(_IncomingCall value)? incomingCall,
    TResult? Function(_EndCall value)? endCall,
    TResult? Function(_ToggleAudio value)? toggleAudio,
    TResult? Function(_SwitchCamera value)? switchCamera,
    TResult? Function(_ToggleVideo value)? toggleVideo,
    TResult? Function(_ToggleSpeaker value)? toggleSpeaker,
  }) {
    return toggleSpeaker?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartCall value)? startCall,
    TResult Function(_IncomingCall value)? incomingCall,
    TResult Function(_EndCall value)? endCall,
    TResult Function(_ToggleAudio value)? toggleAudio,
    TResult Function(_SwitchCamera value)? switchCamera,
    TResult Function(_ToggleVideo value)? toggleVideo,
    TResult Function(_ToggleSpeaker value)? toggleSpeaker,
    required TResult orElse(),
  }) {
    if (toggleSpeaker != null) {
      return toggleSpeaker(this);
    }
    return orElse();
  }
}

abstract class _ToggleSpeaker implements CallEvent {
  const factory _ToggleSpeaker() = _$_ToggleSpeaker;
}

/// @nodoc
mixin _$CallState {
  BlocStatus get status => throw _privateConstructorUsedError;
  CallStatus get callStatus => throw _privateConstructorUsedError;
  bool get isMuted => throw _privateConstructorUsedError;
  bool get isVideoCall => throw _privateConstructorUsedError;
  bool get isVideoPage => throw _privateConstructorUsedError;
  bool get isSpeakerOn => throw _privateConstructorUsedError;
  int? get remoteUid => throw _privateConstructorUsedError;
  bool? get localUserJoined => throw _privateConstructorUsedError;
  RtcEngine? get engine => throw _privateConstructorUsedError;
  String? get channelName => throw _privateConstructorUsedError;
  UserCall? get userCallModel => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;
  Duration? get duration => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CallStateCopyWith<CallState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallStateCopyWith<$Res> {
  factory $CallStateCopyWith(CallState value, $Res Function(CallState) then) =
      _$CallStateCopyWithImpl<$Res, CallState>;
  @useResult
  $Res call(
      {BlocStatus status,
      CallStatus callStatus,
      bool isMuted,
      bool isVideoCall,
      bool isVideoPage,
      bool isSpeakerOn,
      int? remoteUid,
      bool? localUserJoined,
      RtcEngine? engine,
      String? channelName,
      UserCall? userCallModel,
      Object? error,
      Duration? duration});
}

/// @nodoc
class _$CallStateCopyWithImpl<$Res, $Val extends CallState>
    implements $CallStateCopyWith<$Res> {
  _$CallStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? callStatus = null,
    Object? isMuted = null,
    Object? isVideoCall = null,
    Object? isVideoPage = null,
    Object? isSpeakerOn = null,
    Object? remoteUid = freezed,
    Object? localUserJoined = freezed,
    Object? engine = freezed,
    Object? channelName = freezed,
    Object? userCallModel = freezed,
    Object? error = freezed,
    Object? duration = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      callStatus: null == callStatus
          ? _value.callStatus
          : callStatus // ignore: cast_nullable_to_non_nullable
              as CallStatus,
      isMuted: null == isMuted
          ? _value.isMuted
          : isMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      isVideoCall: null == isVideoCall
          ? _value.isVideoCall
          : isVideoCall // ignore: cast_nullable_to_non_nullable
              as bool,
      isVideoPage: null == isVideoPage
          ? _value.isVideoPage
          : isVideoPage // ignore: cast_nullable_to_non_nullable
              as bool,
      isSpeakerOn: null == isSpeakerOn
          ? _value.isSpeakerOn
          : isSpeakerOn // ignore: cast_nullable_to_non_nullable
              as bool,
      remoteUid: freezed == remoteUid
          ? _value.remoteUid
          : remoteUid // ignore: cast_nullable_to_non_nullable
              as int?,
      localUserJoined: freezed == localUserJoined
          ? _value.localUserJoined
          : localUserJoined // ignore: cast_nullable_to_non_nullable
              as bool?,
      engine: freezed == engine
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as RtcEngine?,
      channelName: freezed == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String?,
      userCallModel: freezed == userCallModel
          ? _value.userCallModel
          : userCallModel // ignore: cast_nullable_to_non_nullable
              as UserCall?,
      error: freezed == error ? _value.error : error,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CallStateCopyWith<$Res> implements $CallStateCopyWith<$Res> {
  factory _$$_CallStateCopyWith(
          _$_CallState value, $Res Function(_$_CallState) then) =
      __$$_CallStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status,
      CallStatus callStatus,
      bool isMuted,
      bool isVideoCall,
      bool isVideoPage,
      bool isSpeakerOn,
      int? remoteUid,
      bool? localUserJoined,
      RtcEngine? engine,
      String? channelName,
      UserCall? userCallModel,
      Object? error,
      Duration? duration});
}

/// @nodoc
class __$$_CallStateCopyWithImpl<$Res>
    extends _$CallStateCopyWithImpl<$Res, _$_CallState>
    implements _$$_CallStateCopyWith<$Res> {
  __$$_CallStateCopyWithImpl(
      _$_CallState _value, $Res Function(_$_CallState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? callStatus = null,
    Object? isMuted = null,
    Object? isVideoCall = null,
    Object? isVideoPage = null,
    Object? isSpeakerOn = null,
    Object? remoteUid = freezed,
    Object? localUserJoined = freezed,
    Object? engine = freezed,
    Object? channelName = freezed,
    Object? userCallModel = freezed,
    Object? error = freezed,
    Object? duration = freezed,
  }) {
    return _then(_$_CallState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      callStatus: null == callStatus
          ? _value.callStatus
          : callStatus // ignore: cast_nullable_to_non_nullable
              as CallStatus,
      isMuted: null == isMuted
          ? _value.isMuted
          : isMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      isVideoCall: null == isVideoCall
          ? _value.isVideoCall
          : isVideoCall // ignore: cast_nullable_to_non_nullable
              as bool,
      isVideoPage: null == isVideoPage
          ? _value.isVideoPage
          : isVideoPage // ignore: cast_nullable_to_non_nullable
              as bool,
      isSpeakerOn: null == isSpeakerOn
          ? _value.isSpeakerOn
          : isSpeakerOn // ignore: cast_nullable_to_non_nullable
              as bool,
      remoteUid: freezed == remoteUid
          ? _value.remoteUid
          : remoteUid // ignore: cast_nullable_to_non_nullable
              as int?,
      localUserJoined: freezed == localUserJoined
          ? _value.localUserJoined
          : localUserJoined // ignore: cast_nullable_to_non_nullable
              as bool?,
      engine: freezed == engine
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as RtcEngine?,
      channelName: freezed == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String?,
      userCallModel: freezed == userCallModel
          ? _value.userCallModel
          : userCallModel // ignore: cast_nullable_to_non_nullable
              as UserCall?,
      error: freezed == error ? _value.error : error,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
    ));
  }
}

/// @nodoc

class _$_CallState with DiagnosticableTreeMixin implements _CallState {
  const _$_CallState(
      {required this.status,
      required this.callStatus,
      required this.isMuted,
      required this.isVideoCall,
      required this.isVideoPage,
      required this.isSpeakerOn,
      this.remoteUid,
      this.localUserJoined,
      this.engine,
      this.channelName,
      this.userCallModel,
      this.error,
      this.duration});

  @override
  final BlocStatus status;
  @override
  final CallStatus callStatus;
  @override
  final bool isMuted;
  @override
  final bool isVideoCall;
  @override
  final bool isVideoPage;
  @override
  final bool isSpeakerOn;
  @override
  final int? remoteUid;
  @override
  final bool? localUserJoined;
  @override
  final RtcEngine? engine;
  @override
  final String? channelName;
  @override
  final UserCall? userCallModel;
  @override
  final Object? error;
  @override
  final Duration? duration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CallState(status: $status, callStatus: $callStatus, isMuted: $isMuted, isVideoCall: $isVideoCall, isVideoPage: $isVideoPage, isSpeakerOn: $isSpeakerOn, remoteUid: $remoteUid, localUserJoined: $localUserJoined, engine: $engine, channelName: $channelName, userCallModel: $userCallModel, error: $error, duration: $duration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CallState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('callStatus', callStatus))
      ..add(DiagnosticsProperty('isMuted', isMuted))
      ..add(DiagnosticsProperty('isVideoCall', isVideoCall))
      ..add(DiagnosticsProperty('isVideoPage', isVideoPage))
      ..add(DiagnosticsProperty('isSpeakerOn', isSpeakerOn))
      ..add(DiagnosticsProperty('remoteUid', remoteUid))
      ..add(DiagnosticsProperty('localUserJoined', localUserJoined))
      ..add(DiagnosticsProperty('engine', engine))
      ..add(DiagnosticsProperty('channelName', channelName))
      ..add(DiagnosticsProperty('userCallModel', userCallModel))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('duration', duration));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CallState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.callStatus, callStatus) ||
                other.callStatus == callStatus) &&
            (identical(other.isMuted, isMuted) || other.isMuted == isMuted) &&
            (identical(other.isVideoCall, isVideoCall) ||
                other.isVideoCall == isVideoCall) &&
            (identical(other.isVideoPage, isVideoPage) ||
                other.isVideoPage == isVideoPage) &&
            (identical(other.isSpeakerOn, isSpeakerOn) ||
                other.isSpeakerOn == isSpeakerOn) &&
            (identical(other.remoteUid, remoteUid) ||
                other.remoteUid == remoteUid) &&
            (identical(other.localUserJoined, localUserJoined) ||
                other.localUserJoined == localUserJoined) &&
            (identical(other.engine, engine) || other.engine == engine) &&
            (identical(other.channelName, channelName) ||
                other.channelName == channelName) &&
            (identical(other.userCallModel, userCallModel) ||
                other.userCallModel == userCallModel) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      callStatus,
      isMuted,
      isVideoCall,
      isVideoPage,
      isSpeakerOn,
      remoteUid,
      localUserJoined,
      engine,
      channelName,
      userCallModel,
      const DeepCollectionEquality().hash(error),
      duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CallStateCopyWith<_$_CallState> get copyWith =>
      __$$_CallStateCopyWithImpl<_$_CallState>(this, _$identity);
}

abstract class _CallState implements CallState {
  const factory _CallState(
      {required final BlocStatus status,
      required final CallStatus callStatus,
      required final bool isMuted,
      required final bool isVideoCall,
      required final bool isVideoPage,
      required final bool isSpeakerOn,
      final int? remoteUid,
      final bool? localUserJoined,
      final RtcEngine? engine,
      final String? channelName,
      final UserCall? userCallModel,
      final Object? error,
      final Duration? duration}) = _$_CallState;

  @override
  BlocStatus get status;
  @override
  CallStatus get callStatus;
  @override
  bool get isMuted;
  @override
  bool get isVideoCall;
  @override
  bool get isVideoPage;
  @override
  bool get isSpeakerOn;
  @override
  int? get remoteUid;
  @override
  bool? get localUserJoined;
  @override
  RtcEngine? get engine;
  @override
  String? get channelName;
  @override
  UserCall? get userCallModel;
  @override
  Object? get error;
  @override
  Duration? get duration;
  @override
  @JsonKey(ignore: true)
  _$$_CallStateCopyWith<_$_CallState> get copyWith =>
      throw _privateConstructorUsedError;
}
