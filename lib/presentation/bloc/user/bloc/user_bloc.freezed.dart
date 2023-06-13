// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(PaymentMethod card, bool saveCard) addPaymentCard,
    required TResult Function(PaymentMethod card) deletePaymentCard,
    required TResult Function(Session session) bookSession,
    required TResult Function() getUserStream,
    required TResult Function(String firstName) changeFirstName,
    required TResult Function(String lastName) changeLastName,
    required TResult Function(String dob) changeDob,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentUser,
    TResult? Function(PaymentMethod card, bool saveCard)? addPaymentCard,
    TResult? Function(PaymentMethod card)? deletePaymentCard,
    TResult? Function(Session session)? bookSession,
    TResult? Function()? getUserStream,
    TResult? Function(String firstName)? changeFirstName,
    TResult? Function(String lastName)? changeLastName,
    TResult? Function(String dob)? changeDob,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(PaymentMethod card, bool saveCard)? addPaymentCard,
    TResult Function(PaymentMethod card)? deletePaymentCard,
    TResult Function(Session session)? bookSession,
    TResult Function()? getUserStream,
    TResult Function(String firstName)? changeFirstName,
    TResult Function(String lastName)? changeLastName,
    TResult Function(String dob)? changeDob,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentUser value) getCurrentUser,
    required TResult Function(_AddPaymentCard value) addPaymentCard,
    required TResult Function(_DeletePaymentCard value) deletePaymentCard,
    required TResult Function(_BookSession value) bookSession,
    required TResult Function(_GetUserStream value) getUserStream,
    required TResult Function(_ChangeFirstName value) changeFirstName,
    required TResult Function(_ChangeLastName value) changeLastName,
    required TResult Function(_ChangeDob value) changeDob,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentUser value)? getCurrentUser,
    TResult? Function(_AddPaymentCard value)? addPaymentCard,
    TResult? Function(_DeletePaymentCard value)? deletePaymentCard,
    TResult? Function(_BookSession value)? bookSession,
    TResult? Function(_GetUserStream value)? getUserStream,
    TResult? Function(_ChangeFirstName value)? changeFirstName,
    TResult? Function(_ChangeLastName value)? changeLastName,
    TResult? Function(_ChangeDob value)? changeDob,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    TResult Function(_AddPaymentCard value)? addPaymentCard,
    TResult Function(_DeletePaymentCard value)? deletePaymentCard,
    TResult Function(_BookSession value)? bookSession,
    TResult Function(_GetUserStream value)? getUserStream,
    TResult Function(_ChangeFirstName value)? changeFirstName,
    TResult Function(_ChangeLastName value)? changeLastName,
    TResult Function(_ChangeDob value)? changeDob,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetCurrentUserCopyWith<$Res> {
  factory _$$_GetCurrentUserCopyWith(
          _$_GetCurrentUser value, $Res Function(_$_GetCurrentUser) then) =
      __$$_GetCurrentUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetCurrentUserCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_GetCurrentUser>
    implements _$$_GetCurrentUserCopyWith<$Res> {
  __$$_GetCurrentUserCopyWithImpl(
      _$_GetCurrentUser _value, $Res Function(_$_GetCurrentUser) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetCurrentUser implements _GetCurrentUser {
  const _$_GetCurrentUser();

  @override
  String toString() {
    return 'UserEvent.getCurrentUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetCurrentUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(PaymentMethod card, bool saveCard) addPaymentCard,
    required TResult Function(PaymentMethod card) deletePaymentCard,
    required TResult Function(Session session) bookSession,
    required TResult Function() getUserStream,
    required TResult Function(String firstName) changeFirstName,
    required TResult Function(String lastName) changeLastName,
    required TResult Function(String dob) changeDob,
  }) {
    return getCurrentUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentUser,
    TResult? Function(PaymentMethod card, bool saveCard)? addPaymentCard,
    TResult? Function(PaymentMethod card)? deletePaymentCard,
    TResult? Function(Session session)? bookSession,
    TResult? Function()? getUserStream,
    TResult? Function(String firstName)? changeFirstName,
    TResult? Function(String lastName)? changeLastName,
    TResult? Function(String dob)? changeDob,
  }) {
    return getCurrentUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(PaymentMethod card, bool saveCard)? addPaymentCard,
    TResult Function(PaymentMethod card)? deletePaymentCard,
    TResult Function(Session session)? bookSession,
    TResult Function()? getUserStream,
    TResult Function(String firstName)? changeFirstName,
    TResult Function(String lastName)? changeLastName,
    TResult Function(String dob)? changeDob,
    required TResult orElse(),
  }) {
    if (getCurrentUser != null) {
      return getCurrentUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentUser value) getCurrentUser,
    required TResult Function(_AddPaymentCard value) addPaymentCard,
    required TResult Function(_DeletePaymentCard value) deletePaymentCard,
    required TResult Function(_BookSession value) bookSession,
    required TResult Function(_GetUserStream value) getUserStream,
    required TResult Function(_ChangeFirstName value) changeFirstName,
    required TResult Function(_ChangeLastName value) changeLastName,
    required TResult Function(_ChangeDob value) changeDob,
  }) {
    return getCurrentUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentUser value)? getCurrentUser,
    TResult? Function(_AddPaymentCard value)? addPaymentCard,
    TResult? Function(_DeletePaymentCard value)? deletePaymentCard,
    TResult? Function(_BookSession value)? bookSession,
    TResult? Function(_GetUserStream value)? getUserStream,
    TResult? Function(_ChangeFirstName value)? changeFirstName,
    TResult? Function(_ChangeLastName value)? changeLastName,
    TResult? Function(_ChangeDob value)? changeDob,
  }) {
    return getCurrentUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    TResult Function(_AddPaymentCard value)? addPaymentCard,
    TResult Function(_DeletePaymentCard value)? deletePaymentCard,
    TResult Function(_BookSession value)? bookSession,
    TResult Function(_GetUserStream value)? getUserStream,
    TResult Function(_ChangeFirstName value)? changeFirstName,
    TResult Function(_ChangeLastName value)? changeLastName,
    TResult Function(_ChangeDob value)? changeDob,
    required TResult orElse(),
  }) {
    if (getCurrentUser != null) {
      return getCurrentUser(this);
    }
    return orElse();
  }
}

