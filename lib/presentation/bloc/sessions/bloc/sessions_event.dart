part of 'sessions_bloc.dart';

@freezed
class SessionsEvent with _$SessionsEvent {
  const factory SessionsEvent.getSessions() = _SessionsEvent;
  const factory SessionsEvent.rescheduleSession({
    required Session oldSession,
    required Session newSession,
  }) = _RescheduleSession;
  const factory SessionsEvent.cancelSession({
    required Session session,
  }) = _CancelSession;
  const factory SessionsEvent.rateDoctor({
    required String doctorId,
    required double rating,
    required String textReview,
  }) = _RateDoctor;
}
