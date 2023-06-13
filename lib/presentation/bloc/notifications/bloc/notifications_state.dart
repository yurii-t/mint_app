part of 'notifications_bloc.dart';

@freezed
class NotificationsState with _$NotificationsState {
  const factory NotificationsState({
    required BlocStatus status,
    RemoteMessage? notification,
    Object? error,
  }) = _NotificationsState;
}
