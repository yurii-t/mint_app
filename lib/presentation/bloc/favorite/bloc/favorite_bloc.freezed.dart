// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoriteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserStream,
    required TResult Function(Doctor doctor) addDoctorToFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserStream,
    TResult? Function(Doctor doctor)? addDoctorToFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserStream,
    TResult Function(Doctor doctor)? addDoctorToFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getUserStream value) getUserStream,
    required TResult Function(_addDoctorToFavorite value) addDoctorToFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getUserStream value)? getUserStream,
    TResult? Function(_addDoctorToFavorite value)? addDoctorToFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getUserStream value)? getUserStream,
    TResult Function(_addDoctorToFavorite value)? addDoctorToFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteEventCopyWith<$Res> {
  factory $FavoriteEventCopyWith(
          FavoriteEvent value, $Res Function(FavoriteEvent) then) =
      _$FavoriteEventCopyWithImpl<$Res, FavoriteEvent>;
}

/// @nodoc
class _$FavoriteEventCopyWithImpl<$Res, $Val extends FavoriteEvent>
    implements $FavoriteEventCopyWith<$Res> {
  _$FavoriteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_getUserStreamCopyWith<$Res> {
  factory _$$_getUserStreamCopyWith(
          _$_getUserStream value, $Res Function(_$_getUserStream) then) =
      __$$_getUserStreamCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_getUserStreamCopyWithImpl<$Res>
    extends _$FavoriteEventCopyWithImpl<$Res, _$_getUserStream>
    implements _$$_getUserStreamCopyWith<$Res> {
  __$$_getUserStreamCopyWithImpl(
      _$_getUserStream _value, $Res Function(_$_getUserStream) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_getUserStream implements _getUserStream {
  const _$_getUserStream();

  @override
  String toString() {
    return 'FavoriteEvent.getUserStream()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_getUserStream);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserStream,
    required TResult Function(Doctor doctor) addDoctorToFavorite,
  }) {
    return getUserStream();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserStream,
    TResult? Function(Doctor doctor)? addDoctorToFavorite,
  }) {
    return getUserStream?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserStream,
    TResult Function(Doctor doctor)? addDoctorToFavorite,
    required TResult orElse(),
  }) {
    if (getUserStream != null) {
      return getUserStream();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getUserStream value) getUserStream,
    required TResult Function(_addDoctorToFavorite value) addDoctorToFavorite,
  }) {
    return getUserStream(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getUserStream value)? getUserStream,
    TResult? Function(_addDoctorToFavorite value)? addDoctorToFavorite,
  }) {
    return getUserStream?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getUserStream value)? getUserStream,
    TResult Function(_addDoctorToFavorite value)? addDoctorToFavorite,
    required TResult orElse(),
  }) {
    if (getUserStream != null) {
      return getUserStream(this);
    }
    return orElse();
  }
}

abstract class _getUserStream implements FavoriteEvent {
  const factory _getUserStream() = _$_getUserStream;
}

/// @nodoc
abstract class _$$_addDoctorToFavoriteCopyWith<$Res> {
  factory _$$_addDoctorToFavoriteCopyWith(_$_addDoctorToFavorite value,
          $Res Function(_$_addDoctorToFavorite) then) =
      __$$_addDoctorToFavoriteCopyWithImpl<$Res>;
  @useResult
  $Res call({Doctor doctor});
}

/// @nodoc
class __$$_addDoctorToFavoriteCopyWithImpl<$Res>
    extends _$FavoriteEventCopyWithImpl<$Res, _$_addDoctorToFavorite>
    implements _$$_addDoctorToFavoriteCopyWith<$Res> {
  __$$_addDoctorToFavoriteCopyWithImpl(_$_addDoctorToFavorite _value,
      $Res Function(_$_addDoctorToFavorite) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctor = null,
  }) {
    return _then(_$_addDoctorToFavorite(
      doctor: null == doctor
          ? _value.doctor
          : doctor // ignore: cast_nullable_to_non_nullable
              as Doctor,
    ));
  }
}

/// @nodoc

class _$_addDoctorToFavorite implements _addDoctorToFavorite {
  const _$_addDoctorToFavorite({required this.doctor});

  @override
  final Doctor doctor;

