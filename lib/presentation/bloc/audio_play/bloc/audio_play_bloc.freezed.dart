// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_play_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AudioPlayEvent {
  bool get play => throw _privateConstructorUsedError;
  String get docName => throw _privateConstructorUsedError;
  String get messageId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool play, String docName, String messageId)
        audioPlayPauseToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool play, String docName, String messageId)?
        audioPlayPauseToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool play, String docName, String messageId)?
        audioPlayPauseToggled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AudioPlayPauseToggled value)
        audioPlayPauseToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AudioPlayPauseToggled value)? audioPlayPauseToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AudioPlayPauseToggled value)? audioPlayPauseToggled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AudioPlayEventCopyWith<AudioPlayEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioPlayEventCopyWith<$Res> {
  factory $AudioPlayEventCopyWith(
          AudioPlayEvent value, $Res Function(AudioPlayEvent) then) =
      _$AudioPlayEventCopyWithImpl<$Res, AudioPlayEvent>;
  @useResult
  $Res call({bool play, String docName, String messageId});
}

/// @nodoc
class _$AudioPlayEventCopyWithImpl<$Res, $Val extends AudioPlayEvent>
    implements $AudioPlayEventCopyWith<$Res> {
  _$AudioPlayEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? play = null,
    Object? docName = null,
    Object? messageId = null,
  }) {
    return _then(_value.copyWith(
      play: null == play
          ? _value.play
          : play // ignore: cast_nullable_to_non_nullable
              as bool,
      docName: null == docName
          ? _value.docName
          : docName // ignore: cast_nullable_to_non_nullable
              as String,
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AudioPlayPauseToggledCopyWith<$Res>
    implements $AudioPlayEventCopyWith<$Res> {
  factory _$$_AudioPlayPauseToggledCopyWith(_$_AudioPlayPauseToggled value,
          $Res Function(_$_AudioPlayPauseToggled) then) =
      __$$_AudioPlayPauseToggledCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool play, String docName, String messageId});
}

/// @nodoc
class __$$_AudioPlayPauseToggledCopyWithImpl<$Res>
    extends _$AudioPlayEventCopyWithImpl<$Res, _$_AudioPlayPauseToggled>
    implements _$$_AudioPlayPauseToggledCopyWith<$Res> {
  __$$_AudioPlayPauseToggledCopyWithImpl(_$_AudioPlayPauseToggled _value,
      $Res Function(_$_AudioPlayPauseToggled) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? play = null,
    Object? docName = null,
    Object? messageId = null,
  }) {
    return _then(_$_AudioPlayPauseToggled(
      play: null == play
          ? _value.play
          : play // ignore: cast_nullable_to_non_nullable
              as bool,
      docName: null == docName
          ? _value.docName
          : docName // ignore: cast_nullable_to_non_nullable
              as String,
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AudioPlayPauseToggled implements _AudioPlayPauseToggled {
  const _$_AudioPlayPauseToggled(
      {required this.play, required this.docName, required this.messageId});

  @override
  final bool play;
  @override
  final String docName;
  @override
  final String messageId;

  @override
  String toString() {
    return 'AudioPlayEvent.audioPlayPauseToggled(play: $play, docName: $docName, messageId: $messageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AudioPlayPauseToggled &&
            (identical(other.play, play) || other.play == play) &&
            (identical(other.docName, docName) || other.docName == docName) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, play, docName, messageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AudioPlayPauseToggledCopyWith<_$_AudioPlayPauseToggled> get copyWith =>
      __$$_AudioPlayPauseToggledCopyWithImpl<_$_AudioPlayPauseToggled>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool play, String docName, String messageId)
        audioPlayPauseToggled,
  }) {
    return audioPlayPauseToggled(play, docName, messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool play, String docName, String messageId)?
        audioPlayPauseToggled,
  }) {
    return audioPlayPauseToggled?.call(play, docName, messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool play, String docName, String messageId)?
        audioPlayPauseToggled,
    required TResult orElse(),
  }) {
    if (audioPlayPauseToggled != null) {
      return audioPlayPauseToggled(play, docName, messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AudioPlayPauseToggled value)
        audioPlayPauseToggled,
  }) {
    return audioPlayPauseToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AudioPlayPauseToggled value)? audioPlayPauseToggled,
  }) {
    return audioPlayPauseToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AudioPlayPauseToggled value)? audioPlayPauseToggled,
    required TResult orElse(),
  }) {
    if (audioPlayPauseToggled != null) {
      return audioPlayPauseToggled(this);
    }
    return orElse();
  }
}

