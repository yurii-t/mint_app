import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class MessageModel extends Equatable {
  final String senderName;
  final String senderUid;
  final String recepientName;
  final String recepientUid;
  final String messageType;
  final String message;
  final String messageId;
  final Timestamp time;
  final String docSize;
  final String docName;
  final bool isRead;
  final String docId;

  const MessageModel({
    required this.senderName,
    required this.senderUid,
    required this.recepientName,
    required this.recepientUid,
    required this.messageType,
    required this.message,
    required this.messageId,
    required this.time,
    required this.docSize,
    required this.docName,
    required this.isRead,
    required this.docId,
  });

  @override
  List<Object?> get props => [
        this.senderName,
        senderUid,
        recepientName,
        recepientUid,
        messageType,
        message,
        messageId,
        time,
        docSize,
        docName,
        isRead,
        docId,
      ];

  factory MessageModel.fromSnapShot(DocumentSnapshot snap) {
    return MessageModel(
      senderName: snap['senderName'] as String,
      senderUid: snap['senderUid'] as String,
      recepientName: snap['recepientName'] as String,
      recepientUid: snap['recepientUid'] as String,
      messageType: snap['messageType'] as String,
      message: snap['message'] as String,
      messageId: snap['messageId'] as String,
      time: snap['time'] as Timestamp,
      docSize: snap['docSize'] as String,
      docName: snap['docName'] as String,
      isRead: snap['isRead'] as bool,
      docId: snap['docId'] as String,
    );
  }

  Map<String, Object> toDocument() {
    return {
      'senderName': senderName,
      'senderUid': senderUid,
      'recepientName': recepientName,
      'recepientUid': recepientUid,
      'messageType': messageType,
      'message': message,
      'messageId': messageId,
      'time': time,
      'docSize': docSize,
      'docName': docName,
      'isRead': isRead,
      'docId': docId,
    };
  }
}