abstract class _GetCurrentUser implements UserEvent {
  const factory _GetCurrentUser() = _$_GetCurrentUser;
}

/// @nodoc
abstract class _$$_AddPaymentCardCopyWith<$Res> {
  factory _$$_AddPaymentCardCopyWith(
          _$_AddPaymentCard value, $Res Function(_$_AddPaymentCard) then) =
      __$$_AddPaymentCardCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentMethod card, bool saveCard});
}

/// @nodoc
class __$$_AddPaymentCardCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_AddPaymentCard>
    implements _$$_AddPaymentCardCopyWith<$Res> {
  __$$_AddPaymentCardCopyWithImpl(
      _$_AddPaymentCard _value, $Res Function(_$_AddPaymentCard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? card = null,
    Object? saveCard = null,
  }) {
    return _then(_$_AddPaymentCard(
      null == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      null == saveCard
          ? _value.saveCard
          : saveCard // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AddPaymentCard implements _AddPaymentCard {
  const _$_AddPaymentCard(this.card, this.saveCard);

  @override
  final PaymentMethod card;
  @override
  final bool saveCard;

  @override
  String toString() {
    return 'UserEvent.addPaymentCard(card: $card, saveCard: $saveCard)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddPaymentCard &&
            (identical(other.card, card) || other.card == card) &&
            (identical(other.saveCard, saveCard) ||
                other.saveCard == saveCard));
  }

  @override
  int get hashCode => Object.hash(runtimeType, card, saveCard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddPaymentCardCopyWith<_$_AddPaymentCard> get copyWith =>
      __$$_AddPaymentCardCopyWithImpl<_$_AddPaymentCard>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(PaymentMethod card, bool saveCard) addPaymentCard,
    required TResult Function(PaymentMethod card) deletePaymentCard,
    required TResult Function(Session session) bookSession,
    required TResult Function() getUserStream,
    required TResult Function(String firstName) changeFirstName,
    required TResult Function(String lastName) changeLastName,
    required TResult Function(String dob) changeDob,
  }) {
    return addPaymentCard(card, saveCard);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentUser,
    TResult? Function(PaymentMethod card, bool saveCard)? addPaymentCard,
    TResult? Function(PaymentMethod card)? deletePaymentCard,
    TResult? Function(Session session)? bookSession,
    TResult? Function()? getUserStream,
    TResult? Function(String firstName)? changeFirstName,
    TResult? Function(String lastName)? changeLastName,
    TResult? Function(String dob)? changeDob,
  }) {
    return addPaymentCard?.call(card, saveCard);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(PaymentMethod card, bool saveCard)? addPaymentCard,
    TResult Function(PaymentMethod card)? deletePaymentCard,
    TResult Function(Session session)? bookSession,
    TResult Function()? getUserStream,
    TResult Function(String firstName)? changeFirstName,
    TResult Function(String lastName)? changeLastName,
    TResult Function(String dob)? changeDob,
    required TResult orElse(),
  }) {
    if (addPaymentCard != null) {
      return addPaymentCard(card, saveCard);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentUser value) getCurrentUser,
    required TResult Function(_AddPaymentCard value) addPaymentCard,
    required TResult Function(_DeletePaymentCard value) deletePaymentCard,
    required TResult Function(_BookSession value) bookSession,
    required TResult Function(_GetUserStream value) getUserStream,
    required TResult Function(_ChangeFirstName value) changeFirstName,
    required TResult Function(_ChangeLastName value) changeLastName,
    required TResult Function(_ChangeDob value) changeDob,
  }) {
    return addPaymentCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentUser value)? getCurrentUser,
    TResult? Function(_AddPaymentCard value)? addPaymentCard,
    TResult? Function(_DeletePaymentCard value)? deletePaymentCard,
    TResult? Function(_BookSession value)? bookSession,
    TResult? Function(_GetUserStream value)? getUserStream,
    TResult? Function(_ChangeFirstName value)? changeFirstName,
    TResult? Function(_ChangeLastName value)? changeLastName,
    TResult? Function(_ChangeDob value)? changeDob,
  }) {
    return addPaymentCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    TResult Function(_AddPaymentCard value)? addPaymentCard,
    TResult Function(_DeletePaymentCard value)? deletePaymentCard,
    TResult Function(_BookSession value)? bookSession,
    TResult Function(_GetUserStream value)? getUserStream,
    TResult Function(_ChangeFirstName value)? changeFirstName,
    TResult Function(_ChangeLastName value)? changeLastName,
    TResult Function(_ChangeDob value)? changeDob,
    required TResult orElse(),
  }) {
    if (addPaymentCard != null) {
      return addPaymentCard(this);
    }
    return orElse();
  }
}

