part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    required BlocStatus status,
    required List<MessageModel> messages,
    CurrentUser? sender,
    CurrentUser? receiveUser,
    Object? error,
  }) = _ChatState;
}