abstract class _AudioPlayPauseToggled implements AudioPlayEvent {
  const factory _AudioPlayPauseToggled(
      {required final bool play,
      required final String docName,
      required final String messageId}) = _$_AudioPlayPauseToggled;

  @override
  bool get play;
  @override
  String get docName;
  @override
  String get messageId;
  @override
  @JsonKey(ignore: true)
  _$$_AudioPlayPauseToggledCopyWith<_$_AudioPlayPauseToggled> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AudioPlayState {
  BlocStatus get status => throw _privateConstructorUsedError;
  List<AudioPosition> get audioPosition => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AudioPlayStateCopyWith<AudioPlayState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioPlayStateCopyWith<$Res> {
  factory $AudioPlayStateCopyWith(
          AudioPlayState value, $Res Function(AudioPlayState) then) =
      _$AudioPlayStateCopyWithImpl<$Res, AudioPlayState>;
  @useResult
  $Res call(
      {BlocStatus status, List<AudioPosition> audioPosition, Object? error});
}

/// @nodoc
class _$AudioPlayStateCopyWithImpl<$Res, $Val extends AudioPlayState>
    implements $AudioPlayStateCopyWith<$Res> {
  _$AudioPlayStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? audioPosition = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      audioPosition: null == audioPosition
          ? _value.audioPosition
          : audioPosition // ignore: cast_nullable_to_non_nullable
              as List<AudioPosition>,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AudioPlayStateCopyWith<$Res>
    implements $AudioPlayStateCopyWith<$Res> {
  factory _$$_AudioPlayStateCopyWith(
          _$_AudioPlayState value, $Res Function(_$_AudioPlayState) then) =
      __$$_AudioPlayStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status, List<AudioPosition> audioPosition, Object? error});
}

/// @nodoc
class __$$_AudioPlayStateCopyWithImpl<$Res>
    extends _$AudioPlayStateCopyWithImpl<$Res, _$_AudioPlayState>
    implements _$$_AudioPlayStateCopyWith<$Res> {
  __$$_AudioPlayStateCopyWithImpl(
      _$_AudioPlayState _value, $Res Function(_$_AudioPlayState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? audioPosition = null,
    Object? error = freezed,
  }) {
    return _then(_$_AudioPlayState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      audioPosition: null == audioPosition
          ? _value._audioPosition
          : audioPosition // ignore: cast_nullable_to_non_nullable
              as List<AudioPosition>,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_AudioPlayState implements _AudioPlayState {
  const _$_AudioPlayState(
      {required this.status,
      required final List<AudioPosition> audioPosition,
      this.error})
      : _audioPosition = audioPosition;

  @override
  final BlocStatus status;
  final List<AudioPosition> _audioPosition;
  @override
  List<AudioPosition> get audioPosition {
    if (_audioPosition is EqualUnmodifiableListView) return _audioPosition;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_audioPosition);
  }

  @override
  final Object? error;

  @override
  String toString() {
    return 'AudioPlayState(status: $status, audioPosition: $audioPosition, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AudioPlayState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._audioPosition, _audioPosition) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_audioPosition),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AudioPlayStateCopyWith<_$_AudioPlayState> get copyWith =>
      __$$_AudioPlayStateCopyWithImpl<_$_AudioPlayState>(this, _$identity);
}

abstract class _AudioPlayState implements AudioPlayState {
  const factory _AudioPlayState(
      {required final BlocStatus status,
      required final List<AudioPosition> audioPosition,
      final Object? error}) = _$_AudioPlayState;

  @override
  BlocStatus get status;
  @override
  List<AudioPosition> get audioPosition;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$_AudioPlayStateCopyWith<_$_AudioPlayState> get copyWith =>
      throw _privateConstructorUsedError;
}
