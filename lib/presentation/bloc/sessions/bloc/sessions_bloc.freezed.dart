// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sessions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SessionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSessions,
    required TResult Function(Session oldSession, Session newSession)
        rescheduleSession,
    required TResult Function(Session session) cancelSession,
    required TResult Function(String doctorId, double rating, String textReview)
        rateDoctor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSessions,
    TResult? Function(Session oldSession, Session newSession)?
        rescheduleSession,
    TResult? Function(Session session)? cancelSession,
    TResult? Function(String doctorId, double rating, String textReview)?
        rateDoctor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSessions,
    TResult Function(Session oldSession, Session newSession)? rescheduleSession,
    TResult Function(Session session)? cancelSession,
    TResult Function(String doctorId, double rating, String textReview)?
        rateDoctor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SessionsEvent value) getSessions,
    required TResult Function(_RescheduleSession value) rescheduleSession,
    required TResult Function(_CancelSession value) cancelSession,
    required TResult Function(_RateDoctor value) rateDoctor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SessionsEvent value)? getSessions,
    TResult? Function(_RescheduleSession value)? rescheduleSession,
    TResult? Function(_CancelSession value)? cancelSession,
    TResult? Function(_RateDoctor value)? rateDoctor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SessionsEvent value)? getSessions,
    TResult Function(_RescheduleSession value)? rescheduleSession,
    TResult Function(_CancelSession value)? cancelSession,
    TResult Function(_RateDoctor value)? rateDoctor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionsEventCopyWith<$Res> {
  factory $SessionsEventCopyWith(
          SessionsEvent value, $Res Function(SessionsEvent) then) =
      _$SessionsEventCopyWithImpl<$Res, SessionsEvent>;
}

/// @nodoc
class _$SessionsEventCopyWithImpl<$Res, $Val extends SessionsEvent>
    implements $SessionsEventCopyWith<$Res> {
  _$SessionsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SessionsEventCopyWith<$Res> {
  factory _$$_SessionsEventCopyWith(
          _$_SessionsEvent value, $Res Function(_$_SessionsEvent) then) =
      __$$_SessionsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SessionsEventCopyWithImpl<$Res>
    extends _$SessionsEventCopyWithImpl<$Res, _$_SessionsEvent>
    implements _$$_SessionsEventCopyWith<$Res> {
  __$$_SessionsEventCopyWithImpl(
      _$_SessionsEvent _value, $Res Function(_$_SessionsEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SessionsEvent implements _SessionsEvent {
  const _$_SessionsEvent();

  @override
  String toString() {
    return 'SessionsEvent.getSessions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SessionsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSessions,
    required TResult Function(Session oldSession, Session newSession)
        rescheduleSession,
    required TResult Function(Session session) cancelSession,
    required TResult Function(String doctorId, double rating, String textReview)
        rateDoctor,
  }) {
    return getSessions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSessions,
    TResult? Function(Session oldSession, Session newSession)?
        rescheduleSession,
    TResult? Function(Session session)? cancelSession,
    TResult? Function(String doctorId, double rating, String textReview)?
        rateDoctor,
  }) {
    return getSessions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSessions,
    TResult Function(Session oldSession, Session newSession)? rescheduleSession,
    TResult Function(Session session)? cancelSession,
    TResult Function(String doctorId, double rating, String textReview)?
        rateDoctor,
    required TResult orElse(),
  }) {
    if (getSessions != null) {
      return getSessions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SessionsEvent value) getSessions,
    required TResult Function(_RescheduleSession value) rescheduleSession,
    required TResult Function(_CancelSession value) cancelSession,
    required TResult Function(_RateDoctor value) rateDoctor,
  }) {
    return getSessions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SessionsEvent value)? getSessions,
    TResult? Function(_RescheduleSession value)? rescheduleSession,
    TResult? Function(_CancelSession value)? cancelSession,
    TResult? Function(_RateDoctor value)? rateDoctor,
  }) {
    return getSessions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SessionsEvent value)? getSessions,
    TResult Function(_RescheduleSession value)? rescheduleSession,
    TResult Function(_CancelSession value)? cancelSession,
    TResult Function(_RateDoctor value)? rateDoctor,
    required TResult orElse(),
  }) {
    if (getSessions != null) {
      return getSessions(this);
    }
    return orElse();
  }
}

