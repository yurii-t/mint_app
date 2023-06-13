// ignore_for_file: long-parameter-list

import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mint_app/data/gateway/firebase_firestore_gateway_impl.dart';
import 'package:mint_app/data/gateway/firebase_storage_gateway_impl.dart';
import 'package:mint_app/data/models/chat_model.dart';
import 'package:mint_app/data/models/current_user.dart';
import 'package:mint_app/data/models/message_model.dart';
import 'package:mint_app/presentation/bloc/status.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final FirebaseFirestoreGatewayImpl _firebaseFirestoreGatewayImpl;
  final FirebaseStorageGatewayImpl _firebaseStorageGatewayImpl;
  ChatBloc(this._firebaseFirestoreGatewayImpl, this._firebaseStorageGatewayImpl)
      : super(const ChatState(status: BlocStatus.loading, messages: [])) {
    on<ChatEvent>((event, emit) async {
      try {
        await event.when<Future<void>>(
          sendMessage: (message, messageType) => _sendMessage(
            emit: emit,
            message: message,
            messageType: messageType,
          ),
          getAllMessages: () => _getAllMessages(emit: emit),
          createChat: () => _createChat(emit: emit),
          uploadImage: (messageType, image, docSize, docName) => _uploadImage(
            emit: emit,
            messageType: messageType,
            image: image,
            docSize: docSize,
            docName: docName,
          ),
          seenMessages: _seenMessages,
          updateChattingWithId: _updateChattingWith,
        );
      } on Exception catch (error) {
        emit(await _errorState(error));
        log('error: $error');
      }
    });
  }
  Future<void> _createChat({
    required Emitter<ChatState> emit,
  }) async {
    try {
      final curentUser =
          await _firebaseFirestoreGatewayImpl.getCurrentUserInfo();
      final users = await _firebaseFirestoreGatewayImpl.getUsers();
      final receiveUser =
          users.firstWhere((element) => element.userId != curentUser.userId);

      await _firebaseFirestoreGatewayImpl.createChat(
        uid: curentUser.userId,
        otherUid: receiveUser.userId,
      );
    } on SocketException catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }

  Future<void> _getAllMessages({
    required Emitter<ChatState> emit,
  }) async {
    final curentUser = await _firebaseFirestoreGatewayImpl.getCurrentUserInfo();

    final users = await _firebaseFirestoreGatewayImpl.getUsers();

    final receiveUser =
        users.firstWhere((element) => element.userId != curentUser.userId);

    final chatId = await _firebaseFirestoreGatewayImpl.getChatId(
      uid: curentUser.userId,
      otherUid: receiveUser.userId,
    );

    await emit.forEach(
      _firebaseFirestoreGatewayImpl.getMessages(chatId),
      onData: (messages) => state.copyWith(
        status: BlocStatus.loaded,
        messages: messages,
        sender: curentUser,
        receiveUser: receiveUser,
      ),
    );
  }

  Future<void> _sendMessage({
    required Emitter<ChatState> emit,
    required String message,
    required String messageType,
  }) async {
    try {
      final curentUser =
          await _firebaseFirestoreGatewayImpl.getCurrentUserInfo();

      final users = await _firebaseFirestoreGatewayImpl.getUsers();

      final receiveUser =
          users.firstWhere((element) => element.userId != curentUser.userId);

      final chatId = await _firebaseFirestoreGatewayImpl.getChatId(
        uid: curentUser.userId,
        otherUid: receiveUser.userId,
      );

      final messageId =
          await _firebaseFirestoreGatewayImpl.setMessageId(chatId);

      await _firebaseFirestoreGatewayImpl.sendMessage(
        messageModel: MessageModel(
          senderName: '${curentUser.firstName} ${curentUser.lastName}',
          senderUid: curentUser.userId,
          recepientName: '${receiveUser.firstName} ${receiveUser.lastName}',
          recepientUid: receiveUser.userId,
          messageType: messageType,
          message: message,
          messageId: messageId,
          time: Timestamp.now(),
          docName: '',
          docSize: '',
          isRead: false,
          docId: '',
        ),
        chatId: chatId,
      );

      await _firebaseFirestoreGatewayImpl.addActiveChatDetails(ChatModel(
        chatId: chatId,
        senderName: '${curentUser.firstName} ${curentUser.lastName}',
        senderUid: curentUser.userId,
        recepientName: '${receiveUser.firstName} ${receiveUser.lastName}',
        recepientUid: receiveUser.userId,
        senderPhoneNumber: curentUser.phoneNumber,
        recepientPhoneNumber: receiveUser.phoneNumber,
        recentTextMessage: message,
        isRead: false,
        time: Timestamp.now(),
        newMessages: 0,
      ));
    } on SocketException catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }

  Future<void> _uploadImage({
    required Emitter<ChatState> emit,
    required String messageType,
    required File image,
    required String docSize,
    required String docName,
  }) async {
    try {
      final curentUser =
          await _firebaseFirestoreGatewayImpl.getCurrentUserInfo();

      final users = await _firebaseFirestoreGatewayImpl.getUsers();

      final receiveUser =
          users.firstWhere((element) => element.userId != curentUser.userId);

      final chatId = await _firebaseFirestoreGatewayImpl.getChatId(
        uid: curentUser.userId,
        otherUid: receiveUser.userId,
      );

      final ref = await _firebaseStorageGatewayImpl.getReference(
        image,
        chatId,
        'chats',
      );

      final task = await _firebaseStorageGatewayImpl.uploadImage(image, ref);

      final imageUrl =
          await (await task.whenComplete(() => {debugPrint('link ready')}))
              .ref
              .getDownloadURL();
      final messageId =
          await _firebaseFirestoreGatewayImpl.setMessageId(chatId);
      await _firebaseFirestoreGatewayImpl.sendMessage(
        messageModel: MessageModel(
          senderName: '${curentUser.firstName} ${curentUser.lastName}',
          senderUid: curentUser.userId,
          recepientName: '${receiveUser.firstName} ${receiveUser.lastName}',
          recepientUid: receiveUser.userId,
          messageType: messageType,
          message: imageUrl,
          messageId: messageId,
          time: Timestamp.now(),
          docName: docName,
          docSize: docSize,
          isRead: false,
          docId: '',
        ),
        chatId: chatId,
      );

      await _firebaseFirestoreGatewayImpl.addActiveChatDetails(ChatModel(
        chatId: chatId,
        senderName: '${curentUser.firstName} ${curentUser.lastName}',
        senderUid: curentUser.userId,
        recepientName: '${receiveUser.firstName} ${receiveUser.lastName}',
        recepientUid: receiveUser.userId,
        senderPhoneNumber: curentUser.phoneNumber,
        recepientPhoneNumber: receiveUser.phoneNumber,
        recentTextMessage: imageUrl,
        isRead: false,
        time: Timestamp.now(),
        newMessages: 0,
      ));
    } on SocketException catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }

  Future<void> _seenMessages() async {
    final curentUser = await _firebaseFirestoreGatewayImpl.getCurrentUserInfo();

    final users = await _firebaseFirestoreGatewayImpl.getUsers();

    final receiveUser =
        users.firstWhere((element) => element.userId != curentUser.userId);

    final chatId = await _firebaseFirestoreGatewayImpl.getChatId(
      uid: curentUser.userId,
      otherUid: receiveUser.userId,
    );

    await _firebaseFirestoreGatewayImpl.readMessages(
      chatId: chatId,
      senderUID: receiveUser.userId,
    );
  }

  Future<void> _updateChattingWith() async {
    final curentUser = await _firebaseFirestoreGatewayImpl.getCurrentUserInfo();

    final users = await _firebaseFirestoreGatewayImpl.getUsers();

    final receiveUser =
        users.firstWhere((element) => element.userId != curentUser.userId);
    await _firebaseFirestoreGatewayImpl.updateChattingWithId(
      receiveUser.userId,
    );
  }

  Future<ChatState> _errorState(Object error) async => ChatState(
        messages: state.messages,
        error: error,
        status: BlocStatus.error,
      );
}
