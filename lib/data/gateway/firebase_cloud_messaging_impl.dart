import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:mint_app/data/gateway/firebase_cloud_messaging.dart';

class FirebaseCloudMessagingImpl implements FirebaseCloudMessaging {
  const FirebaseCloudMessagingImpl({required this.firebaseMessaging});
  final FirebaseMessaging firebaseMessaging;

  @override
  Future<String> getDeviceToken() async {
    final token = await firebaseMessaging.getToken();

    return token ?? '';
  }

  @override
  Stream<RemoteMessage> receiveNotification() {
    final mes = FirebaseMessaging.onMessage;

    return mes;
  }
}