abstract class _SessionsEvent implements SessionsEvent {
  const factory _SessionsEvent() = _$_SessionsEvent;
}

/// @nodoc
abstract class _$$_RescheduleSessionCopyWith<$Res> {
  factory _$$_RescheduleSessionCopyWith(_$_RescheduleSession value,
          $Res Function(_$_RescheduleSession) then) =
      __$$_RescheduleSessionCopyWithImpl<$Res>;
  @useResult
  $Res call({Session oldSession, Session newSession});
}

/// @nodoc
class __$$_RescheduleSessionCopyWithImpl<$Res>
    extends _$SessionsEventCopyWithImpl<$Res, _$_RescheduleSession>
    implements _$$_RescheduleSessionCopyWith<$Res> {
  __$$_RescheduleSessionCopyWithImpl(
      _$_RescheduleSession _value, $Res Function(_$_RescheduleSession) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldSession = null,
    Object? newSession = null,
  }) {
    return _then(_$_RescheduleSession(
      oldSession: null == oldSession
          ? _value.oldSession
          : oldSession // ignore: cast_nullable_to_non_nullable
              as Session,
      newSession: null == newSession
          ? _value.newSession
          : newSession // ignore: cast_nullable_to_non_nullable
              as Session,
    ));
  }
}

/// @nodoc

class _$_RescheduleSession implements _RescheduleSession {
  const _$_RescheduleSession(
      {required this.oldSession, required this.newSession});

  @override
  final Session oldSession;
  @override
  final Session newSession;

  @override
  String toString() {
    return 'SessionsEvent.rescheduleSession(oldSession: $oldSession, newSession: $newSession)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RescheduleSession &&
            (identical(other.oldSession, oldSession) ||
                other.oldSession == oldSession) &&
            (identical(other.newSession, newSession) ||
                other.newSession == newSession));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oldSession, newSession);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RescheduleSessionCopyWith<_$_RescheduleSession> get copyWith =>
      __$$_RescheduleSessionCopyWithImpl<_$_RescheduleSession>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSessions,
    required TResult Function(Session oldSession, Session newSession)
        rescheduleSession,
    required TResult Function(Session session) cancelSession,
    required TResult Function(String doctorId, double rating, String textReview)
        rateDoctor,
  }) {
    return rescheduleSession(oldSession, newSession);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSessions,
    TResult? Function(Session oldSession, Session newSession)?
        rescheduleSession,
    TResult? Function(Session session)? cancelSession,
    TResult? Function(String doctorId, double rating, String textReview)?
        rateDoctor,
  }) {
    return rescheduleSession?.call(oldSession, newSession);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSessions,
    TResult Function(Session oldSession, Session newSession)? rescheduleSession,
    TResult Function(Session session)? cancelSession,
    TResult Function(String doctorId, double rating, String textReview)?
        rateDoctor,
    required TResult orElse(),
  }) {
    if (rescheduleSession != null) {
      return rescheduleSession(oldSession, newSession);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SessionsEvent value) getSessions,
    required TResult Function(_RescheduleSession value) rescheduleSession,
    required TResult Function(_CancelSession value) cancelSession,
    required TResult Function(_RateDoctor value) rateDoctor,
  }) {
    return rescheduleSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SessionsEvent value)? getSessions,
    TResult? Function(_RescheduleSession value)? rescheduleSession,
    TResult? Function(_CancelSession value)? cancelSession,
    TResult? Function(_RateDoctor value)? rateDoctor,
  }) {
    return rescheduleSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SessionsEvent value)? getSessions,
    TResult Function(_RescheduleSession value)? rescheduleSession,
    TResult Function(_CancelSession value)? cancelSession,
    TResult Function(_RateDoctor value)? rateDoctor,
    required TResult orElse(),
  }) {
    if (rescheduleSession != null) {
      return rescheduleSession(this);
    }
    return orElse();
  }
}

abstract class _RescheduleSession implements SessionsEvent {
  const factory _RescheduleSession(
      {required final Session oldSession,
      required final Session newSession}) = _$_RescheduleSession;

