// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() receiveNotification,
    required TResult Function() updateNotificationToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? receiveNotification,
    TResult? Function()? updateNotificationToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? receiveNotification,
    TResult Function()? updateNotificationToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReceiveNotification value) receiveNotification,
    required TResult Function(_UpdateNotificationToken value)
        updateNotificationToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReceiveNotification value)? receiveNotification,
    TResult? Function(_UpdateNotificationToken value)? updateNotificationToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReceiveNotification value)? receiveNotification,
    TResult Function(_UpdateNotificationToken value)? updateNotificationToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsEventCopyWith<$Res> {
  factory $NotificationsEventCopyWith(
          NotificationsEvent value, $Res Function(NotificationsEvent) then) =
      _$NotificationsEventCopyWithImpl<$Res, NotificationsEvent>;
}

/// @nodoc
class _$NotificationsEventCopyWithImpl<$Res, $Val extends NotificationsEvent>
    implements $NotificationsEventCopyWith<$Res> {
  _$NotificationsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ReceiveNotificationCopyWith<$Res> {
  factory _$$_ReceiveNotificationCopyWith(_$_ReceiveNotification value,
          $Res Function(_$_ReceiveNotification) then) =
      __$$_ReceiveNotificationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReceiveNotificationCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res, _$_ReceiveNotification>
    implements _$$_ReceiveNotificationCopyWith<$Res> {
  __$$_ReceiveNotificationCopyWithImpl(_$_ReceiveNotification _value,
      $Res Function(_$_ReceiveNotification) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ReceiveNotification implements _ReceiveNotification {
  const _$_ReceiveNotification();

  @override
  String toString() {
    return 'NotificationsEvent.receiveNotification()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ReceiveNotification);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() receiveNotification,
    required TResult Function() updateNotificationToken,
  }) {
    return receiveNotification();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? receiveNotification,
    TResult? Function()? updateNotificationToken,
  }) {
    return receiveNotification?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? receiveNotification,
    TResult Function()? updateNotificationToken,
    required TResult orElse(),
  }) {
    if (receiveNotification != null) {
      return receiveNotification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReceiveNotification value) receiveNotification,
    required TResult Function(_UpdateNotificationToken value)
        updateNotificationToken,
  }) {
    return receiveNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReceiveNotification value)? receiveNotification,
    TResult? Function(_UpdateNotificationToken value)? updateNotificationToken,
  }) {
    return receiveNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReceiveNotification value)? receiveNotification,
    TResult Function(_UpdateNotificationToken value)? updateNotificationToken,
    required TResult orElse(),
  }) {
    if (receiveNotification != null) {
      return receiveNotification(this);
    }
    return orElse();
  }
}

abstract class _ReceiveNotification implements NotificationsEvent {
  const factory _ReceiveNotification() = _$_ReceiveNotification;
}

/// @nodoc
abstract class _$$_UpdateNotificationTokenCopyWith<$Res> {
  factory _$$_UpdateNotificationTokenCopyWith(_$_UpdateNotificationToken value,
          $Res Function(_$_UpdateNotificationToken) then) =
      __$$_UpdateNotificationTokenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UpdateNotificationTokenCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res, _$_UpdateNotificationToken>
    implements _$$_UpdateNotificationTokenCopyWith<$Res> {
  __$$_UpdateNotificationTokenCopyWithImpl(_$_UpdateNotificationToken _value,
      $Res Function(_$_UpdateNotificationToken) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UpdateNotificationToken implements _UpdateNotificationToken {
  const _$_UpdateNotificationToken();

  @override
  String toString() {
    return 'NotificationsEvent.updateNotificationToken()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateNotificationToken);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() receiveNotification,
    required TResult Function() updateNotificationToken,
  }) {
    return updateNotificationToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? receiveNotification,
    TResult? Function()? updateNotificationToken,
  }) {
    return updateNotificationToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? receiveNotification,
    TResult Function()? updateNotificationToken,
    required TResult orElse(),
  }) {
    if (updateNotificationToken != null) {
      return updateNotificationToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReceiveNotification value) receiveNotification,
    required TResult Function(_UpdateNotificationToken value)
        updateNotificationToken,
  }) {
    return updateNotificationToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReceiveNotification value)? receiveNotification,
    TResult? Function(_UpdateNotificationToken value)? updateNotificationToken,
  }) {
    return updateNotificationToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReceiveNotification value)? receiveNotification,
    TResult Function(_UpdateNotificationToken value)? updateNotificationToken,
    required TResult orElse(),
  }) {
    if (updateNotificationToken != null) {
      return updateNotificationToken(this);
    }
    return orElse();
  }
}

abstract class _UpdateNotificationToken implements NotificationsEvent {
  const factory _UpdateNotificationToken() = _$_UpdateNotificationToken;
}

/// @nodoc
mixin _$NotificationsState {
  BlocStatus get status => throw _privateConstructorUsedError;
  RemoteMessage? get notification => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationsStateCopyWith<NotificationsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsStateCopyWith<$Res> {
  factory $NotificationsStateCopyWith(
          NotificationsState value, $Res Function(NotificationsState) then) =
      _$NotificationsStateCopyWithImpl<$Res, NotificationsState>;
  @useResult
  $Res call({BlocStatus status, RemoteMessage? notification, Object? error});
}

/// @nodoc
class _$NotificationsStateCopyWithImpl<$Res, $Val extends NotificationsState>
    implements $NotificationsStateCopyWith<$Res> {
  _$NotificationsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? notification = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      notification: freezed == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as RemoteMessage?,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotificationsStateCopyWith<$Res>
    implements $NotificationsStateCopyWith<$Res> {
  factory _$$_NotificationsStateCopyWith(_$_NotificationsState value,
          $Res Function(_$_NotificationsState) then) =
      __$$_NotificationsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlocStatus status, RemoteMessage? notification, Object? error});
}

/// @nodoc
class __$$_NotificationsStateCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res, _$_NotificationsState>
    implements _$$_NotificationsStateCopyWith<$Res> {
  __$$_NotificationsStateCopyWithImpl(
      _$_NotificationsState _value, $Res Function(_$_NotificationsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? notification = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_NotificationsState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      notification: freezed == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as RemoteMessage?,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_NotificationsState implements _NotificationsState {
  const _$_NotificationsState(
      {required this.status, this.notification, this.error});

  @override
  final BlocStatus status;
  @override
  final RemoteMessage? notification;
  @override
  final Object? error;

  @override
  String toString() {
    return 'NotificationsState(status: $status, notification: $notification, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationsState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.notification, notification) ||
                other.notification == notification) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, notification,
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationsStateCopyWith<_$_NotificationsState> get copyWith =>
      __$$_NotificationsStateCopyWithImpl<_$_NotificationsState>(
          this, _$identity);
}

abstract class _NotificationsState implements NotificationsState {
  const factory _NotificationsState(
      {required final BlocStatus status,
      final RemoteMessage? notification,
      final Object? error}) = _$_NotificationsState;

  @override
  BlocStatus get status;
  @override
  RemoteMessage? get notification;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationsStateCopyWith<_$_NotificationsState> get copyWith =>
      throw _privateConstructorUsedError;
}
