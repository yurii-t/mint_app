import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class ChatModel extends Equatable {
  final String chatId;
  final String senderName;
  final String senderUid;
  final String senderPhoneNumber;
  final String recepientName;
  final String recepientUid;
  final String recepientPhoneNumber;
  final String recentTextMessage;
  final bool isRead;
  final Timestamp time;
  final int newMessages;

  const ChatModel({
    required this.chatId,
    required this.senderName,
    required this.senderUid,
    required this.senderPhoneNumber,
    required this.recepientName,
    required this.recepientUid,
    required this.recepientPhoneNumber,
    required this.recentTextMessage,
    required this.isRead,
    required this.time,
    required this.newMessages,
  });

  @override
  List<Object?> get props => [
        senderName,
        senderUid,
        senderPhoneNumber,
        recepientName,
        recepientUid,
        recepientPhoneNumber,
        recentTextMessage,
        isRead,
        time,
        newMessages,
      ];

  factory ChatModel.fromSnapShot(DocumentSnapshot snap) {
    return ChatModel(
      chatId: snap['chatid'] as String,
      senderName: snap['senderName'] as String,
      senderUid: snap['senderUid'] as String,
      senderPhoneNumber: snap['senderPhoneNumber'] as String,
      recepientName: snap['recepientName'] as String,
      recepientUid: snap['recepientUid'] as String,
      recepientPhoneNumber: snap['recepientPhoneNumber'] as String,
      recentTextMessage: snap['recentTextMessage'] as String,
      isRead: snap['isRead'] as bool,
      time: snap['time'] as Timestamp,
      newMessages: snap['newMessages'] as int,
    );
  }
  Map<String, Object> toDocument() {
    return {
      'chatid': chatId,
      'senderName': senderName,
      'senderUid': senderUid,
      'senderPhoneNumber': senderPhoneNumber,
      'recepientName': recepientName,
      'recepientUid': recepientUid,
      'recepientPhoneNumber': recepientPhoneNumber,
      'recentTextMessage': recentTextMessage,
      'isRead': isRead,
      'time': time,
      'newMessages': newMessages,
    };
  }
}