  Session get oldSession;
  Session get newSession;
  @JsonKey(ignore: true)
  _$$_RescheduleSessionCopyWith<_$_RescheduleSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CancelSessionCopyWith<$Res> {
  factory _$$_CancelSessionCopyWith(
          _$_CancelSession value, $Res Function(_$_CancelSession) then) =
      __$$_CancelSessionCopyWithImpl<$Res>;
  @useResult
  $Res call({Session session});
}

/// @nodoc
class __$$_CancelSessionCopyWithImpl<$Res>
    extends _$SessionsEventCopyWithImpl<$Res, _$_CancelSession>
    implements _$$_CancelSessionCopyWith<$Res> {
  __$$_CancelSessionCopyWithImpl(
      _$_CancelSession _value, $Res Function(_$_CancelSession) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? session = null,
  }) {
    return _then(_$_CancelSession(
      session: null == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as Session,
    ));
  }
}

/// @nodoc

class _$_CancelSession implements _CancelSession {
  const _$_CancelSession({required this.session});

  @override
  final Session session;

  @override
  String toString() {
    return 'SessionsEvent.cancelSession(session: $session)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CancelSession &&
            (identical(other.session, session) || other.session == session));
  }

  @override
  int get hashCode => Object.hash(runtimeType, session);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CancelSessionCopyWith<_$_CancelSession> get copyWith =>
      __$$_CancelSessionCopyWithImpl<_$_CancelSession>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSessions,
    required TResult Function(Session oldSession, Session newSession)
        rescheduleSession,
    required TResult Function(Session session) cancelSession,
    required TResult Function(String doctorId, double rating, String textReview)
        rateDoctor,
  }) {
    return cancelSession(session);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSessions,
    TResult? Function(Session oldSession, Session newSession)?
        rescheduleSession,
    TResult? Function(Session session)? cancelSession,
    TResult? Function(String doctorId, double rating, String textReview)?
        rateDoctor,
  }) {
    return cancelSession?.call(session);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSessions,
    TResult Function(Session oldSession, Session newSession)? rescheduleSession,
    TResult Function(Session session)? cancelSession,
    TResult Function(String doctorId, double rating, String textReview)?
        rateDoctor,
    required TResult orElse(),
  }) {
    if (cancelSession != null) {
      return cancelSession(session);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SessionsEvent value) getSessions,
    required TResult Function(_RescheduleSession value) rescheduleSession,
    required TResult Function(_CancelSession value) cancelSession,
    required TResult Function(_RateDoctor value) rateDoctor,
  }) {
    return cancelSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SessionsEvent value)? getSessions,
    TResult? Function(_RescheduleSession value)? rescheduleSession,
    TResult? Function(_CancelSession value)? cancelSession,
    TResult? Function(_RateDoctor value)? rateDoctor,
  }) {
    return cancelSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SessionsEvent value)? getSessions,
    TResult Function(_RescheduleSession value)? rescheduleSession,
    TResult Function(_CancelSession value)? cancelSession,
    TResult Function(_RateDoctor value)? rateDoctor,
    required TResult orElse(),
  }) {
    if (cancelSession != null) {
      return cancelSession(this);
    }
    return orElse();
  }
}

abstract class _CancelSession implements SessionsEvent {
  const factory _CancelSession({required final Session session}) =
      _$_CancelSession;

