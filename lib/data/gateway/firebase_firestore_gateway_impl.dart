import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:mint_app/data/data.dart';
import 'package:mint_app/data/models/chat_model.dart';
import 'package:mint_app/data/models/message_model.dart';
import 'package:mint_app/data/models/session.dart';
import 'package:mint_app/data/models/user_call.dart';

class FirebaseFirestoreGatewayImpl implements FirebaseFirestoreGateway {
  const FirebaseFirestoreGatewayImpl({
    required this.auth,
    required this.firebaseFirestore,
  });

  final FirebaseAuth auth;
  final FirebaseFirestore firebaseFirestore;

  @override
  Future<void> createCurrentUser(CurrentUser user) async {
    final userCollection = firebaseFirestore.collection('users');
    final String? uid = await auth.currentUser?.uid;
    final String? phoneNumber = await auth.currentUser?.phoneNumber;

    final userDoc = await userCollection.doc(uid).get();

    final newUser = CurrentUser(
      userId: uid ?? '',
      firstName: user.firstName,
      lastName: user.lastName,
      pinCode: user.pinCode,
      dateOfBirth: user.dateOfBirth,
      profileImage: user.profileImage,
      phoneNumber: phoneNumber ?? '',
      email: user.email,
    ).toDocument();
    if (!userDoc.exists) {
      await userCollection.doc(uid).set(newUser);
    } else {
      await userCollection.doc(uid).update(newUser);
    }
  }

  @override
  Future<void> setAppPinCode(String pinCode) async {
    final userCollection = firebaseFirestore.collection('users');
    final String? uid = await auth.currentUser?.uid;

    await userCollection.doc(uid).update({'pinCode': pinCode});
  }

  @override
  Future<CurrentUser> getCurrentUserInfo() async {
    final userCollection = firebaseFirestore.collection('users');
    final String? uid = await auth.currentUser?.uid;

    final data = await userCollection.doc(uid).get();

    return CurrentUser.fromSnapShot(data);
  }

  @override
  Stream<CurrentUser> streamCurrentUserInfo() {
    final String? uid = auth.currentUser?.uid;

    final userCollectionRef =
        firebaseFirestore.collection('users').doc(uid).snapshots();

    return userCollectionRef.map(CurrentUser.fromSnapShot);
  }

  @override
  Future<void> addDoctorToFavorite(Doctor doctor) async {
    final userCollection = firebaseFirestore.collection('users');
    final String? uid = await auth.currentUser?.uid;

    final data = await userCollection.doc(uid).get();

    final user = CurrentUser.fromSnapShot(data);
    final userFavoriteDoctors = user.favoriteDoctors;
    if (userFavoriteDoctors != null) {
      if (userFavoriteDoctors.contains(doctor)) {
        await userCollection.doc(uid).update(
          {
            'favoriteDoctors':
                FieldValue.arrayRemove(<dynamic>[doctor.toMap()]),
          },
        );
      } else {
        await userCollection.doc(uid).update(
          {
            'favoriteDoctors': FieldValue.arrayUnion(<dynamic>[doctor.toMap()]),
          },
        );
      }
    }
  }

  @override
  Future<List<Doctor>> getDoctors() async {
    final doctorsCollection = firebaseFirestore.collection('doctors');

    final doctors = await doctorsCollection.get();
    final result =
        await doctors.docs.map((e) => Doctor.fromSnapShot(e.data())).toList();

    return result;
  }

  @override
  Future<bool> phoneNumberExistsCheck(
    String phoneNumber,
  ) async {
    final userCollectionRef = await firebaseFirestore
        .collection('users')
        .where('phoneNumber', isEqualTo: phoneNumber)
        .get();

    final mes = userCollectionRef.size;
    if (mes == 0) {
      return false;
    }

    return true;
  }

  @override
  Future<void> addPaymentCard(
    PaymentMethod card,
  ) async {
    final String? uid = await auth.currentUser?.uid;

    await firebaseFirestore.collection('users').doc(uid).update({
      'paymentCards': FieldValue.arrayUnion(<dynamic>[card.toDocument()]),
    });
  }

  @override
  Future<void> deletePaymentCard(
    PaymentMethod card,
  ) async {
    final String? uid = await auth.currentUser?.uid;

    await firebaseFirestore.collection('users').doc(uid).update({
      'paymentCards': FieldValue.arrayRemove(<dynamic>[card.toDocument()]),
    });
  }

  @override
  Future<void> bookSession(
    Session session,
  ) async {
    final String? uid = await auth.currentUser?.uid;

    await firebaseFirestore.collection('users').doc(uid).update({
      'sessions': FieldValue.arrayUnion(<dynamic>[session.toMap()]),
    });
  }

  @override
  Future<void> rescheduleSession(
    Session oldSession,
    Session newSession,
  ) async {
    final String? uid = await auth.currentUser?.uid;

    await firebaseFirestore.collection('users').doc(uid).update({
      'sessions': FieldValue.arrayRemove(<dynamic>[oldSession.toMap()]),
    });
    await firebaseFirestore.collection('users').doc(uid).update({
      'sessions': FieldValue.arrayUnion(<dynamic>[newSession.toMap()]),
    });
  }

