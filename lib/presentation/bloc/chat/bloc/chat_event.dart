part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.sendMessage({
    required String message,
    required String messageType,
  }) = _SendMessage;

  const factory ChatEvent.getAllMessages() = _GetAllMessages;

  const factory ChatEvent.createChat() = _CreateChat;

  const factory ChatEvent.uploadImage({
    required String messageType,
    required File image,
    required String docSize,
    required String docName,
  }) = _UploadImage;

  const factory ChatEvent.seenMessages() = _SeenMessages;

  const factory ChatEvent.updateChattingWithId() = _UpdateChattingWithId;
}