  Session get session;
  @JsonKey(ignore: true)
  _$$_CancelSessionCopyWith<_$_CancelSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RateDoctorCopyWith<$Res> {
  factory _$$_RateDoctorCopyWith(
          _$_RateDoctor value, $Res Function(_$_RateDoctor) then) =
      __$$_RateDoctorCopyWithImpl<$Res>;
  @useResult
  $Res call({String doctorId, double rating, String textReview});
}

/// @nodoc
class __$$_RateDoctorCopyWithImpl<$Res>
    extends _$SessionsEventCopyWithImpl<$Res, _$_RateDoctor>
    implements _$$_RateDoctorCopyWith<$Res> {
  __$$_RateDoctorCopyWithImpl(
      _$_RateDoctor _value, $Res Function(_$_RateDoctor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorId = null,
    Object? rating = null,
    Object? textReview = null,
  }) {
    return _then(_$_RateDoctor(
      doctorId: null == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      textReview: null == textReview
          ? _value.textReview
          : textReview // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RateDoctor implements _RateDoctor {
  const _$_RateDoctor(
      {required this.doctorId, required this.rating, required this.textReview});

  @override
  final String doctorId;
  @override
  final double rating;
  @override
  final String textReview;

  @override
  String toString() {
    return 'SessionsEvent.rateDoctor(doctorId: $doctorId, rating: $rating, textReview: $textReview)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RateDoctor &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.textReview, textReview) ||
                other.textReview == textReview));
  }

  @override
  int get hashCode => Object.hash(runtimeType, doctorId, rating, textReview);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RateDoctorCopyWith<_$_RateDoctor> get copyWith =>
      __$$_RateDoctorCopyWithImpl<_$_RateDoctor>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSessions,
    required TResult Function(Session oldSession, Session newSession)
        rescheduleSession,
    required TResult Function(Session session) cancelSession,
    required TResult Function(String doctorId, double rating, String textReview)
        rateDoctor,
  }) {
    return rateDoctor(doctorId, rating, textReview);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSessions,
    TResult? Function(Session oldSession, Session newSession)?
        rescheduleSession,
    TResult? Function(Session session)? cancelSession,
    TResult? Function(String doctorId, double rating, String textReview)?
        rateDoctor,
  }) {
    return rateDoctor?.call(doctorId, rating, textReview);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSessions,
    TResult Function(Session oldSession, Session newSession)? rescheduleSession,
    TResult Function(Session session)? cancelSession,
    TResult Function(String doctorId, double rating, String textReview)?
        rateDoctor,
    required TResult orElse(),
  }) {
    if (rateDoctor != null) {
      return rateDoctor(doctorId, rating, textReview);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SessionsEvent value) getSessions,
    required TResult Function(_RescheduleSession value) rescheduleSession,
    required TResult Function(_CancelSession value) cancelSession,
    required TResult Function(_RateDoctor value) rateDoctor,
  }) {
    return rateDoctor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SessionsEvent value)? getSessions,
    TResult? Function(_RescheduleSession value)? rescheduleSession,
    TResult? Function(_CancelSession value)? cancelSession,
    TResult? Function(_RateDoctor value)? rateDoctor,
  }) {
    return rateDoctor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SessionsEvent value)? getSessions,
    TResult Function(_RescheduleSession value)? rescheduleSession,
    TResult Function(_CancelSession value)? cancelSession,
    TResult Function(_RateDoctor value)? rateDoctor,
    required TResult orElse(),
  }) {
    if (rateDoctor != null) {
      return rateDoctor(this);
    }
    return orElse();
  }
}

abstract class _RateDoctor implements SessionsEvent {
  const factory _RateDoctor(
      {required final String doctorId,
      required final double rating,
      required final String textReview}) = _$_RateDoctor;

