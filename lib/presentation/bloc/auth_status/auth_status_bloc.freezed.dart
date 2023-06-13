// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_status_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthStatusEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isRegistration) logedIn,
    required TResult Function() logedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isRegistration)? logedIn,
    TResult? Function()? logedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isRegistration)? logedIn,
    TResult Function()? logedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LogedIn value) logedIn,
    required TResult Function(_LogedOut value) logedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LogedIn value)? logedIn,
    TResult? Function(_LogedOut value)? logedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LogedIn value)? logedIn,
    TResult Function(_LogedOut value)? logedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStatusEventCopyWith<$Res> {
  factory $AuthStatusEventCopyWith(
          AuthStatusEvent value, $Res Function(AuthStatusEvent) then) =
      _$AuthStatusEventCopyWithImpl<$Res, AuthStatusEvent>;
}

/// @nodoc
class _$AuthStatusEventCopyWithImpl<$Res, $Val extends AuthStatusEvent>
    implements $AuthStatusEventCopyWith<$Res> {
  _$AuthStatusEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$AuthStatusEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AuthStatusEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isRegistration) logedIn,
    required TResult Function() logedOut,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isRegistration)? logedIn,
    TResult? Function()? logedOut,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isRegistration)? logedIn,
    TResult Function()? logedOut,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LogedIn value) logedIn,
    required TResult Function(_LogedOut value) logedOut,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LogedIn value)? logedIn,
    TResult? Function(_LogedOut value)? logedOut,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LogedIn value)? logedIn,
    TResult Function(_LogedOut value)? logedOut,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthStatusEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_LogedInCopyWith<$Res> {
  factory _$$_LogedInCopyWith(
          _$_LogedIn value, $Res Function(_$_LogedIn) then) =
      __$$_LogedInCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isRegistration});
}

/// @nodoc
class __$$_LogedInCopyWithImpl<$Res>
    extends _$AuthStatusEventCopyWithImpl<$Res, _$_LogedIn>
    implements _$$_LogedInCopyWith<$Res> {
  __$$_LogedInCopyWithImpl(_$_LogedIn _value, $Res Function(_$_LogedIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRegistration = null,
  }) {
    return _then(_$_LogedIn(
      isRegistration: null == isRegistration
          ? _value.isRegistration
          : isRegistration // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LogedIn implements _LogedIn {
  const _$_LogedIn({required this.isRegistration});

  @override
  final bool isRegistration;

  @override
  String toString() {
    return 'AuthStatusEvent.logedIn(isRegistration: $isRegistration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LogedIn &&
            (identical(other.isRegistration, isRegistration) ||
                other.isRegistration == isRegistration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isRegistration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LogedInCopyWith<_$_LogedIn> get copyWith =>
      __$$_LogedInCopyWithImpl<_$_LogedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isRegistration) logedIn,
    required TResult Function() logedOut,
  }) {
    return logedIn(isRegistration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isRegistration)? logedIn,
    TResult? Function()? logedOut,
  }) {
    return logedIn?.call(isRegistration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isRegistration)? logedIn,
    TResult Function()? logedOut,
    required TResult orElse(),
  }) {
    if (logedIn != null) {
      return logedIn(isRegistration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LogedIn value) logedIn,
    required TResult Function(_LogedOut value) logedOut,
  }) {
    return logedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LogedIn value)? logedIn,
    TResult? Function(_LogedOut value)? logedOut,
  }) {
    return logedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LogedIn value)? logedIn,
    TResult Function(_LogedOut value)? logedOut,
    required TResult orElse(),
  }) {
    if (logedIn != null) {
      return logedIn(this);
    }
    return orElse();
  }
}

abstract class _LogedIn implements AuthStatusEvent {
  const factory _LogedIn({required final bool isRegistration}) = _$_LogedIn;

  bool get isRegistration;
  @JsonKey(ignore: true)
  _$$_LogedInCopyWith<_$_LogedIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LogedOutCopyWith<$Res> {
  factory _$$_LogedOutCopyWith(
          _$_LogedOut value, $Res Function(_$_LogedOut) then) =
      __$$_LogedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogedOutCopyWithImpl<$Res>
    extends _$AuthStatusEventCopyWithImpl<$Res, _$_LogedOut>
    implements _$$_LogedOutCopyWith<$Res> {
  __$$_LogedOutCopyWithImpl(
      _$_LogedOut _value, $Res Function(_$_LogedOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LogedOut implements _LogedOut {
  const _$_LogedOut();

  @override
  String toString() {
    return 'AuthStatusEvent.logedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LogedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isRegistration) logedIn,
    required TResult Function() logedOut,
  }) {
    return logedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isRegistration)? logedIn,
    TResult? Function()? logedOut,
  }) {
    return logedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isRegistration)? logedIn,
    TResult Function()? logedOut,
    required TResult orElse(),
  }) {
    if (logedOut != null) {
      return logedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LogedIn value) logedIn,
    required TResult Function(_LogedOut value) logedOut,
  }) {
    return logedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LogedIn value)? logedIn,
    TResult? Function(_LogedOut value)? logedOut,
  }) {
    return logedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LogedIn value)? logedIn,
    TResult Function(_LogedOut value)? logedOut,
    required TResult orElse(),
  }) {
    if (logedOut != null) {
      return logedOut(this);
    }
    return orElse();
  }
}