  @override
  String toString() {
    return 'FavoriteEvent.addDoctorToFavorite(doctor: $doctor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_addDoctorToFavorite &&
            (identical(other.doctor, doctor) || other.doctor == doctor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, doctor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_addDoctorToFavoriteCopyWith<_$_addDoctorToFavorite> get copyWith =>
      __$$_addDoctorToFavoriteCopyWithImpl<_$_addDoctorToFavorite>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserStream,
    required TResult Function(Doctor doctor) addDoctorToFavorite,
  }) {
    return addDoctorToFavorite(doctor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserStream,
    TResult? Function(Doctor doctor)? addDoctorToFavorite,
  }) {
    return addDoctorToFavorite?.call(doctor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserStream,
    TResult Function(Doctor doctor)? addDoctorToFavorite,
    required TResult orElse(),
  }) {
    if (addDoctorToFavorite != null) {
      return addDoctorToFavorite(doctor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getUserStream value) getUserStream,
    required TResult Function(_addDoctorToFavorite value) addDoctorToFavorite,
  }) {
    return addDoctorToFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getUserStream value)? getUserStream,
    TResult? Function(_addDoctorToFavorite value)? addDoctorToFavorite,
  }) {
    return addDoctorToFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getUserStream value)? getUserStream,
    TResult Function(_addDoctorToFavorite value)? addDoctorToFavorite,
    required TResult orElse(),
  }) {
    if (addDoctorToFavorite != null) {
      return addDoctorToFavorite(this);
    }
    return orElse();
  }
}

abstract class _addDoctorToFavorite implements FavoriteEvent {
  const factory _addDoctorToFavorite({required final Doctor doctor}) =
      _$_addDoctorToFavorite;

  Doctor get doctor;
  @JsonKey(ignore: true)
  _$$_addDoctorToFavoriteCopyWith<_$_addDoctorToFavorite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavoriteState {
  BlocStatus get status => throw _privateConstructorUsedError;
  CurrentUser? get currentUser => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoriteStateCopyWith<FavoriteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStateCopyWith<$Res> {
  factory $FavoriteStateCopyWith(
          FavoriteState value, $Res Function(FavoriteState) then) =
      _$FavoriteStateCopyWithImpl<$Res, FavoriteState>;
  @useResult
  $Res call({BlocStatus status, CurrentUser? currentUser, Object? error});
}

/// @nodoc
class _$FavoriteStateCopyWithImpl<$Res, $Val extends FavoriteState>
    implements $FavoriteStateCopyWith<$Res> {
  _$FavoriteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currentUser = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as CurrentUser?,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FavoriteStateCopyWith<$Res>
    implements $FavoriteStateCopyWith<$Res> {
  factory _$$_FavoriteStateCopyWith(
          _$_FavoriteState value, $Res Function(_$_FavoriteState) then) =
      __$$_FavoriteStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlocStatus status, CurrentUser? currentUser, Object? error});
}

/// @nodoc
class __$$_FavoriteStateCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$_FavoriteState>
    implements _$$_FavoriteStateCopyWith<$Res> {
  __$$_FavoriteStateCopyWithImpl(
      _$_FavoriteState _value, $Res Function(_$_FavoriteState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currentUser = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_FavoriteState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as CurrentUser?,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_FavoriteState implements _FavoriteState {
  const _$_FavoriteState({required this.status, this.currentUser, this.error});

  @override
  final BlocStatus status;
  @override
  final CurrentUser? currentUser;
  @override
  final Object? error;

  @override
  String toString() {
    return 'FavoriteState(status: $status, currentUser: $currentUser, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoriteState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, currentUser,
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoriteStateCopyWith<_$_FavoriteState> get copyWith =>
      __$$_FavoriteStateCopyWithImpl<_$_FavoriteState>(this, _$identity);
}

abstract class _FavoriteState implements FavoriteState {
  const factory _FavoriteState(
      {required final BlocStatus status,
      final CurrentUser? currentUser,
      final Object? error}) = _$_FavoriteState;

  @override
  BlocStatus get status;
  @override
  CurrentUser? get currentUser;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$_FavoriteStateCopyWith<_$_FavoriteState> get copyWith =>
      throw _privateConstructorUsedError;
}