abstract class _AddPaymentCard implements UserEvent {
  const factory _AddPaymentCard(final PaymentMethod card, final bool saveCard) =
      _$_AddPaymentCard;

  PaymentMethod get card;
  bool get saveCard;
  @JsonKey(ignore: true)
  _$$_AddPaymentCardCopyWith<_$_AddPaymentCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeletePaymentCardCopyWith<$Res> {
  factory _$$_DeletePaymentCardCopyWith(_$_DeletePaymentCard value,
          $Res Function(_$_DeletePaymentCard) then) =
      __$$_DeletePaymentCardCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentMethod card});
}

/// @nodoc
class __$$_DeletePaymentCardCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_DeletePaymentCard>
    implements _$$_DeletePaymentCardCopyWith<$Res> {
  __$$_DeletePaymentCardCopyWithImpl(
      _$_DeletePaymentCard _value, $Res Function(_$_DeletePaymentCard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? card = null,
  }) {
    return _then(_$_DeletePaymentCard(
      null == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
    ));
  }
}

/// @nodoc

class _$_DeletePaymentCard implements _DeletePaymentCard {
  const _$_DeletePaymentCard(this.card);

  @override
  final PaymentMethod card;

  @override
  String toString() {
    return 'UserEvent.deletePaymentCard(card: $card)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeletePaymentCard &&
            (identical(other.card, card) || other.card == card));
  }

  @override
  int get hashCode => Object.hash(runtimeType, card);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeletePaymentCardCopyWith<_$_DeletePaymentCard> get copyWith =>
      __$$_DeletePaymentCardCopyWithImpl<_$_DeletePaymentCard>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(PaymentMethod card, bool saveCard) addPaymentCard,
    required TResult Function(PaymentMethod card) deletePaymentCard,
    required TResult Function(Session session) bookSession,
    required TResult Function() getUserStream,
    required TResult Function(String firstName) changeFirstName,
    required TResult Function(String lastName) changeLastName,
    required TResult Function(String dob) changeDob,
  }) {
    return deletePaymentCard(card);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentUser,
    TResult? Function(PaymentMethod card, bool saveCard)? addPaymentCard,
    TResult? Function(PaymentMethod card)? deletePaymentCard,
    TResult? Function(Session session)? bookSession,
    TResult? Function()? getUserStream,
    TResult? Function(String firstName)? changeFirstName,
    TResult? Function(String lastName)? changeLastName,
    TResult? Function(String dob)? changeDob,
  }) {
    return deletePaymentCard?.call(card);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(PaymentMethod card, bool saveCard)? addPaymentCard,
    TResult Function(PaymentMethod card)? deletePaymentCard,
    TResult Function(Session session)? bookSession,
    TResult Function()? getUserStream,
    TResult Function(String firstName)? changeFirstName,
    TResult Function(String lastName)? changeLastName,
    TResult Function(String dob)? changeDob,
    required TResult orElse(),
  }) {
    if (deletePaymentCard != null) {
      return deletePaymentCard(card);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentUser value) getCurrentUser,
    required TResult Function(_AddPaymentCard value) addPaymentCard,
    required TResult Function(_DeletePaymentCard value) deletePaymentCard,
    required TResult Function(_BookSession value) bookSession,
    required TResult Function(_GetUserStream value) getUserStream,
    required TResult Function(_ChangeFirstName value) changeFirstName,
    required TResult Function(_ChangeLastName value) changeLastName,
    required TResult Function(_ChangeDob value) changeDob,
  }) {
    return deletePaymentCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentUser value)? getCurrentUser,
    TResult? Function(_AddPaymentCard value)? addPaymentCard,
    TResult? Function(_DeletePaymentCard value)? deletePaymentCard,
    TResult? Function(_BookSession value)? bookSession,
    TResult? Function(_GetUserStream value)? getUserStream,
    TResult? Function(_ChangeFirstName value)? changeFirstName,
    TResult? Function(_ChangeLastName value)? changeLastName,
    TResult? Function(_ChangeDob value)? changeDob,
  }) {
    return deletePaymentCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    TResult Function(_AddPaymentCard value)? addPaymentCard,
    TResult Function(_DeletePaymentCard value)? deletePaymentCard,
    TResult Function(_BookSession value)? bookSession,
    TResult Function(_GetUserStream value)? getUserStream,
    TResult Function(_ChangeFirstName value)? changeFirstName,
    TResult Function(_ChangeLastName value)? changeLastName,
    TResult Function(_ChangeDob value)? changeDob,
    required TResult orElse(),
  }) {
    if (deletePaymentCard != null) {
      return deletePaymentCard(this);
    }
    return orElse();
  }
}