abstract class _LogedOut implements AuthStatusEvent {
  const factory _LogedOut() = _$_LogedOut;
}

/// @nodoc
mixin _$AuthStatusState {
  BlocStatus get status => throw _privateConstructorUsedError;
  String? get uid => throw _privateConstructorUsedError;
  bool? get isRegistration => throw _privateConstructorUsedError;
  bool? get isLogedOut => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStatusStateCopyWith<AuthStatusState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStatusStateCopyWith<$Res> {
  factory $AuthStatusStateCopyWith(
          AuthStatusState value, $Res Function(AuthStatusState) then) =
      _$AuthStatusStateCopyWithImpl<$Res, AuthStatusState>;
  @useResult
  $Res call(
      {BlocStatus status,
      String? uid,
      bool? isRegistration,
      bool? isLogedOut,
      Object? error});
}

/// @nodoc
class _$AuthStatusStateCopyWithImpl<$Res, $Val extends AuthStatusState>
    implements $AuthStatusStateCopyWith<$Res> {
  _$AuthStatusStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? uid = freezed,
    Object? isRegistration = freezed,
    Object? isLogedOut = freezed,
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
      isRegistration: freezed == isRegistration
          ? _value.isRegistration
          : isRegistration // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLogedOut: freezed == isLogedOut
          ? _value.isLogedOut
          : isLogedOut // ignore: cast_nullable_to_non_nullable
              as bool?,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthStatusStateCopyWith<$Res>
    implements $AuthStatusStateCopyWith<$Res> {
  factory _$$_AuthStatusStateCopyWith(
          _$_AuthStatusState value, $Res Function(_$_AuthStatusState) then) =
      __$$_AuthStatusStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status,
      String? uid,
      bool? isRegistration,
      bool? isLogedOut,
      Object? error});
}

/// @nodoc
class __$$_AuthStatusStateCopyWithImpl<$Res>
    extends _$AuthStatusStateCopyWithImpl<$Res, _$_AuthStatusState>
    implements _$$_AuthStatusStateCopyWith<$Res> {
  __$$_AuthStatusStateCopyWithImpl(
      _$_AuthStatusState _value, $Res Function(_$_AuthStatusState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? uid = freezed,
    Object? isRegistration = freezed,
    Object? isLogedOut = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_AuthStatusState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      isRegistration: freezed == isRegistration
          ? _value.isRegistration
          : isRegistration // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLogedOut: freezed == isLogedOut
          ? _value.isLogedOut
          : isLogedOut // ignore: cast_nullable_to_non_nullable
              as bool?,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_AuthStatusState implements _AuthStatusState {
  const _$_AuthStatusState(
      {required this.status,
      this.uid,
      this.isRegistration,
      this.isLogedOut,
      this.error});

  @override
  final BlocStatus status;
  @override
  final String? uid;
  @override
  final bool? isRegistration;
  @override
  final bool? isLogedOut;
  @override
  final Object? error;

  @override
  String toString() {
    return 'AuthStatusState(status: $status, uid: $uid, isRegistration: $isRegistration, isLogedOut: $isLogedOut, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthStatusState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.isRegistration, isRegistration) ||
                other.isRegistration == isRegistration) &&
            (identical(other.isLogedOut, isLogedOut) ||
                other.isLogedOut == isLogedOut) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, uid, isRegistration,
      isLogedOut, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStatusStateCopyWith<_$_AuthStatusState> get copyWith =>
      __$$_AuthStatusStateCopyWithImpl<_$_AuthStatusState>(this, _$identity);
}

abstract class _AuthStatusState implements AuthStatusState {
  const factory _AuthStatusState(
      {required final BlocStatus status,
      final String? uid,
      final bool? isRegistration,
      final bool? isLogedOut,
      final Object? error}) = _$_AuthStatusState;

  @override
  BlocStatus get status;
  @override
  String? get uid;
  @override
  bool? get isRegistration;
  @override
  bool? get isLogedOut;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStatusStateCopyWith<_$_AuthStatusState> get copyWith =>
      throw _privateConstructorUsedError;
}
