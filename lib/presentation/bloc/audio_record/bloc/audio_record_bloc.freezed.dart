// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_record_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AudioRecordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onRecord,
    required TResult Function() onStop,
    required TResult Function() onCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onRecord,
    TResult? Function()? onStop,
    TResult? Function()? onCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onRecord,
    TResult Function()? onStop,
    TResult Function()? onCancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnRecord value) onRecord,
    required TResult Function(_OnStop value) onStop,
    required TResult Function(_OnCancel value) onCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnRecord value)? onRecord,
    TResult? Function(_OnStop value)? onStop,
    TResult? Function(_OnCancel value)? onCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnRecord value)? onRecord,
    TResult Function(_OnStop value)? onStop,
    TResult Function(_OnCancel value)? onCancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioRecordEventCopyWith<$Res> {
  factory $AudioRecordEventCopyWith(
          AudioRecordEvent value, $Res Function(AudioRecordEvent) then) =
      _$AudioRecordEventCopyWithImpl<$Res, AudioRecordEvent>;
}

/// @nodoc
class _$AudioRecordEventCopyWithImpl<$Res, $Val extends AudioRecordEvent>
    implements $AudioRecordEventCopyWith<$Res> {
  _$AudioRecordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_OnRecordCopyWith<$Res> {
  factory _$$_OnRecordCopyWith(
          _$_OnRecord value, $Res Function(_$_OnRecord) then) =
      __$$_OnRecordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnRecordCopyWithImpl<$Res>
    extends _$AudioRecordEventCopyWithImpl<$Res, _$_OnRecord>
    implements _$$_OnRecordCopyWith<$Res> {
  __$$_OnRecordCopyWithImpl(
      _$_OnRecord _value, $Res Function(_$_OnRecord) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnRecord implements _OnRecord {
  const _$_OnRecord();

  @override
  String toString() {
    return 'AudioRecordEvent.onRecord()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnRecord);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onRecord,
    required TResult Function() onStop,
    required TResult Function() onCancel,
  }) {
    return onRecord();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onRecord,
    TResult? Function()? onStop,
    TResult? Function()? onCancel,
  }) {
    return onRecord?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onRecord,
    TResult Function()? onStop,
    TResult Function()? onCancel,
    required TResult orElse(),
  }) {
    if (onRecord != null) {
      return onRecord();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnRecord value) onRecord,
    required TResult Function(_OnStop value) onStop,
    required TResult Function(_OnCancel value) onCancel,
  }) {
    return onRecord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnRecord value)? onRecord,
    TResult? Function(_OnStop value)? onStop,
    TResult? Function(_OnCancel value)? onCancel,
  }) {
    return onRecord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnRecord value)? onRecord,
    TResult Function(_OnStop value)? onStop,
    TResult Function(_OnCancel value)? onCancel,
    required TResult orElse(),
  }) {
    if (onRecord != null) {
      return onRecord(this);
    }
    return orElse();
  }
}

abstract class _OnRecord implements AudioRecordEvent {
  const factory _OnRecord() = _$_OnRecord;
}

/// @nodoc
abstract class _$$_OnStopCopyWith<$Res> {
  factory _$$_OnStopCopyWith(_$_OnStop value, $Res Function(_$_OnStop) then) =
      __$$_OnStopCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnStopCopyWithImpl<$Res>
    extends _$AudioRecordEventCopyWithImpl<$Res, _$_OnStop>
    implements _$$_OnStopCopyWith<$Res> {
  __$$_OnStopCopyWithImpl(_$_OnStop _value, $Res Function(_$_OnStop) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnStop implements _OnStop {
  const _$_OnStop();

  @override
  String toString() {
    return 'AudioRecordEvent.onStop()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnStop);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onRecord,
    required TResult Function() onStop,
    required TResult Function() onCancel,
  }) {
    return onStop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onRecord,
    TResult? Function()? onStop,
    TResult? Function()? onCancel,
  }) {
    return onStop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onRecord,
    TResult Function()? onStop,
    TResult Function()? onCancel,
    required TResult orElse(),
  }) {
    if (onStop != null) {
      return onStop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnRecord value) onRecord,
    required TResult Function(_OnStop value) onStop,
    required TResult Function(_OnCancel value) onCancel,
  }) {
    return onStop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnRecord value)? onRecord,
    TResult? Function(_OnStop value)? onStop,
    TResult? Function(_OnCancel value)? onCancel,
  }) {
    return onStop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnRecord value)? onRecord,
    TResult Function(_OnStop value)? onStop,
    TResult Function(_OnCancel value)? onCancel,
    required TResult orElse(),
  }) {
    if (onStop != null) {
      return onStop(this);
    }
    return orElse();
  }
}