abstract class _DeletePaymentCard implements UserEvent {
  const factory _DeletePaymentCard(final PaymentMethod card) =
      _$_DeletePaymentCard;

  PaymentMethod get card;
  @JsonKey(ignore: true)
  _$$_DeletePaymentCardCopyWith<_$_DeletePaymentCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BookSessionCopyWith<$Res> {
  factory _$$_BookSessionCopyWith(
          _$_BookSession value, $Res Function(_$_BookSession) then) =
      __$$_BookSessionCopyWithImpl<$Res>;
  @useResult
  $Res call({Session session});
}

/// @nodoc
class __$$_BookSessionCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_BookSession>
    implements _$$_BookSessionCopyWith<$Res> {
  __$$_BookSessionCopyWithImpl(
      _$_BookSession _value, $Res Function(_$_BookSession) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? session = null,
  }) {
    return _then(_$_BookSession(
      null == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as Session,
    ));
  }
}

/// @nodoc

class _$_BookSession implements _BookSession {
  const _$_BookSession(this.session);

  @override
  final Session session;

  @override
  String toString() {
    return 'UserEvent.bookSession(session: $session)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookSession &&
            (identical(other.session, session) || other.session == session));
  }

  @override
  int get hashCode => Object.hash(runtimeType, session);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookSessionCopyWith<_$_BookSession> get copyWith =>
      __$$_BookSessionCopyWithImpl<_$_BookSession>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(PaymentMethod card, bool saveCard) addPaymentCard,
    required TResult Function(PaymentMethod card) deletePaymentCard,
    required TResult Function(Session session) bookSession,
    required TResult Function() getUserStream,
    required TResult Function(String firstName) changeFirstName,
    required TResult Function(String lastName) changeLastName,
    required TResult Function(String dob) changeDob,
  }) {
    return bookSession(session);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentUser,
    TResult? Function(PaymentMethod card, bool saveCard)? addPaymentCard,
    TResult? Function(PaymentMethod card)? deletePaymentCard,
    TResult? Function(Session session)? bookSession,
    TResult? Function()? getUserStream,
    TResult? Function(String firstName)? changeFirstName,
    TResult? Function(String lastName)? changeLastName,
    TResult? Function(String dob)? changeDob,
  }) {
    return bookSession?.call(session);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(PaymentMethod card, bool saveCard)? addPaymentCard,
    TResult Function(PaymentMethod card)? deletePaymentCard,
    TResult Function(Session session)? bookSession,
    TResult Function()? getUserStream,
    TResult Function(String firstName)? changeFirstName,
    TResult Function(String lastName)? changeLastName,
    TResult Function(String dob)? changeDob,
    required TResult orElse(),
  }) {
    if (bookSession != null) {
      return bookSession(session);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentUser value) getCurrentUser,
    required TResult Function(_AddPaymentCard value) addPaymentCard,
    required TResult Function(_DeletePaymentCard value) deletePaymentCard,
    required TResult Function(_BookSession value) bookSession,
    required TResult Function(_GetUserStream value) getUserStream,
    required TResult Function(_ChangeFirstName value) changeFirstName,
    required TResult Function(_ChangeLastName value) changeLastName,
    required TResult Function(_ChangeDob value) changeDob,
  }) {
    return bookSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentUser value)? getCurrentUser,
    TResult? Function(_AddPaymentCard value)? addPaymentCard,
    TResult? Function(_DeletePaymentCard value)? deletePaymentCard,
    TResult? Function(_BookSession value)? bookSession,
    TResult? Function(_GetUserStream value)? getUserStream,
    TResult? Function(_ChangeFirstName value)? changeFirstName,
    TResult? Function(_ChangeLastName value)? changeLastName,
    TResult? Function(_ChangeDob value)? changeDob,
  }) {
    return bookSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    TResult Function(_AddPaymentCard value)? addPaymentCard,
    TResult Function(_DeletePaymentCard value)? deletePaymentCard,
    TResult Function(_BookSession value)? bookSession,
    TResult Function(_GetUserStream value)? getUserStream,
    TResult Function(_ChangeFirstName value)? changeFirstName,
    TResult Function(_ChangeLastName value)? changeLastName,
    TResult Function(_ChangeDob value)? changeDob,
    required TResult orElse(),
  }) {
    if (bookSession != null) {
      return bookSession(this);
    }
    return orElse();
  }
}