  @override
  Future<void> cancelSession(
    Session session,
  ) async {
    final String? uid = await auth.currentUser?.uid;

    await firebaseFirestore.collection('users').doc(uid).update({
      'sessions': FieldValue.arrayRemove(<dynamic>[session.toMap()]),
    });
  }

  @override
  Future<List<CurrentUser>> getUsers() async {
    final userCollection = firebaseFirestore.collection('users');

    final users = await userCollection.get();

    final result = await users.docs.map(CurrentUser.fromSnapShot).toList();

    return result;
  }

  ///Call
  @override
  Future<String> getVideoToken() async {
    final userCollectionRef =
        await firebaseFirestore.collection('videoToken').get();

    final mes = userCollectionRef.docs.first.data();
    final token = mes['token'] as String;

    return token;
  }

  @override
  Future<void> startCall(
    UserCall userCall,
  ) async {
    await firebaseFirestore
        .collection('userCall')
        .doc(userCall.id)
        .set(userCall.toMap());
  }

  @override
  Future<void> updateCallStatus() async {
    final col = await firebaseFirestore.collection('userCall').get();
    final docs = col.docs;
    if (docs.length >= 0)
      for (final doc in docs) {
        await doc.reference.delete();
      }
  }

  @override
  Stream<List<UserCall>> incomingCall() {
    final String? uid = auth.currentUser?.uid;

    final userCallCollectionRef = firebaseFirestore
        .collection('userCall')
        .where('receiverId', isEqualTo: uid)
        .snapshots();

    return userCallCollectionRef.map(
      (event) => event.docs.map((e) => UserCall.fromMap(e.data())).toList(),
    );
  }

  @override
  Future<void> createChat({
    required String uid,
    required String otherUid,
  }) async {
    final userCollectionRef = firebaseFirestore.collection('users');
    final chatCollectionRef = firebaseFirestore.collection('chats');

    final chatDoc = await userCollectionRef
        .doc(uid)
        .collection('activeChats')
        .doc(otherUid)
        .get();
    if (chatDoc.exists) {
      return;
    }
    final String _chatId = chatCollectionRef.doc().id;
    final Map<String, Object> _chatIdMap = {'chatId': _chatId};
    await chatCollectionRef.doc(_chatId).set(_chatIdMap);

    await userCollectionRef
        .doc(uid)
        .collection('activeChats')
        .doc(otherUid)
        .set(_chatIdMap);

    await userCollectionRef
        .doc(otherUid)
        .collection('activeChats')
        .doc(uid)
        .set(_chatIdMap);

    return;
  }

  @override
  Future<void> sendMessage({
    required MessageModel messageModel,
    required String chatId,
  }) async {
    final messageCollectionRef = firebaseFirestore
        .collection('chats')
        .doc(chatId)
        .collection('messages');

    final messgeDoc =
        await messageCollectionRef.doc(messageModel.messageId).get();

    final newMessage = MessageModel(
      senderName: messageModel.senderName,
      senderUid: messageModel.senderUid,
      recepientName: messageModel.recepientName,
      recepientUid: messageModel.recepientUid,
      messageType: messageModel.messageType,
      message: messageModel.message,
      messageId: messageModel.messageId,
      time: messageModel.time,
      docSize: messageModel.docSize,
      docName: messageModel.docName,
      isRead: messageModel.isRead,
      docId: messageModel.docId,
    ).toDocument();
    if (!messgeDoc.exists) {
      await messageCollectionRef.doc(messageModel.messageId).set(newMessage);
    } else {
      await messageCollectionRef.doc(messageModel.messageId).update(newMessage);
    }
  }

  @override
  Future<String> setMessageId(String chatId) async {
    final messageCollectionRef = firebaseFirestore
        .collection('chats')
        .doc(chatId)
        .collection('messages');

    final String _messageId = messageCollectionRef.doc().id;

    return _messageId;
  }

  @override
  Future<void> readMessages({
    required String chatId,
    required String senderUID,
  }) async {
    final messageCollectionRef = firebaseFirestore
        .collection('chats')
        .doc(chatId)
        .collection('messages')
        .where('sederUID', isEqualTo: senderUID)
        .where('isRead', isEqualTo: false);

    await messageCollectionRef.get()
      ..docs.forEach((element) {
        element.reference.update({'isRead': true});
      });
  }

