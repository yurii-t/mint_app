import 'package:equatable/equatable.dart';

class UserCall extends Equatable {
  final String id;
  final String token;
  final String channelName;
  final String callerId;
  final String callerName;
  final String callerAvatar;
  final String receiverId;
  final String receiverName;
  final String receiverAvatar;
  final String status;
  const UserCall({
    required this.id,
    required this.token,
    required this.channelName,
    required this.callerId,
    required this.callerName,
    required this.callerAvatar,
    required this.receiverId,
    required this.receiverName,
    required this.receiverAvatar,
    required this.status,
  });

  UserCall copyWith({
    String? id,
    String? token,
    String? channelName,
    String? callerId,
    String? callerName,
    String? callerAvatar,
    String? receiverId,
    String? receiverName,
    String? receiverAvatar,
    String? status,
  }) {
    return UserCall(
      id: id ?? this.id,
      token: token ?? this.token,
      channelName: channelName ?? this.channelName,
      callerId: callerId ?? this.callerId,
      callerName: callerName ?? this.callerName,
      callerAvatar: callerAvatar ?? this.callerAvatar,
      receiverId: receiverId ?? this.receiverId,
      receiverName: receiverName ?? this.receiverName,
      receiverAvatar: receiverAvatar ?? this.receiverAvatar,
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props {
    return [
      id,
      token,
      channelName,
      callerId,
      callerName,
      callerAvatar,
      receiverId,
      receiverName,
      receiverAvatar,
      status,
    ];
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'token': token,
      'channelName': channelName,
      'callerId': callerId,
      'callerName': callerName,
      'callerAvatar': callerAvatar,
      'receiverId': receiverId,
      'receiverName': receiverName,
      'receiverAvatar': receiverAvatar,
      'status': status,
    };
  }

  factory UserCall.fromMap(
    Map<String, dynamic> map,
  ) {
    return UserCall(
      id: map['id'] as String,
      token: map['token'] as String,
      channelName: map['channelName'] as String,
      callerId: map['callerId'] as String,
      callerName: map['callerName'] as String,
      callerAvatar: map['callerAvatar'] as String,
      receiverId: map['receiverId'] as String,
      receiverName: map['receiverName'] as String,
      receiverAvatar: map['receiverAvatar'] as String,
      status: map['status'] as String,
    );
  }
}