abstract class _BookSession implements UserEvent {
  const factory _BookSession(final Session session) = _$_BookSession;

  Session get session;
  @JsonKey(ignore: true)
  _$$_BookSessionCopyWith<_$_BookSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetUserStreamCopyWith<$Res> {
  factory _$$_GetUserStreamCopyWith(
          _$_GetUserStream value, $Res Function(_$_GetUserStream) then) =
      __$$_GetUserStreamCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetUserStreamCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_GetUserStream>
    implements _$$_GetUserStreamCopyWith<$Res> {
  __$$_GetUserStreamCopyWithImpl(
      _$_GetUserStream _value, $Res Function(_$_GetUserStream) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetUserStream implements _GetUserStream {
  const _$_GetUserStream();

  @override
  String toString() {
    return 'UserEvent.getUserStream()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetUserStream);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(PaymentMethod card, bool saveCard) addPaymentCard,
    required TResult Function(PaymentMethod card) deletePaymentCard,
    required TResult Function(Session session) bookSession,
    required TResult Function() getUserStream,
    required TResult Function(String firstName) changeFirstName,
    required TResult Function(String lastName) changeLastName,
    required TResult Function(String dob) changeDob,
  }) {
    return getUserStream();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentUser,
    TResult? Function(PaymentMethod card, bool saveCard)? addPaymentCard,
    TResult? Function(PaymentMethod card)? deletePaymentCard,
    TResult? Function(Session session)? bookSession,
    TResult? Function()? getUserStream,
    TResult? Function(String firstName)? changeFirstName,
    TResult? Function(String lastName)? changeLastName,
    TResult? Function(String dob)? changeDob,
  }) {
    return getUserStream?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(PaymentMethod card, bool saveCard)? addPaymentCard,
    TResult Function(PaymentMethod card)? deletePaymentCard,
    TResult Function(Session session)? bookSession,
    TResult Function()? getUserStream,
    TResult Function(String firstName)? changeFirstName,
    TResult Function(String lastName)? changeLastName,
    TResult Function(String dob)? changeDob,
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
    required TResult Function(_GetCurrentUser value) getCurrentUser,
    required TResult Function(_AddPaymentCard value) addPaymentCard,
    required TResult Function(_DeletePaymentCard value) deletePaymentCard,
    required TResult Function(_BookSession value) bookSession,
    required TResult Function(_GetUserStream value) getUserStream,
    required TResult Function(_ChangeFirstName value) changeFirstName,
    required TResult Function(_ChangeLastName value) changeLastName,
    required TResult Function(_ChangeDob value) changeDob,
  }) {
    return getUserStream(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentUser value)? getCurrentUser,
    TResult? Function(_AddPaymentCard value)? addPaymentCard,
    TResult? Function(_DeletePaymentCard value)? deletePaymentCard,
    TResult? Function(_BookSession value)? bookSession,
    TResult? Function(_GetUserStream value)? getUserStream,
    TResult? Function(_ChangeFirstName value)? changeFirstName,
    TResult? Function(_ChangeLastName value)? changeLastName,
    TResult? Function(_ChangeDob value)? changeDob,
  }) {
    return getUserStream?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    TResult Function(_AddPaymentCard value)? addPaymentCard,
    TResult Function(_DeletePaymentCard value)? deletePaymentCard,
    TResult Function(_BookSession value)? bookSession,
    TResult Function(_GetUserStream value)? getUserStream,
    TResult Function(_ChangeFirstName value)? changeFirstName,
    TResult Function(_ChangeLastName value)? changeLastName,
    TResult Function(_ChangeDob value)? changeDob,
    required TResult orElse(),
  }) {
    if (getUserStream != null) {
      return getUserStream(this);
    }
    return orElse();
  }
}

abstract class _GetUserStream implements UserEvent {
  const factory _GetUserStream() = _$_GetUserStream;
}

/// @nodoc
abstract class _$$_ChangeFirstNameCopyWith<$Res> {
  factory _$$_ChangeFirstNameCopyWith(
          _$_ChangeFirstName value, $Res Function(_$_ChangeFirstName) then) =
      __$$_ChangeFirstNameCopyWithImpl<$Res>;
  @useResult
  $Res call({String firstName});
}

