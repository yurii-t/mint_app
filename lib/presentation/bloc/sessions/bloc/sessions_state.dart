part of 'sessions_bloc.dart';

@freezed
class SessionsState with _$SessionsState {
  const factory SessionsState({
    required BlocStatus status,
    CurrentUser? currentUser,
    List<Session>? previousSessions,
    List<Session>? upcomingSessions,
    Session? upcomingSession,
    Object? error,
  }) = _SessionsState;
}