abstract class _OnStop implements AudioRecordEvent {
  const factory _OnStop() = _$_OnStop;
}

/// @nodoc
abstract class _$$_OnCancelCopyWith<$Res> {
  factory _$$_OnCancelCopyWith(
          _$_OnCancel value, $Res Function(_$_OnCancel) then) =
      __$$_OnCancelCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnCancelCopyWithImpl<$Res>
    extends _$AudioRecordEventCopyWithImpl<$Res, _$_OnCancel>
    implements _$$_OnCancelCopyWith<$Res> {
  __$$_OnCancelCopyWithImpl(
      _$_OnCancel _value, $Res Function(_$_OnCancel) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnCancel implements _OnCancel {
  const _$_OnCancel();

  @override
  String toString() {
    return 'AudioRecordEvent.onCancel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnCancel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onRecord,
    required TResult Function() onStop,
    required TResult Function() onCancel,
  }) {
    return onCancel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onRecord,
    TResult? Function()? onStop,
    TResult? Function()? onCancel,
  }) {
    return onCancel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onRecord,
    TResult Function()? onStop,
    TResult Function()? onCancel,
    required TResult orElse(),
  }) {
    if (onCancel != null) {
      return onCancel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnRecord value) onRecord,
    required TResult Function(_OnStop value) onStop,
    required TResult Function(_OnCancel value) onCancel,
  }) {
    return onCancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnRecord value)? onRecord,
    TResult? Function(_OnStop value)? onStop,
    TResult? Function(_OnCancel value)? onCancel,
  }) {
    return onCancel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnRecord value)? onRecord,
    TResult Function(_OnStop value)? onStop,
    TResult Function(_OnCancel value)? onCancel,
    required TResult orElse(),
  }) {
    if (onCancel != null) {
      return onCancel(this);
    }
    return orElse();
  }
}

abstract class _OnCancel implements AudioRecordEvent {
  const factory _OnCancel() = _$_OnCancel;
}