/// @nodoc
class __$$_ChangeFirstNameCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_ChangeFirstName>
    implements _$$_ChangeFirstNameCopyWith<$Res> {
  __$$_ChangeFirstNameCopyWithImpl(
      _$_ChangeFirstName _value, $Res Function(_$_ChangeFirstName) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
  }) {
    return _then(_$_ChangeFirstName(
      null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeFirstName implements _ChangeFirstName {
  const _$_ChangeFirstName(this.firstName);

  @override
  final String firstName;

  @override
  String toString() {
    return 'UserEvent.changeFirstName(firstName: $firstName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeFirstName &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeFirstNameCopyWith<_$_ChangeFirstName> get copyWith =>
      __$$_ChangeFirstNameCopyWithImpl<_$_ChangeFirstName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(PaymentMethod card, bool saveCard) addPaymentCard,
    required TResult Function(PaymentMethod card) deletePaymentCard,
    required TResult Function(Session session) bookSession,
    required TResult Function() getUserStream,
    required TResult Function(String firstName) changeFirstName,
    required TResult Function(String lastName) changeLastName,
    required TResult Function(String dob) changeDob,
  }) {
    return changeFirstName(firstName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentUser,
    TResult? Function(PaymentMethod card, bool saveCard)? addPaymentCard,
    TResult? Function(PaymentMethod card)? deletePaymentCard,
    TResult? Function(Session session)? bookSession,
    TResult? Function()? getUserStream,
    TResult? Function(String firstName)? changeFirstName,
    TResult? Function(String lastName)? changeLastName,
    TResult? Function(String dob)? changeDob,
  }) {
    return changeFirstName?.call(firstName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(PaymentMethod card, bool saveCard)? addPaymentCard,
    TResult Function(PaymentMethod card)? deletePaymentCard,
    TResult Function(Session session)? bookSession,
    TResult Function()? getUserStream,
    TResult Function(String firstName)? changeFirstName,
    TResult Function(String lastName)? changeLastName,
    TResult Function(String dob)? changeDob,
    required TResult orElse(),
  }) {
    if (changeFirstName != null) {
      return changeFirstName(firstName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentUser value) getCurrentUser,
    required TResult Function(_AddPaymentCard value) addPaymentCard,
    required TResult Function(_DeletePaymentCard value) deletePaymentCard,
    required TResult Function(_BookSession value) bookSession,
    required TResult Function(_GetUserStream value) getUserStream,
    required TResult Function(_ChangeFirstName value) changeFirstName,
    required TResult Function(_ChangeLastName value) changeLastName,
    required TResult Function(_ChangeDob value) changeDob,
  }) {
    return changeFirstName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentUser value)? getCurrentUser,
    TResult? Function(_AddPaymentCard value)? addPaymentCard,
    TResult? Function(_DeletePaymentCard value)? deletePaymentCard,
    TResult? Function(_BookSession value)? bookSession,
    TResult? Function(_GetUserStream value)? getUserStream,
    TResult? Function(_ChangeFirstName value)? changeFirstName,
    TResult? Function(_ChangeLastName value)? changeLastName,
    TResult? Function(_ChangeDob value)? changeDob,
  }) {
    return changeFirstName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    TResult Function(_AddPaymentCard value)? addPaymentCard,
    TResult Function(_DeletePaymentCard value)? deletePaymentCard,
    TResult Function(_BookSession value)? bookSession,
    TResult Function(_GetUserStream value)? getUserStream,
    TResult Function(_ChangeFirstName value)? changeFirstName,
    TResult Function(_ChangeLastName value)? changeLastName,
    TResult Function(_ChangeDob value)? changeDob,
    required TResult orElse(),
  }) {
    if (changeFirstName != null) {
      return changeFirstName(this);
    }
    return orElse();
  }
}

abstract class _ChangeFirstName implements UserEvent {
  const factory _ChangeFirstName(final String firstName) = _$_ChangeFirstName;

