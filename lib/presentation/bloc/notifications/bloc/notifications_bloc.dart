import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mint_app/data/gateway/firebase_cloud_messaging_impl.dart';
import 'package:mint_app/presentation/bloc/status.dart';

part 'notifications_event.dart';
part 'notifications_state.dart';
part 'notifications_bloc.freezed.dart';

class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  final FirebaseCloudMessagingImpl _firebaseCloudMessagingImpl;
  NotificationsBloc(this._firebaseCloudMessagingImpl)
      : super(const NotificationsState(status: BlocStatus.loading)) {
    on<NotificationsEvent>((event, emit) async {
      try {
        await event.when<Future<void>>(
          receiveNotification: () => _receiveNotification(emit: emit),
          updateNotificationToken: _updateNotificationToken,
        );
      } on Exception catch (error) {
        emit(await _errorState(error));
        log('error: $error');
      }
    });
  }

  Future<void> _receiveNotification({
    required Emitter<NotificationsState> emit,
  }) async {
    await emit.forEach(
      _firebaseCloudMessagingImpl.receiveNotification(),
      onData: (notification) =>
          state.copyWith(status: BlocStatus.loaded, notification: notification),
    );
  }

  Future<void> _updateNotificationToken() async =>
      _firebaseCloudMessagingImpl.getDeviceToken();

  Future<NotificationsState> _errorState(Object error) async =>
      NotificationsState(
        error: error,
        status: BlocStatus.error,
      );
}