  @override
  // ignore: long-method
  Future<void> addActiveChatDetails(ChatModel chatModel) async {
    final myChatDetailsCollectionRef = firebaseFirestore
        .collection('users')
        .doc(chatModel.senderUid)
        .collection('myChat');

    final otherChatDetailsCollectionRef = firebaseFirestore
        .collection('users')
        .doc(chatModel.recepientUid)
        .collection('myChat');

    final myNewChat = ChatModel(
      chatId: chatModel.chatId,
      senderName: chatModel.senderName,
      senderUid: chatModel.senderUid,
      senderPhoneNumber: chatModel.senderPhoneNumber,
      recepientName: chatModel.recepientName,
      recepientUid: chatModel.recepientUid,
      recepientPhoneNumber: chatModel.recepientPhoneNumber,
      recentTextMessage: chatModel.recentTextMessage,
      isRead: chatModel.isRead,
      time: chatModel.time,
      newMessages: chatModel.newMessages,
    ).toDocument();

    final otherNewChat = ChatModel(
      chatId: chatModel.chatId,
      senderName: chatModel.recepientName,
      senderUid: chatModel.recepientUid,
      senderPhoneNumber: chatModel.recepientPhoneNumber,
      recepientName: chatModel.senderName,
      recepientUid: chatModel.senderUid,
      recepientPhoneNumber: chatModel.senderPhoneNumber,
      recentTextMessage: chatModel.recentTextMessage,
      isRead: chatModel.isRead,
      time: chatModel.time,
      newMessages: chatModel.newMessages,
    ).toDocument();

    final myChatDoc =
        await myChatDetailsCollectionRef.doc(chatModel.recepientUid).get();

    if (!myChatDoc.exists) {
      await myChatDetailsCollectionRef
          .doc(chatModel.recepientUid)
          .set(myNewChat);
      await otherChatDetailsCollectionRef
          .doc(chatModel.senderUid)
          .set(otherNewChat);

      return;
    } else {
      await myChatDetailsCollectionRef
          .doc(chatModel.recepientUid)
          .update(myNewChat);
      await otherChatDetailsCollectionRef
          .doc(chatModel.senderUid)
          .update(otherNewChat);

      return;
    }
  }

  @override
  Stream<List<MessageModel>> getMessages(String chatId) {
    final messageCollectionRef = firebaseFirestore
        .collection('chats')
        .doc(chatId)
        .collection('messages');

    return messageCollectionRef.orderBy('time').snapshots().map((snapshot) {
      return snapshot.docs.map(MessageModel.fromSnapShot).toList();
    });
  }

  @override
  Stream<List<ChatModel>> getActiveChats() {
    final String? uid = auth.currentUser?.uid;
    final chatCollectionRef =
        firebaseFirestore.collection('users').doc(uid).collection('myChat');

    return chatCollectionRef
        .orderBy('time', descending: true)
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map(ChatModel.fromSnapShot).toList();
    });
  }

  @override
  Future<void> getNewMessages({
    required String chatId,
    required String recepientUid,
  }) async {
    final String? uid = auth.currentUser?.uid;
    final chatCollectionRef = firebaseFirestore
        .collection('chats')
        .doc(chatId)
        .collection('messages');

    final snap = await chatCollectionRef
        .where('sederUID', isNotEqualTo: uid)
        .where('isRead', isEqualTo: false)
        .get();

    final size = snap.size;

    final otherChatDetailsCollectionRef = await firebaseFirestore
        .collection('users')
        .doc(uid)
        .collection('myChat')
        .doc(recepientUid);
    final messageDoc = await otherChatDetailsCollectionRef.get();

    if (messageDoc.exists) {
      await otherChatDetailsCollectionRef.update({'newMessages': size});
    } else {
      return;
    }
  }

  @override
  Future<String> getChatId({
    required String uid,
    required String otherUid,
  }) async {
    final userCollectionRef = firebaseFirestore.collection('users');

    final chatId = await userCollectionRef
        .doc(uid)
        .collection('activeChats')
        .doc(otherUid)
        .get();

    if (chatId.exists) {
      final chatIdData = chatId.data();

      if (chatIdData != null) {
        return chatIdData['chatId'] as String;
      }
    }

    return Future.value('');
  }

  @override
  Future<void> updateChattingWithId(String recepientUid) async {
    final String? uid = auth.currentUser?.uid;

    return firebaseFirestore
        .collection('users')
        .doc(uid)
        .update({'chattingWith': recepientUid});
  }

  @override
  Future<void> rateDoctor({
    required String doctorId,
    required Review review,
  }) async {
    await firebaseFirestore.collection('doctors').doc(doctorId).update({
      'reviews': FieldValue.arrayUnion(<dynamic>[review.toDocument()]),
    });
  }

  @override
  Future<void> changeFirstName({
    required String newFirstName,
  }) async {
    final String? uid = auth.currentUser?.uid;
    await firebaseFirestore.collection('users').doc(uid).update({
      'firstName': newFirstName,
    });
  }

  @override
  Future<void> changeLastName({
    required String newLastName,
  }) async {
    final String? uid = auth.currentUser?.uid;
    await firebaseFirestore.collection('users').doc(uid).update({
      'lastName': newLastName,
    });
  }

  @override
  Future<void> changeDob({
    required String newDob,
  }) async {
    final String? uid = auth.currentUser?.uid;
    await firebaseFirestore.collection('users').doc(uid).update({
      'lastName': newDob,
    });
  }
}