  String get firstName;
  @JsonKey(ignore: true)
  _$$_ChangeFirstNameCopyWith<_$_ChangeFirstName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeLastNameCopyWith<$Res> {
  factory _$$_ChangeLastNameCopyWith(
          _$_ChangeLastName value, $Res Function(_$_ChangeLastName) then) =
      __$$_ChangeLastNameCopyWithImpl<$Res>;
  @useResult
  $Res call({String lastName});
}

/// @nodoc
class __$$_ChangeLastNameCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_ChangeLastName>
    implements _$$_ChangeLastNameCopyWith<$Res> {
  __$$_ChangeLastNameCopyWithImpl(
      _$_ChangeLastName _value, $Res Function(_$_ChangeLastName) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastName = null,
  }) {
    return _then(_$_ChangeLastName(
      null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeLastName implements _ChangeLastName {
  const _$_ChangeLastName(this.lastName);

  @override
  final String lastName;

  @override
  String toString() {
    return 'UserEvent.changeLastName(lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeLastName &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lastName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeLastNameCopyWith<_$_ChangeLastName> get copyWith =>
      __$$_ChangeLastNameCopyWithImpl<_$_ChangeLastName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(PaymentMethod card, bool saveCard) addPaymentCard,
    required TResult Function(PaymentMethod card) deletePaymentCard,
    required TResult Function(Session session) bookSession,
    required TResult Function() getUserStream,
    required TResult Function(String firstName) changeFirstName,
    required TResult Function(String lastName) changeLastName,
    required TResult Function(String dob) changeDob,
  }) {
    return changeLastName(lastName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentUser,
    TResult? Function(PaymentMethod card, bool saveCard)? addPaymentCard,
    TResult? Function(PaymentMethod card)? deletePaymentCard,
    TResult? Function(Session session)? bookSession,
    TResult? Function()? getUserStream,
    TResult? Function(String firstName)? changeFirstName,
    TResult? Function(String lastName)? changeLastName,
    TResult? Function(String dob)? changeDob,
  }) {
    return changeLastName?.call(lastName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(PaymentMethod card, bool saveCard)? addPaymentCard,
    TResult Function(PaymentMethod card)? deletePaymentCard,
    TResult Function(Session session)? bookSession,
    TResult Function()? getUserStream,
    TResult Function(String firstName)? changeFirstName,
    TResult Function(String lastName)? changeLastName,
    TResult Function(String dob)? changeDob,
    required TResult orElse(),
  }) {
    if (changeLastName != null) {
      return changeLastName(lastName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentUser value) getCurrentUser,
    required TResult Function(_AddPaymentCard value) addPaymentCard,
    required TResult Function(_DeletePaymentCard value) deletePaymentCard,
    required TResult Function(_BookSession value) bookSession,
    required TResult Function(_GetUserStream value) getUserStream,
    required TResult Function(_ChangeFirstName value) changeFirstName,
    required TResult Function(_ChangeLastName value) changeLastName,
    required TResult Function(_ChangeDob value) changeDob,
  }) {
    return changeLastName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentUser value)? getCurrentUser,
    TResult? Function(_AddPaymentCard value)? addPaymentCard,
    TResult? Function(_DeletePaymentCard value)? deletePaymentCard,
    TResult? Function(_BookSession value)? bookSession,
    TResult? Function(_GetUserStream value)? getUserStream,
    TResult? Function(_ChangeFirstName value)? changeFirstName,
    TResult? Function(_ChangeLastName value)? changeLastName,
    TResult? Function(_ChangeDob value)? changeDob,
  }) {
    return changeLastName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    TResult Function(_AddPaymentCard value)? addPaymentCard,
    TResult Function(_DeletePaymentCard value)? deletePaymentCard,
    TResult Function(_BookSession value)? bookSession,
    TResult Function(_GetUserStream value)? getUserStream,
    TResult Function(_ChangeFirstName value)? changeFirstName,
    TResult Function(_ChangeLastName value)? changeLastName,
    TResult Function(_ChangeDob value)? changeDob,
    required TResult orElse(),
  }) {
    if (changeLastName != null) {
      return changeLastName(this);
    }
    return orElse();
  }
}

abstract class _ChangeLastName implements UserEvent {
  const factory _ChangeLastName(final String lastName) = _$_ChangeLastName;

  String get lastName;
  @JsonKey(ignore: true)
  _$$_ChangeLastNameCopyWith<_$_ChangeLastName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeDobCopyWith<$Res> {
  factory _$$_ChangeDobCopyWith(
          _$_ChangeDob value, $Res Function(_$_ChangeDob) then) =
      __$$_ChangeDobCopyWithImpl<$Res>;
  @useResult
  $Res call({String dob});
}

/// @nodoc
class __$$_ChangeDobCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_ChangeDob>
    implements _$$_ChangeDobCopyWith<$Res> {
  __$$_ChangeDobCopyWithImpl(
      _$_ChangeDob _value, $Res Function(_$_ChangeDob) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dob = null,
  }) {
    return _then(_$_ChangeDob(
      null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeDob implements _ChangeDob {
  const _$_ChangeDob(this.dob);

  @override
  final String dob;

  @override
  String toString() {
    return 'UserEvent.changeDob(dob: $dob)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeDob &&
            (identical(other.dob, dob) || other.dob == dob));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dob);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeDobCopyWith<_$_ChangeDob> get copyWith =>
      __$$_ChangeDobCopyWithImpl<_$_ChangeDob>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(PaymentMethod card, bool saveCard) addPaymentCard,
    required TResult Function(PaymentMethod card) deletePaymentCard,
    required TResult Function(Session session) bookSession,
    required TResult Function() getUserStream,
    required TResult Function(String firstName) changeFirstName,
    required TResult Function(String lastName) changeLastName,
    required TResult Function(String dob) changeDob,
  }) {
    return changeDob(dob);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentUser,
    TResult? Function(PaymentMethod card, bool saveCard)? addPaymentCard,
    TResult? Function(PaymentMethod card)? deletePaymentCard,
    TResult? Function(Session session)? bookSession,
    TResult? Function()? getUserStream,
    TResult? Function(String firstName)? changeFirstName,
    TResult? Function(String lastName)? changeLastName,
    TResult? Function(String dob)? changeDob,
  }) {
    return changeDob?.call(dob);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(PaymentMethod card, bool saveCard)? addPaymentCard,
    TResult Function(PaymentMethod card)? deletePaymentCard,
    TResult Function(Session session)? bookSession,
    TResult Function()? getUserStream,
    TResult Function(String firstName)? changeFirstName,
    TResult Function(String lastName)? changeLastName,
    TResult Function(String dob)? changeDob,
    required TResult orElse(),
  }) {
    if (changeDob != null) {
      return changeDob(dob);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentUser value) getCurrentUser,
    required TResult Function(_AddPaymentCard value) addPaymentCard,
    required TResult Function(_DeletePaymentCard value) deletePaymentCard,
    required TResult Function(_BookSession value) bookSession,
    required TResult Function(_GetUserStream value) getUserStream,
    required TResult Function(_ChangeFirstName value) changeFirstName,
    required TResult Function(_ChangeLastName value) changeLastName,
    required TResult Function(_ChangeDob value) changeDob,
  }) {
    return changeDob(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentUser value)? getCurrentUser,
    TResult? Function(_AddPaymentCard value)? addPaymentCard,
    TResult? Function(_DeletePaymentCard value)? deletePaymentCard,
    TResult? Function(_BookSession value)? bookSession,
    TResult? Function(_GetUserStream value)? getUserStream,
    TResult? Function(_ChangeFirstName value)? changeFirstName,
    TResult? Function(_ChangeLastName value)? changeLastName,
    TResult? Function(_ChangeDob value)? changeDob,
  }) {
    return changeDob?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    TResult Function(_AddPaymentCard value)? addPaymentCard,
    TResult Function(_DeletePaymentCard value)? deletePaymentCard,
    TResult Function(_BookSession value)? bookSession,
    TResult Function(_GetUserStream value)? getUserStream,
    TResult Function(_ChangeFirstName value)? changeFirstName,
    TResult Function(_ChangeLastName value)? changeLastName,
    TResult Function(_ChangeDob value)? changeDob,
    required TResult orElse(),
  }) {
    if (changeDob != null) {
      return changeDob(this);
    }
    return orElse();
  }
}