  String get doctorId;
  double get rating;
  String get textReview;
  @JsonKey(ignore: true)
  _$$_RateDoctorCopyWith<_$_RateDoctor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SessionsState {
  BlocStatus get status => throw _privateConstructorUsedError;
  CurrentUser? get currentUser => throw _privateConstructorUsedError;
  List<Session>? get previousSessions => throw _privateConstructorUsedError;
  List<Session>? get upcomingSessions => throw _privateConstructorUsedError;
  Session? get upcomingSession => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SessionsStateCopyWith<SessionsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionsStateCopyWith<$Res> {
  factory $SessionsStateCopyWith(
          SessionsState value, $Res Function(SessionsState) then) =
      _$SessionsStateCopyWithImpl<$Res, SessionsState>;
  @useResult
  $Res call(
      {BlocStatus status,
      CurrentUser? currentUser,
      List<Session>? previousSessions,
      List<Session>? upcomingSessions,
      Session? upcomingSession,
      Object? error});
}

/// @nodoc
class _$SessionsStateCopyWithImpl<$Res, $Val extends SessionsState>
    implements $SessionsStateCopyWith<$Res> {
  _$SessionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currentUser = freezed,
    Object? previousSessions = freezed,
    Object? upcomingSessions = freezed,
    Object? upcomingSession = freezed,
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
      previousSessions: freezed == previousSessions
          ? _value.previousSessions
          : previousSessions // ignore: cast_nullable_to_non_nullable
              as List<Session>?,
      upcomingSessions: freezed == upcomingSessions
          ? _value.upcomingSessions
          : upcomingSessions // ignore: cast_nullable_to_non_nullable
              as List<Session>?,
      upcomingSession: freezed == upcomingSession
          ? _value.upcomingSession
          : upcomingSession // ignore: cast_nullable_to_non_nullable
              as Session?,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SessionsStateCopyWith<$Res>
    implements $SessionsStateCopyWith<$Res> {
  factory _$$_SessionsStateCopyWith(
          _$_SessionsState value, $Res Function(_$_SessionsState) then) =
      __$$_SessionsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status,
      CurrentUser? currentUser,
      List<Session>? previousSessions,
      List<Session>? upcomingSessions,
      Session? upcomingSession,
      Object? error});
}

/// @nodoc
class __$$_SessionsStateCopyWithImpl<$Res>
    extends _$SessionsStateCopyWithImpl<$Res, _$_SessionsState>
    implements _$$_SessionsStateCopyWith<$Res> {
  __$$_SessionsStateCopyWithImpl(
      _$_SessionsState _value, $Res Function(_$_SessionsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currentUser = freezed,
    Object? previousSessions = freezed,
    Object? upcomingSessions = freezed,
    Object? upcomingSession = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_SessionsState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as CurrentUser?,
      previousSessions: freezed == previousSessions
          ? _value._previousSessions
          : previousSessions // ignore: cast_nullable_to_non_nullable
              as List<Session>?,
      upcomingSessions: freezed == upcomingSessions
          ? _value._upcomingSessions
          : upcomingSessions // ignore: cast_nullable_to_non_nullable
              as List<Session>?,
      upcomingSession: freezed == upcomingSession
          ? _value.upcomingSession
          : upcomingSession // ignore: cast_nullable_to_non_nullable
              as Session?,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_SessionsState implements _SessionsState {
  const _$_SessionsState(
      {required this.status,
      this.currentUser,
      final List<Session>? previousSessions,
      final List<Session>? upcomingSessions,
      this.upcomingSession,
      this.error})
      : _previousSessions = previousSessions,
        _upcomingSessions = upcomingSessions;

  @override
  final BlocStatus status;
  @override
  final CurrentUser? currentUser;
  final List<Session>? _previousSessions;
  @override
  List<Session>? get previousSessions {
    final value = _previousSessions;
    if (value == null) return null;
    if (_previousSessions is EqualUnmodifiableListView)
      return _previousSessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Session>? _upcomingSessions;
  @override
  List<Session>? get upcomingSessions {
    final value = _upcomingSessions;
    if (value == null) return null;
    if (_upcomingSessions is EqualUnmodifiableListView)
      return _upcomingSessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Session? upcomingSession;
  @override
  final Object? error;

  @override
  String toString() {
    return 'SessionsState(status: $status, currentUser: $currentUser, previousSessions: $previousSessions, upcomingSessions: $upcomingSessions, upcomingSession: $upcomingSession, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SessionsState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser) &&
            const DeepCollectionEquality()
                .equals(other._previousSessions, _previousSessions) &&
            const DeepCollectionEquality()
                .equals(other._upcomingSessions, _upcomingSessions) &&
            (identical(other.upcomingSession, upcomingSession) ||
                other.upcomingSession == upcomingSession) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      currentUser,
      const DeepCollectionEquality().hash(_previousSessions),
      const DeepCollectionEquality().hash(_upcomingSessions),
      upcomingSession,
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SessionsStateCopyWith<_$_SessionsState> get copyWith =>
      __$$_SessionsStateCopyWithImpl<_$_SessionsState>(this, _$identity);
}

abstract class _SessionsState implements SessionsState {
  const factory _SessionsState(
      {required final BlocStatus status,
      final CurrentUser? currentUser,
      final List<Session>? previousSessions,
      final List<Session>? upcomingSessions,
      final Session? upcomingSession,
      final Object? error}) = _$_SessionsState;

  @override
  BlocStatus get status;
  @override
  CurrentUser? get currentUser;
  @override
  List<Session>? get previousSessions;
  @override
  List<Session>? get upcomingSessions;
  @override
  Session? get upcomingSession;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$_SessionsStateCopyWith<_$_SessionsState> get copyWith =>
      throw _privateConstructorUsedError;
}
