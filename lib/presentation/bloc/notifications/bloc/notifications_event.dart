part of 'notifications_bloc.dart';

@freezed
class NotificationsEvent with _$NotificationsEvent {
  const factory NotificationsEvent.receiveNotification() = _ReceiveNotification;
  const factory NotificationsEvent.updateNotificationToken() =
      _UpdateNotificationToken;
}
