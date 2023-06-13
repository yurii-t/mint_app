// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_wave_loader_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AudioWaveLoaderEvent {
  String get messageId => throw _privateConstructorUsedError;
  String get docName => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String messageId, String docName, String url)
        started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String messageId, String docName, String url)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String messageId, String docName, String url)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AudioWaveLoaderEventCopyWith<AudioWaveLoaderEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioWaveLoaderEventCopyWith<$Res> {
  factory $AudioWaveLoaderEventCopyWith(AudioWaveLoaderEvent value,
          $Res Function(AudioWaveLoaderEvent) then) =
      _$AudioWaveLoaderEventCopyWithImpl<$Res, AudioWaveLoaderEvent>;
  @useResult
  $Res call({String messageId, String docName, String url});
}

/// @nodoc
class _$AudioWaveLoaderEventCopyWithImpl<$Res,
        $Val extends AudioWaveLoaderEvent>
    implements $AudioWaveLoaderEventCopyWith<$Res> {
  _$AudioWaveLoaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
    Object? docName = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      docName: null == docName
          ? _value.docName
          : docName // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res>
    implements $AudioWaveLoaderEventCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String messageId, String docName, String url});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$AudioWaveLoaderEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
    Object? docName = null,
    Object? url = null,
  }) {
    return _then(_$_Started(
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      docName: null == docName
          ? _value.docName
          : docName // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(
      {required this.messageId, required this.docName, required this.url});

  @override
  final String messageId;
  @override
  final String docName;
  @override
  final String url;

  @override
  String toString() {
    return 'AudioWaveLoaderEvent.started(messageId: $messageId, docName: $docName, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.docName, docName) || other.docName == docName) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageId, docName, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String messageId, String docName, String url)
        started,
  }) {
    return started(messageId, docName, url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String messageId, String docName, String url)? started,
  }) {
    return started?.call(messageId, docName, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String messageId, String docName, String url)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(messageId, docName, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AudioWaveLoaderEvent {
  const factory _Started(
      {required final String messageId,
      required final String docName,
      required final String url}) = _$_Started;

  @override
  String get messageId;
  @override
  String get docName;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AudioWaveLoaderState {
  BlocStatus get status => throw _privateConstructorUsedError;
  List<WaveSetter> get waveFormList => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  Waveform? get waveform => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AudioWaveLoaderStateCopyWith<AudioWaveLoaderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioWaveLoaderStateCopyWith<$Res> {
  factory $AudioWaveLoaderStateCopyWith(AudioWaveLoaderState value,
          $Res Function(AudioWaveLoaderState) then) =
      _$AudioWaveLoaderStateCopyWithImpl<$Res, AudioWaveLoaderState>;
  @useResult
  $Res call(
      {BlocStatus status,
      List<WaveSetter> waveFormList,
      String? id,
      Waveform? waveform,
      Object? error});
}

/// @nodoc
class _$AudioWaveLoaderStateCopyWithImpl<$Res,
        $Val extends AudioWaveLoaderState>
    implements $AudioWaveLoaderStateCopyWith<$Res> {
  _$AudioWaveLoaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? waveFormList = null,
    Object? id = freezed,
    Object? waveform = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      waveFormList: null == waveFormList
          ? _value.waveFormList
          : waveFormList // ignore: cast_nullable_to_non_nullable
              as List<WaveSetter>,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      waveform: freezed == waveform
          ? _value.waveform
          : waveform // ignore: cast_nullable_to_non_nullable
              as Waveform?,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AudioWaveLoaderStateCopyWith<$Res>
    implements $AudioWaveLoaderStateCopyWith<$Res> {
  factory _$$_AudioWaveLoaderStateCopyWith(_$_AudioWaveLoaderState value,
          $Res Function(_$_AudioWaveLoaderState) then) =
      __$$_AudioWaveLoaderStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status,
      List<WaveSetter> waveFormList,
      String? id,
      Waveform? waveform,
      Object? error});
}

/// @nodoc
class __$$_AudioWaveLoaderStateCopyWithImpl<$Res>
    extends _$AudioWaveLoaderStateCopyWithImpl<$Res, _$_AudioWaveLoaderState>
    implements _$$_AudioWaveLoaderStateCopyWith<$Res> {
  __$$_AudioWaveLoaderStateCopyWithImpl(_$_AudioWaveLoaderState _value,
      $Res Function(_$_AudioWaveLoaderState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? waveFormList = null,
    Object? id = freezed,
    Object? waveform = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_AudioWaveLoaderState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      waveFormList: null == waveFormList
          ? _value._waveFormList
          : waveFormList // ignore: cast_nullable_to_non_nullable
              as List<WaveSetter>,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      waveform: freezed == waveform
          ? _value.waveform
          : waveform // ignore: cast_nullable_to_non_nullable
              as Waveform?,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_AudioWaveLoaderState implements _AudioWaveLoaderState {
  const _$_AudioWaveLoaderState(
      {required this.status,
      required final List<WaveSetter> waveFormList,
      this.id,
      this.waveform,
      this.error})
      : _waveFormList = waveFormList;

  @override
  final BlocStatus status;
  final List<WaveSetter> _waveFormList;
  @override
  List<WaveSetter> get waveFormList {
    if (_waveFormList is EqualUnmodifiableListView) return _waveFormList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_waveFormList);
  }

  @override
  final String? id;
  @override
  final Waveform? waveform;
  @override
  final Object? error;

  @override
  String toString() {
    return 'AudioWaveLoaderState(status: $status, waveFormList: $waveFormList, id: $id, waveform: $waveform, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AudioWaveLoaderState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._waveFormList, _waveFormList) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.waveform, waveform) ||
                other.waveform == waveform) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_waveFormList),
      id,
      waveform,
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AudioWaveLoaderStateCopyWith<_$_AudioWaveLoaderState> get copyWith =>
      __$$_AudioWaveLoaderStateCopyWithImpl<_$_AudioWaveLoaderState>(
          this, _$identity);
}

abstract class _AudioWaveLoaderState implements AudioWaveLoaderState {
  const factory _AudioWaveLoaderState(
      {required final BlocStatus status,
      required final List<WaveSetter> waveFormList,
      final String? id,
      final Waveform? waveform,
      final Object? error}) = _$_AudioWaveLoaderState;

  @override
  BlocStatus get status;
  @override
  List<WaveSetter> get waveFormList;
  @override
  String? get id;
  @override
  Waveform? get waveform;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$_AudioWaveLoaderStateCopyWith<_$_AudioWaveLoaderState> get copyWith =>
      throw _privateConstructorUsedError;
}