abstract class _ChangeDob implements UserEvent {
  const factory _ChangeDob(final String dob) = _$_ChangeDob;

  String get dob;
  @JsonKey(ignore: true)
  _$$_ChangeDobCopyWith<_$_ChangeDob> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserState {
  BlocStatus get status => throw _privateConstructorUsedError;
  CurrentUser? get currentUser => throw _privateConstructorUsedError;
  List<PaymentMethod>? get paymentCards => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call(
      {BlocStatus status,
      CurrentUser? currentUser,
      List<PaymentMethod>? paymentCards,
      Object? error});
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currentUser = freezed,
    Object? paymentCards = freezed,
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
      paymentCards: freezed == paymentCards
          ? _value.paymentCards
          : paymentCards // ignore: cast_nullable_to_non_nullable
              as List<PaymentMethod>?,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$$_UserStateCopyWith(
          _$_UserState value, $Res Function(_$_UserState) then) =
      __$$_UserStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status,
      CurrentUser? currentUser,
      List<PaymentMethod>? paymentCards,
      Object? error});
}

/// @nodoc
class __$$_UserStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_UserState>
    implements _$$_UserStateCopyWith<$Res> {
  __$$_UserStateCopyWithImpl(
      _$_UserState _value, $Res Function(_$_UserState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currentUser = freezed,
    Object? paymentCards = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_UserState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as CurrentUser?,
      paymentCards: freezed == paymentCards
          ? _value._paymentCards
          : paymentCards // ignore: cast_nullable_to_non_nullable
              as List<PaymentMethod>?,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_UserState implements _UserState {
  const _$_UserState(
      {required this.status,
      this.currentUser,
      final List<PaymentMethod>? paymentCards,
      this.error})
      : _paymentCards = paymentCards;

  @override
  final BlocStatus status;
  @override
  final CurrentUser? currentUser;
  final List<PaymentMethod>? _paymentCards;
  @override
  List<PaymentMethod>? get paymentCards {
    final value = _paymentCards;
    if (value == null) return null;
    if (_paymentCards is EqualUnmodifiableListView) return _paymentCards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Object? error;

  @override
  String toString() {
    return 'UserState(status: $status, currentUser: $currentUser, paymentCards: $paymentCards, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser) &&
            const DeepCollectionEquality()
                .equals(other._paymentCards, _paymentCards) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      currentUser,
      const DeepCollectionEquality().hash(_paymentCards),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserStateCopyWith<_$_UserState> get copyWith =>
      __$$_UserStateCopyWithImpl<_$_UserState>(this, _$identity);
}

abstract class _UserState implements UserState {
  const factory _UserState(
      {required final BlocStatus status,
      final CurrentUser? currentUser,
      final List<PaymentMethod>? paymentCards,
      final Object? error}) = _$_UserState;

  @override
  BlocStatus get status;
  @override
  CurrentUser? get currentUser;
  @override
  List<PaymentMethod>? get paymentCards;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$_UserStateCopyWith<_$_UserState> get copyWith =>
      throw _privateConstructorUsedError;
}
