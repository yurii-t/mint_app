import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mint_app/data/data.dart';
import 'package:mint_app/data/models/session.dart';
import 'package:mint_app/presentation/bloc/status.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final FirebaseFirestoreGatewayImpl _firebaseFirestoreGatewayImpl;
  UserBloc(this._firebaseFirestoreGatewayImpl)
      : super(const UserState(
          status: BlocStatus.loading,
        )) {
    on<UserEvent>((event, emit) async {
      try {
        await event.when<Future<void>>(
          getCurrentUser: () async => _getCurrentUser(emit: emit),
          addPaymentCard: (card, saveCard) =>
              _addPaymentCard(emit: emit, card: card, saveCard: saveCard),
          deletePaymentCard: (card) =>
              _deletePaymentCard(emit: emit, card: card),
          bookSession: (session) => _bookSession(session: session),
          getUserStream: () => _getUserStream(emit: emit),
          changeFirstName: (firstName) =>
              _changeFirstName(firstName: firstName),
          changeLastName: (lastName) => _changeLastName(lastName: lastName),
          changeDob: (dob) => _changeDob(dob: dob),
        );
      } on Exception catch (error) {
        emit(await _errorState(error));
        log('error: $error');
      }
    });
  }

  Future<void> _getCurrentUser({
    required Emitter<UserState> emit,
  }) async {
    final currentUser =
        await _firebaseFirestoreGatewayImpl.getCurrentUserInfo();
    emit(
      state.copyWith(
        status: BlocStatus.loaded,
        currentUser: currentUser,
        paymentCards: currentUser.paymentCards ?? [],
      ),
    );
  }

  Future<void> _addPaymentCard({
    required Emitter<UserState> emit,
    required PaymentMethod card,
    required bool saveCard,
  }) async {
    if (saveCard) {
      await _firebaseFirestoreGatewayImpl.addPaymentCard(card);
    }
    final currentUser =
        await _firebaseFirestoreGatewayImpl.getCurrentUserInfo();
    final cardsList =
        List<PaymentMethod>.from(state.paymentCards ?? <PaymentMethod>[])
          ..insert(0, card);
    emit(
      state.copyWith(
        status: BlocStatus.loaded,
        currentUser: currentUser,
        paymentCards: cardsList,
      ),
    );
  }

  Future<void> _deletePaymentCard({
    required Emitter<UserState> emit,
    required PaymentMethod card,
  }) async {
    await _firebaseFirestoreGatewayImpl.deletePaymentCard(card);

    final currentUser =
        await _firebaseFirestoreGatewayImpl.getCurrentUserInfo();
    final cardsList =
        List<PaymentMethod>.from(state.paymentCards ?? <PaymentMethod>[])
          ..remove(card);

    emit(
      state.copyWith(
        status: BlocStatus.loaded,
        currentUser: currentUser,
        paymentCards: cardsList,
      ),
    );
  }

  Future<void> _bookSession({
    required Session session,
  }) async {
    await _firebaseFirestoreGatewayImpl.bookSession(session);
  }

  Future<void> _getUserStream({
    required Emitter<UserState> emit,
  }) async {
    try {
      await emit.forEach(
        _firebaseFirestoreGatewayImpl.streamCurrentUserInfo(),
        onData: (currentUser) => state.copyWith(
          status: BlocStatus.loaded,
          currentUser: currentUser,
        ),
      );
    } on Exception catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }

  Future<void> _changeFirstName({
    required String firstName,
  }) async {
    await _firebaseFirestoreGatewayImpl.changeFirstName(
      newFirstName: firstName,
    );
  }

  Future<void> _changeLastName({
    required String lastName,
  }) async {
    await _firebaseFirestoreGatewayImpl.changeLastName(newLastName: lastName);
  }

  Future<void> _changeDob({
    required String dob,
  }) async {
    await _firebaseFirestoreGatewayImpl.changeDob(newDob: dob);
  }

  Future<UserState> _errorState(Object error) async => UserState(
        currentUser: state.currentUser,
        paymentCards: state.paymentCards,
        error: error,
        status: BlocStatus.error,
      );
}
