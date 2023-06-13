// ignore_for_file: long-parameter-list
import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mint_app/data/gateway/firebase_firestore_gateway_impl.dart';
import 'package:mint_app/data/gateway/firebase_storage_gateway_impl.dart';
import 'package:mint_app/data/models/chat_model.dart';
import 'package:mint_app/data/models/message_model.dart';
import 'package:mint_app/presentation/bloc/status.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

part 'file_interaction_event.dart';
part 'file_interaction_state.dart';
part 'file_interaction_bloc.freezed.dart';

class FileInteractionBloc
    extends Bloc<FileInteractionEvent, FileInteractionState> {
  final FirebaseFirestoreGatewayImpl _firebaseFirestoreGatewayImpl;
  final FirebaseStorageGatewayImpl _firebaseStorageGatewayImpl;
  FileInteractionBloc(
    this._firebaseFirestoreGatewayImpl,
    this._firebaseStorageGatewayImpl,
  ) : super(const FileInteractionState(
          status: BlocStatus.loading,
          fileStatus: FileStatus.idle,
          uploadProgressList: [],
          downloadingProgressList: [],
          errorList: [],
        )) {
    on<FileInteractionEvent>((event, emit) async {
      try {
        await event.when<Future<void>>(
          uploadFile: (messageType, image, docSize, docName, docId) =>
              _uploadFile(
            emit: emit,
            messageType: messageType,
            image: image,
            docSize: docSize,
            docName: docName,
            docId: docId,
          ),
          downloadFile: (url, messageId) =>
              _downloadFile(emit: emit, url: url, messageId: messageId),
        );
      } on Exception catch (error) {
        emit(await _errorState(error));
        log('error: $error');
      }
    });
  }

  Future<void> _uploadFile({
    required Emitter<FileInteractionState> emit,
    required String messageType,
    required File image,
    required String docSize,
    required String docName,
    required String docId,
  }) async {
    final curentUser = await _firebaseFirestoreGatewayImpl.getCurrentUserInfo();

    final users = await _firebaseFirestoreGatewayImpl.getUsers();

    final receiveUser =
        users.firstWhere((element) => element.userId != curentUser.userId);

    try {
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

      final messageId =
          await _firebaseFirestoreGatewayImpl.setMessageId(chatId);
      await _firebaseFirestoreGatewayImpl.sendMessage(
        messageModel: MessageModel(
          senderName: '${curentUser.firstName} ${curentUser.lastName}',
          senderUid: curentUser.userId,
          recepientName: '${receiveUser.firstName} ${receiveUser.lastName}',
          recepientUid: receiveUser.userId,
          messageType: messageType,
          message: '',
          messageId: messageId,
          time: Timestamp.now(),
          docName: docName,
          docSize: docSize,
          isRead: false,
          docId: docId,
        ),
        chatId: chatId,
      );

      unawaited(task.then(
        (taskSnapshot) async {
          final imageUrl = await taskSnapshot.ref.getDownloadURL();

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
              docId: docId,
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
        },
      ));

      await emit.forEach(
        _firebaseStorageGatewayImpl.uploadProgress(task),
        onData: (progress) {
          final state = this.state;

          final uploadProgressList = state.fileStatus == FileStatus.uploading
              ? List<UploadingProgress>.from(state.uploadProgressList)
              : <UploadingProgress>[];

          final uploadProgressIndex = uploadProgressList.indexWhere(
            (uploadProgress) => uploadProgress.docId == docId,
          );

          if (uploadProgressIndex == -1) {
            uploadProgressList.add(UploadingProgress(
              docId,
              progress,
            ));
          } else {
            uploadProgressList[uploadProgressIndex] = UploadingProgress(
              docId,
              progress,
            );
          }

          return state.copyWith(
            fileStatus: FileStatus.uploading,
            uploadProgressList: uploadProgressList,
          );
        },
      );
    } on FirebaseException catch (_) {
      final state = this.state;

      final errorList = state.fileStatus == FileStatus.error
          ? List<MessageModel>.from(state.errorList)
          : <MessageModel>[];

      final errorIndex = errorList.indexWhere(
        (error) => error.docId == docId,
      );

      final filepath = image.path;
      if (errorIndex == -1) {
        errorList.add(MessageModel(
          senderName: '${curentUser.firstName} ${curentUser.lastName}',
          senderUid: curentUser.userId,
          recepientName: '${receiveUser.firstName} ${receiveUser.lastName}',
          recepientUid: receiveUser.userId,
          messageType: messageType,
          message: filepath,
          messageId: 'error',
          time: Timestamp.now(),
          docName: docName,
          docSize: docSize,
          isRead: false,
          docId: docId,
        ));
      } else {
        errorList[errorIndex] = MessageModel(
          senderName: '${curentUser.firstName} ${curentUser.lastName}',
          senderUid: curentUser.userId,
          recepientName: '${receiveUser.firstName} ${receiveUser.lastName}',
          recepientUid: receiveUser.userId,
          messageType: messageType,
          message: filepath,
          messageId: 'error',
          time: Timestamp.now(),
          docName: docName,
          docSize: docSize,
          isRead: false,
          docId: docId,
        );
      }

      emit(state.copyWith(fileStatus: FileStatus.error, errorList: errorList));
    }
  }

  Future<void> _downloadFile({
    required Emitter<FileInteractionState> emit,
    required String url,
    required String messageId,
  }) async {
    try {
      final tempDir = await getApplicationDocumentsDirectory();

      final path = '${tempDir.path}/${url}';
      final file = File(path);
      if (file.existsSync()) {
        await OpenFile.open(path);
      } else {
        final downloadProgress =
            await _firebaseStorageGatewayImpl.downloadFile(url, file);
        if (url.isNotEmpty)
          await emit.forEach(
            _firebaseStorageGatewayImpl.downloadProgress(downloadProgress),
            onData: (dowProgress) {
              final state = this.state;

              final progressList = state.fileStatus == FileStatus.downloading
                  ? List<DownloadingProgress>.from(
                      state.downloadingProgressList,
                    )
                  : <DownloadingProgress>[];

              final progressIndex = progressList.indexWhere(
                (downloadProgress) => downloadProgress.id == messageId,
              );
              if (progressIndex == -1) {
                progressList.add(DownloadingProgress(
                  messageId,
                  dowProgress,
                ));
              } else {
                progressList[progressIndex] = DownloadingProgress(
                  messageId,
                  dowProgress,
                );
              }

              return state.copyWith(downloadingProgressList: progressList);
            },
          );
      }
    } on SocketException catch (e) {
      debugPrint(e.message);
    } on Exception catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }

  Future<FileInteractionState> _errorState(Object error) async =>
      FileInteractionState(
        uploadProgressList: state.uploadProgressList,
        downloadingProgressList: state.downloadingProgressList,
        errorList: state.errorList,
        fileStatus: FileStatus.error,
        error: error,
        status: BlocStatus.error,
      );
}