/// @nodoc
mixin _$AudioRecordState {
  bool get isMuted => throw _privateConstructorUsedError;
  BlocStatus get status => throw _privateConstructorUsedError;
  AudiRecordStatus get audioRecordStatus => throw _privateConstructorUsedError;
  bool get isRecording => throw _privateConstructorUsedError;
  int get recordTime => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;
  Duration? get duration => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AudioRecordStateCopyWith<AudioRecordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioRecordStateCopyWith<$Res> {
  factory $AudioRecordStateCopyWith(
          AudioRecordState value, $Res Function(AudioRecordState) then) =
      _$AudioRecordStateCopyWithImpl<$Res, AudioRecordState>;
  @useResult
  $Res call(
      {bool isMuted,
      BlocStatus status,
      AudiRecordStatus audioRecordStatus,
      bool isRecording,
      int recordTime,
      String? path,
      Object? error,
      Duration? duration});
}

/// @nodoc
class _$AudioRecordStateCopyWithImpl<$Res, $Val extends AudioRecordState>
    implements $AudioRecordStateCopyWith<$Res> {
  _$AudioRecordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMuted = null,
    Object? status = null,
    Object? audioRecordStatus = null,
    Object? isRecording = null,
    Object? recordTime = null,
    Object? path = freezed,
    Object? error = freezed,
    Object? duration = freezed,
  }) {
    return _then(_value.copyWith(
      isMuted: null == isMuted
          ? _value.isMuted
          : isMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      audioRecordStatus: null == audioRecordStatus
          ? _value.audioRecordStatus
          : audioRecordStatus // ignore: cast_nullable_to_non_nullable
              as AudiRecordStatus,
      isRecording: null == isRecording
          ? _value.isRecording
          : isRecording // ignore: cast_nullable_to_non_nullable
              as bool,
      recordTime: null == recordTime
          ? _value.recordTime
          : recordTime // ignore: cast_nullable_to_non_nullable
              as int,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error ? _value.error : error,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AudioRecordStateCopyWith<$Res>
    implements $AudioRecordStateCopyWith<$Res> {
  factory _$$_AudioRecordStateCopyWith(
          _$_AudioRecordState value, $Res Function(_$_AudioRecordState) then) =
      __$$_AudioRecordStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isMuted,
      BlocStatus status,
      AudiRecordStatus audioRecordStatus,
      bool isRecording,
      int recordTime,
      String? path,
      Object? error,
      Duration? duration});
}

/// @nodoc
class __$$_AudioRecordStateCopyWithImpl<$Res>
    extends _$AudioRecordStateCopyWithImpl<$Res, _$_AudioRecordState>
    implements _$$_AudioRecordStateCopyWith<$Res> {
  __$$_AudioRecordStateCopyWithImpl(
      _$_AudioRecordState _value, $Res Function(_$_AudioRecordState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMuted = null,
    Object? status = null,
    Object? audioRecordStatus = null,
    Object? isRecording = null,
    Object? recordTime = null,
    Object? path = freezed,
    Object? error = freezed,
    Object? duration = freezed,
  }) {
    return _then(_$_AudioRecordState(
      isMuted: null == isMuted
          ? _value.isMuted
          : isMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      audioRecordStatus: null == audioRecordStatus
          ? _value.audioRecordStatus
          : audioRecordStatus // ignore: cast_nullable_to_non_nullable
              as AudiRecordStatus,
      isRecording: null == isRecording
          ? _value.isRecording
          : isRecording // ignore: cast_nullable_to_non_nullable
              as bool,
      recordTime: null == recordTime
          ? _value.recordTime
          : recordTime // ignore: cast_nullable_to_non_nullable
              as int,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error ? _value.error : error,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
    ));
  }
}

/// @nodoc

class _$_AudioRecordState implements _AudioRecordState {
  const _$_AudioRecordState(
      {required this.isMuted,
      required this.status,
      required this.audioRecordStatus,
      required this.isRecording,
      required this.recordTime,
      this.path,
      this.error,
      this.duration});

  @override
  final bool isMuted;
  @override
  final BlocStatus status;
  @override
  final AudiRecordStatus audioRecordStatus;
  @override
  final bool isRecording;
  @override
  final int recordTime;
  @override
  final String? path;
  @override
  final Object? error;
  @override
  final Duration? duration;

  @override
  String toString() {
    return 'AudioRecordState(isMuted: $isMuted, status: $status, audioRecordStatus: $audioRecordStatus, isRecording: $isRecording, recordTime: $recordTime, path: $path, error: $error, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AudioRecordState &&
            (identical(other.isMuted, isMuted) || other.isMuted == isMuted) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.audioRecordStatus, audioRecordStatus) ||
                other.audioRecordStatus == audioRecordStatus) &&
            (identical(other.isRecording, isRecording) ||
                other.isRecording == isRecording) &&
            (identical(other.recordTime, recordTime) ||
                other.recordTime == recordTime) &&
            (identical(other.path, path) || other.path == path) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isMuted,
      status,
      audioRecordStatus,
      isRecording,
      recordTime,
      path,
      const DeepCollectionEquality().hash(error),
      duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AudioRecordStateCopyWith<_$_AudioRecordState> get copyWith =>
      __$$_AudioRecordStateCopyWithImpl<_$_AudioRecordState>(this, _$identity);
}

abstract class _AudioRecordState implements AudioRecordState {
  const factory _AudioRecordState(
      {required final bool isMuted,
      required final BlocStatus status,
      required final AudiRecordStatus audioRecordStatus,
      required final bool isRecording,
      required final int recordTime,
      final String? path,
      final Object? error,
      final Duration? duration}) = _$_AudioRecordState;

  @override
  bool get isMuted;
  @override
  BlocStatus get status;
  @override
  AudiRecordStatus get audioRecordStatus;
  @override
  bool get isRecording;
  @override
  int get recordTime;
  @override
  String? get path;
  @override
  Object? get error;
  @override
  Duration? get duration;
  @override
  @JsonKey(ignore: true)
  _$$_AudioRecordStateCopyWith<_$_AudioRecordState> get copyWith =>
      throw _privateConstructorUsedError;
}
