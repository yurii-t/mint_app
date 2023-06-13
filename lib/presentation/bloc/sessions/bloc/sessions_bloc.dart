import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mint_app/data/gateway/firebase_firestore_gateway_impl.dart';
import 'package:mint_app/data/models/current_user.dart';
import 'package:mint_app/data/models/review.dart';
import 'package:mint_app/data/models/session.dart';
import 'package:mint_app/presentation/bloc/status.dart';
import 'package:uuid/uuid.dart';

part 'sessions_event.dart';
part 'sessions_state.dart';
part 'sessions_bloc.freezed.dart';

class SessionsBloc extends Bloc<SessionsEvent, SessionsState> {
  final FirebaseFirestoreGatewayImpl _firebaseFirestoreGatewayImpl;
  SessionsBloc(this._firebaseFirestoreGatewayImpl)
      : super(const SessionsState(status: BlocStatus.loading)) {
    on<SessionsEvent>((event, emit) async {
      try {
        await event.when<Future<void>>(
          getSessions: () => _getSessions(emit: emit),
          rescheduleSession: (oldSession, newSession) => _rescheduleSession(
            oldSession: oldSession,
            newSession: newSession,
          ),
          cancelSession: (session) => _cancelSession(session: session),
          rateDoctor: (doctorId, rating, textReview) => _rateDoctor(
            doctorId: doctorId,
            rating: rating,
            textReview: textReview,
          ),
        );
      } on Exception catch (error) {
        emit(await _errorState(error));
        log('error: $error');
      }
    });
  }
  Future<void> _getSessions({
    required Emitter<SessionsState> emit,
  }) async {
    try {
      await emit.forEach(
        _firebaseFirestoreGatewayImpl.streamCurrentUserInfo(),
        onData: (currentUser) {
          final sessions = currentUser.sessions ?? <Session>[];
          List<Session> upcomingSessions = [];
          List<Session> previousSessions = [];
          Session? upcomingSession;

          if (sessions.isNotEmpty) {
            upcomingSessions = sessions
                .where(
                  (element) =>
                      element.bookedDateTime.millisecondsSinceEpoch >=
                      DateTime.now().millisecondsSinceEpoch,
                )
                .toList();
            if (upcomingSessions.isNotEmpty) {
              upcomingSession = upcomingSessions.reduce((a, b) =>
                  (a.bookedDateTime.difference(DateTime.now())) <
                          b.bookedDateTime.difference(DateTime.now())
                      ? a
                      : b);
            }
            previousSessions = sessions
                .where(
                  (element) =>
                      element.bookedDateTime.millisecondsSinceEpoch <
                      DateTime.now().millisecondsSinceEpoch,
                )
                .toList();
          }

          return state.copyWith(
            status: BlocStatus.loaded,
            currentUser: currentUser,
            upcomingSessions: upcomingSessions,
            upcomingSession: upcomingSession,
            previousSessions: previousSessions,
          );
        },
      );
    } on Exception catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }

  Future<void> _rescheduleSession({
    required Session oldSession,
    required Session newSession,
  }) async {
    await _firebaseFirestoreGatewayImpl.rescheduleSession(
      oldSession,
      newSession,
    );
  }

  Future<void> _cancelSession({
    required Session session,
  }) async {
    await _firebaseFirestoreGatewayImpl.cancelSession(session);
  }

  Future<void> _rateDoctor({
    required String doctorId,
    required double rating,
    required String textReview,
  }) async {
    final currentUser =
        await _firebaseFirestoreGatewayImpl.getCurrentUserInfo();
    await _firebaseFirestoreGatewayImpl.rateDoctor(
      doctorId: doctorId,
      review: Review(
        id: const Uuid().v1(),
        name: '${currentUser.firstName} ${currentUser.lastName}',
        textReview: textReview,
        profileImage: currentUser.profileImage,
        timeStamp: Timestamp.now(),
        rating: rating,
      ),
    );
  }

  Future<SessionsState> _errorState(Object error) async => SessionsState(
        currentUser: state.currentUser,
        error: error,
        previousSessions: state.previousSessions,
        upcomingSessions: state.upcomingSessions,
        upcomingSession: state.upcomingSession,
        status: BlocStatus.error,
      );
}
