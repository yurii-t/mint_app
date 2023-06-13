// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String messageType) sendMessage,
    required TResult Function() getAllMessages,
    required TResult Function() createChat,
    required TResult Function(
            String messageType, File image, String docSize, String docName)
        uploadImage,
    required TResult Function() seenMessages,
    required TResult Function() updateChattingWithId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String messageType)? sendMessage,
    TResult? Function()? getAllMessages,
    TResult? Function()? createChat,
    TResult? Function(
            String messageType, File image, String docSize, String docName)?
        uploadImage,
    TResult? Function()? seenMessages,
    TResult? Function()? updateChattingWithId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String messageType)? sendMessage,
    TResult Function()? getAllMessages,
    TResult Function()? createChat,
    TResult Function(
            String messageType, File image, String docSize, String docName)?
        uploadImage,
    TResult Function()? seenMessages,
    TResult Function()? updateChattingWithId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_GetAllMessages value) getAllMessages,
    required TResult Function(_CreateChat value) createChat,
    required TResult Function(_UploadImage value) uploadImage,
    required TResult Function(_SeenMessages value) seenMessages,
    required TResult Function(_UpdateChattingWithId value) updateChattingWithId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_GetAllMessages value)? getAllMessages,
    TResult? Function(_CreateChat value)? createChat,
    TResult? Function(_UploadImage value)? uploadImage,
    TResult? Function(_SeenMessages value)? seenMessages,
    TResult? Function(_UpdateChattingWithId value)? updateChattingWithId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_GetAllMessages value)? getAllMessages,
    TResult Function(_CreateChat value)? createChat,
    TResult Function(_UploadImage value)? uploadImage,
    TResult Function(_SeenMessages value)? seenMessages,
    TResult Function(_UpdateChattingWithId value)? updateChattingWithId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SendMessageCopyWith<$Res> {
  factory _$$_SendMessageCopyWith(
          _$_SendMessage value, $Res Function(_$_SendMessage) then) =
      __$$_SendMessageCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String messageType});
}

/// @nodoc
class __$$_SendMessageCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$_SendMessage>
    implements _$$_SendMessageCopyWith<$Res> {
  __$$_SendMessageCopyWithImpl(
      _$_SendMessage _value, $Res Function(_$_SendMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? messageType = null,
  }) {
    return _then(_$_SendMessage(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      messageType: null == messageType
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SendMessage with DiagnosticableTreeMixin implements _SendMessage {
  const _$_SendMessage({required this.message, required this.messageType});

  @override
  final String message;
  @override
  final String messageType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatEvent.sendMessage(message: $message, messageType: $messageType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatEvent.sendMessage'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('messageType', messageType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendMessage &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.messageType, messageType) ||
                other.messageType == messageType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, messageType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendMessageCopyWith<_$_SendMessage> get copyWith =>
      __$$_SendMessageCopyWithImpl<_$_SendMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String messageType) sendMessage,
    required TResult Function() getAllMessages,
    required TResult Function() createChat,
    required TResult Function(
            String messageType, File image, String docSize, String docName)
        uploadImage,
    required TResult Function() seenMessages,
    required TResult Function() updateChattingWithId,
  }) {
    return sendMessage(message, messageType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String messageType)? sendMessage,
    TResult? Function()? getAllMessages,
    TResult? Function()? createChat,
    TResult? Function(
            String messageType, File image, String docSize, String docName)?
        uploadImage,
    TResult? Function()? seenMessages,
    TResult? Function()? updateChattingWithId,
  }) {
    return sendMessage?.call(message, messageType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String messageType)? sendMessage,
    TResult Function()? getAllMessages,
    TResult Function()? createChat,
    TResult Function(
            String messageType, File image, String docSize, String docName)?
        uploadImage,
    TResult Function()? seenMessages,
    TResult Function()? updateChattingWithId,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(message, messageType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_GetAllMessages value) getAllMessages,
    required TResult Function(_CreateChat value) createChat,
    required TResult Function(_UploadImage value) uploadImage,
    required TResult Function(_SeenMessages value) seenMessages,
    required TResult Function(_UpdateChattingWithId value) updateChattingWithId,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_GetAllMessages value)? getAllMessages,
    TResult? Function(_CreateChat value)? createChat,
    TResult? Function(_UploadImage value)? uploadImage,
    TResult? Function(_SeenMessages value)? seenMessages,
    TResult? Function(_UpdateChattingWithId value)? updateChattingWithId,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_GetAllMessages value)? getAllMessages,
    TResult Function(_CreateChat value)? createChat,
    TResult Function(_UploadImage value)? uploadImage,
    TResult Function(_SeenMessages value)? seenMessages,
    TResult Function(_UpdateChattingWithId value)? updateChattingWithId,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessage implements ChatEvent {
  const factory _SendMessage(
      {required final String message,
      required final String messageType}) = _$_SendMessage;

  String get message;
  String get messageType;
  @JsonKey(ignore: true)
  _$$_SendMessageCopyWith<_$_SendMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetAllMessagesCopyWith<$Res> {
  factory _$$_GetAllMessagesCopyWith(
          _$_GetAllMessages value, $Res Function(_$_GetAllMessages) then) =
      __$$_GetAllMessagesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetAllMessagesCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$_GetAllMessages>
    implements _$$_GetAllMessagesCopyWith<$Res> {
  __$$_GetAllMessagesCopyWithImpl(
      _$_GetAllMessages _value, $Res Function(_$_GetAllMessages) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetAllMessages
    with DiagnosticableTreeMixin
    implements _GetAllMessages {
  const _$_GetAllMessages();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatEvent.getAllMessages()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ChatEvent.getAllMessages'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetAllMessages);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String messageType) sendMessage,
    required TResult Function() getAllMessages,
    required TResult Function() createChat,
    required TResult Function(
            String messageType, File image, String docSize, String docName)
        uploadImage,
    required TResult Function() seenMessages,
    required TResult Function() updateChattingWithId,
  }) {
    return getAllMessages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String messageType)? sendMessage,
    TResult? Function()? getAllMessages,
    TResult? Function()? createChat,
    TResult? Function(
            String messageType, File image, String docSize, String docName)?
        uploadImage,
    TResult? Function()? seenMessages,
    TResult? Function()? updateChattingWithId,
  }) {
    return getAllMessages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String messageType)? sendMessage,
    TResult Function()? getAllMessages,
    TResult Function()? createChat,
    TResult Function(
            String messageType, File image, String docSize, String docName)?
        uploadImage,
    TResult Function()? seenMessages,
    TResult Function()? updateChattingWithId,
    required TResult orElse(),
  }) {
    if (getAllMessages != null) {
      return getAllMessages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_GetAllMessages value) getAllMessages,
    required TResult Function(_CreateChat value) createChat,
    required TResult Function(_UploadImage value) uploadImage,
    required TResult Function(_SeenMessages value) seenMessages,
    required TResult Function(_UpdateChattingWithId value) updateChattingWithId,
  }) {
    return getAllMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_GetAllMessages value)? getAllMessages,
    TResult? Function(_CreateChat value)? createChat,
    TResult? Function(_UploadImage value)? uploadImage,
    TResult? Function(_SeenMessages value)? seenMessages,
    TResult? Function(_UpdateChattingWithId value)? updateChattingWithId,
  }) {
    return getAllMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_GetAllMessages value)? getAllMessages,
    TResult Function(_CreateChat value)? createChat,
    TResult Function(_UploadImage value)? uploadImage,
    TResult Function(_SeenMessages value)? seenMessages,
    TResult Function(_UpdateChattingWithId value)? updateChattingWithId,
    required TResult orElse(),
  }) {
    if (getAllMessages != null) {
      return getAllMessages(this);
    }
    return orElse();
  }
}

abstract class _GetAllMessages implements ChatEvent {
  const factory _GetAllMessages() = _$_GetAllMessages;
}

/// @nodoc
abstract class _$$_CreateChatCopyWith<$Res> {
  factory _$$_CreateChatCopyWith(
          _$_CreateChat value, $Res Function(_$_CreateChat) then) =
      __$$_CreateChatCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CreateChatCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$_CreateChat>
    implements _$$_CreateChatCopyWith<$Res> {
  __$$_CreateChatCopyWithImpl(
      _$_CreateChat _value, $Res Function(_$_CreateChat) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CreateChat with DiagnosticableTreeMixin implements _CreateChat {
  const _$_CreateChat();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatEvent.createChat()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ChatEvent.createChat'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CreateChat);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String messageType) sendMessage,
    required TResult Function() getAllMessages,
    required TResult Function() createChat,
    required TResult Function(
            String messageType, File image, String docSize, String docName)
        uploadImage,
    required TResult Function() seenMessages,
    required TResult Function() updateChattingWithId,
  }) {
    return createChat();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String messageType)? sendMessage,
    TResult? Function()? getAllMessages,
    TResult? Function()? createChat,
    TResult? Function(
            String messageType, File image, String docSize, String docName)?
        uploadImage,
    TResult? Function()? seenMessages,
    TResult? Function()? updateChattingWithId,
  }) {
    return createChat?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String messageType)? sendMessage,
    TResult Function()? getAllMessages,
    TResult Function()? createChat,
    TResult Function(
            String messageType, File image, String docSize, String docName)?
        uploadImage,
    TResult Function()? seenMessages,
    TResult Function()? updateChattingWithId,
    required TResult orElse(),
  }) {
    if (createChat != null) {
      return createChat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_GetAllMessages value) getAllMessages,
    required TResult Function(_CreateChat value) createChat,
    required TResult Function(_UploadImage value) uploadImage,
    required TResult Function(_SeenMessages value) seenMessages,
    required TResult Function(_UpdateChattingWithId value) updateChattingWithId,
  }) {
    return createChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_GetAllMessages value)? getAllMessages,
    TResult? Function(_CreateChat value)? createChat,
    TResult? Function(_UploadImage value)? uploadImage,
    TResult? Function(_SeenMessages value)? seenMessages,
    TResult? Function(_UpdateChattingWithId value)? updateChattingWithId,
  }) {
    return createChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_GetAllMessages value)? getAllMessages,
    TResult Function(_CreateChat value)? createChat,
    TResult Function(_UploadImage value)? uploadImage,
    TResult Function(_SeenMessages value)? seenMessages,
    TResult Function(_UpdateChattingWithId value)? updateChattingWithId,
    required TResult orElse(),
  }) {
    if (createChat != null) {
      return createChat(this);
    }
    return orElse();
  }
}

abstract class _CreateChat implements ChatEvent {
  const factory _CreateChat() = _$_CreateChat;
}

/// @nodoc
abstract class _$$_UploadImageCopyWith<$Res> {
  factory _$$_UploadImageCopyWith(
          _$_UploadImage value, $Res Function(_$_UploadImage) then) =
      __$$_UploadImageCopyWithImpl<$Res>;
  @useResult
  $Res call({String messageType, File image, String docSize, String docName});
}

/// @nodoc
class __$$_UploadImageCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$_UploadImage>
    implements _$$_UploadImageCopyWith<$Res> {
  __$$_UploadImageCopyWithImpl(
      _$_UploadImage _value, $Res Function(_$_UploadImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageType = null,
    Object? image = null,
    Object? docSize = null,
    Object? docName = null,
  }) {
    return _then(_$_UploadImage(
      messageType: null == messageType
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
      docSize: null == docSize
          ? _value.docSize
          : docSize // ignore: cast_nullable_to_non_nullable
              as String,
      docName: null == docName
          ? _value.docName
          : docName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UploadImage with DiagnosticableTreeMixin implements _UploadImage {
  const _$_UploadImage(
      {required this.messageType,
      required this.image,
      required this.docSize,
      required this.docName});

  @override
  final String messageType;
  @override
  final File image;
  @override
  final String docSize;
  @override
  final String docName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatEvent.uploadImage(messageType: $messageType, image: $image, docSize: $docSize, docName: $docName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatEvent.uploadImage'))
      ..add(DiagnosticsProperty('messageType', messageType))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('docSize', docSize))
      ..add(DiagnosticsProperty('docName', docName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UploadImage &&
            (identical(other.messageType, messageType) ||
                other.messageType == messageType) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.docSize, docSize) || other.docSize == docSize) &&
            (identical(other.docName, docName) || other.docName == docName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, messageType, image, docSize, docName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UploadImageCopyWith<_$_UploadImage> get copyWith =>
      __$$_UploadImageCopyWithImpl<_$_UploadImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String messageType) sendMessage,
    required TResult Function() getAllMessages,
    required TResult Function() createChat,
    required TResult Function(
            String messageType, File image, String docSize, String docName)
        uploadImage,
    required TResult Function() seenMessages,
    required TResult Function() updateChattingWithId,
  }) {
    return uploadImage(messageType, image, docSize, docName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String messageType)? sendMessage,
    TResult? Function()? getAllMessages,
    TResult? Function()? createChat,
    TResult? Function(
            String messageType, File image, String docSize, String docName)?
        uploadImage,
    TResult? Function()? seenMessages,
    TResult? Function()? updateChattingWithId,
  }) {
    return uploadImage?.call(messageType, image, docSize, docName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String messageType)? sendMessage,
    TResult Function()? getAllMessages,
    TResult Function()? createChat,
    TResult Function(
            String messageType, File image, String docSize, String docName)?
        uploadImage,
    TResult Function()? seenMessages,
    TResult Function()? updateChattingWithId,
    required TResult orElse(),
  }) {
    if (uploadImage != null) {
      return uploadImage(messageType, image, docSize, docName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_GetAllMessages value) getAllMessages,
    required TResult Function(_CreateChat value) createChat,
    required TResult Function(_UploadImage value) uploadImage,
    required TResult Function(_SeenMessages value) seenMessages,
    required TResult Function(_UpdateChattingWithId value) updateChattingWithId,
  }) {
    return uploadImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_GetAllMessages value)? getAllMessages,
    TResult? Function(_CreateChat value)? createChat,
    TResult? Function(_UploadImage value)? uploadImage,
    TResult? Function(_SeenMessages value)? seenMessages,
    TResult? Function(_UpdateChattingWithId value)? updateChattingWithId,
  }) {
    return uploadImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_GetAllMessages value)? getAllMessages,
    TResult Function(_CreateChat value)? createChat,
    TResult Function(_UploadImage value)? uploadImage,
    TResult Function(_SeenMessages value)? seenMessages,
    TResult Function(_UpdateChattingWithId value)? updateChattingWithId,
    required TResult orElse(),
  }) {
    if (uploadImage != null) {
      return uploadImage(this);
    }
    return orElse();
  }
}

abstract class _UploadImage implements ChatEvent {
  const factory _UploadImage(
      {required final String messageType,
      required final File image,
      required final String docSize,
      required final String docName}) = _$_UploadImage;

  String get messageType;
  File get image;
  String get docSize;
  String get docName;
  @JsonKey(ignore: true)
  _$$_UploadImageCopyWith<_$_UploadImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SeenMessagesCopyWith<$Res> {
  factory _$$_SeenMessagesCopyWith(
          _$_SeenMessages value, $Res Function(_$_SeenMessages) then) =
      __$$_SeenMessagesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SeenMessagesCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$_SeenMessages>
    implements _$$_SeenMessagesCopyWith<$Res> {
  __$$_SeenMessagesCopyWithImpl(
      _$_SeenMessages _value, $Res Function(_$_SeenMessages) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SeenMessages with DiagnosticableTreeMixin implements _SeenMessages {
  const _$_SeenMessages();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatEvent.seenMessages()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ChatEvent.seenMessages'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SeenMessages);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String messageType) sendMessage,
    required TResult Function() getAllMessages,
    required TResult Function() createChat,
    required TResult Function(
            String messageType, File image, String docSize, String docName)
        uploadImage,
    required TResult Function() seenMessages,
    required TResult Function() updateChattingWithId,
  }) {
    return seenMessages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String messageType)? sendMessage,
    TResult? Function()? getAllMessages,
    TResult? Function()? createChat,
    TResult? Function(
            String messageType, File image, String docSize, String docName)?
        uploadImage,
    TResult? Function()? seenMessages,
    TResult? Function()? updateChattingWithId,
  }) {
    return seenMessages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String messageType)? sendMessage,
    TResult Function()? getAllMessages,
    TResult Function()? createChat,
    TResult Function(
            String messageType, File image, String docSize, String docName)?
        uploadImage,
    TResult Function()? seenMessages,
    TResult Function()? updateChattingWithId,
    required TResult orElse(),
  }) {
    if (seenMessages != null) {
      return seenMessages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_GetAllMessages value) getAllMessages,
    required TResult Function(_CreateChat value) createChat,
    required TResult Function(_UploadImage value) uploadImage,
    required TResult Function(_SeenMessages value) seenMessages,
    required TResult Function(_UpdateChattingWithId value) updateChattingWithId,
  }) {
    return seenMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_GetAllMessages value)? getAllMessages,
    TResult? Function(_CreateChat value)? createChat,
    TResult? Function(_UploadImage value)? uploadImage,
    TResult? Function(_SeenMessages value)? seenMessages,
    TResult? Function(_UpdateChattingWithId value)? updateChattingWithId,
  }) {
    return seenMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_GetAllMessages value)? getAllMessages,
    TResult Function(_CreateChat value)? createChat,
    TResult Function(_UploadImage value)? uploadImage,
    TResult Function(_SeenMessages value)? seenMessages,
    TResult Function(_UpdateChattingWithId value)? updateChattingWithId,
    required TResult orElse(),
  }) {
    if (seenMessages != null) {
      return seenMessages(this);
    }
    return orElse();
  }
}

abstract class _SeenMessages implements ChatEvent {
  const factory _SeenMessages() = _$_SeenMessages;
}

/// @nodoc
abstract class _$$_UpdateChattingWithIdCopyWith<$Res> {
  factory _$$_UpdateChattingWithIdCopyWith(_$_UpdateChattingWithId value,
          $Res Function(_$_UpdateChattingWithId) then) =
      __$$_UpdateChattingWithIdCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UpdateChattingWithIdCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$_UpdateChattingWithId>
    implements _$$_UpdateChattingWithIdCopyWith<$Res> {
  __$$_UpdateChattingWithIdCopyWithImpl(_$_UpdateChattingWithId _value,
      $Res Function(_$_UpdateChattingWithId) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UpdateChattingWithId
    with DiagnosticableTreeMixin
    implements _UpdateChattingWithId {
  const _$_UpdateChattingWithId();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatEvent.updateChattingWithId()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ChatEvent.updateChattingWithId'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UpdateChattingWithId);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String messageType) sendMessage,
    required TResult Function() getAllMessages,
    required TResult Function() createChat,
    required TResult Function(
            String messageType, File image, String docSize, String docName)
        uploadImage,
    required TResult Function() seenMessages,
    required TResult Function() updateChattingWithId,
  }) {
    return updateChattingWithId();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String messageType)? sendMessage,
    TResult? Function()? getAllMessages,
    TResult? Function()? createChat,
    TResult? Function(
            String messageType, File image, String docSize, String docName)?
        uploadImage,
    TResult? Function()? seenMessages,
    TResult? Function()? updateChattingWithId,
  }) {
    return updateChattingWithId?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String messageType)? sendMessage,
    TResult Function()? getAllMessages,
    TResult Function()? createChat,
    TResult Function(
            String messageType, File image, String docSize, String docName)?
        uploadImage,
    TResult Function()? seenMessages,
    TResult Function()? updateChattingWithId,
    required TResult orElse(),
  }) {
    if (updateChattingWithId != null) {
      return updateChattingWithId();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_GetAllMessages value) getAllMessages,
    required TResult Function(_CreateChat value) createChat,
    required TResult Function(_UploadImage value) uploadImage,
    required TResult Function(_SeenMessages value) seenMessages,
    required TResult Function(_UpdateChattingWithId value) updateChattingWithId,
  }) {
    return updateChattingWithId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_GetAllMessages value)? getAllMessages,
    TResult? Function(_CreateChat value)? createChat,
    TResult? Function(_UploadImage value)? uploadImage,
    TResult? Function(_SeenMessages value)? seenMessages,
    TResult? Function(_UpdateChattingWithId value)? updateChattingWithId,
  }) {
    return updateChattingWithId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_GetAllMessages value)? getAllMessages,
    TResult Function(_CreateChat value)? createChat,
    TResult Function(_UploadImage value)? uploadImage,
    TResult Function(_SeenMessages value)? seenMessages,
    TResult Function(_UpdateChattingWithId value)? updateChattingWithId,
    required TResult orElse(),
  }) {
    if (updateChattingWithId != null) {
      return updateChattingWithId(this);
    }
    return orElse();
  }
}

abstract class _UpdateChattingWithId implements ChatEvent {
  const factory _UpdateChattingWithId() = _$_UpdateChattingWithId;
}

/// @nodoc
mixin _$ChatState {
  BlocStatus get status => throw _privateConstructorUsedError;
  List<MessageModel> get messages => throw _privateConstructorUsedError;
  CurrentUser? get sender => throw _privateConstructorUsedError;
  CurrentUser? get receiveUser => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call(
      {BlocStatus status,
      List<MessageModel> messages,
      CurrentUser? sender,
      CurrentUser? receiveUser,
      Object? error});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? messages = null,
    Object? sender = freezed,
    Object? receiveUser = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
      sender: freezed == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as CurrentUser?,
      receiveUser: freezed == receiveUser
          ? _value.receiveUser
          : receiveUser // ignore: cast_nullable_to_non_nullable
              as CurrentUser?,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatStateCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$$_ChatStateCopyWith(
          _$_ChatState value, $Res Function(_$_ChatState) then) =
      __$$_ChatStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status,
      List<MessageModel> messages,
      CurrentUser? sender,
      CurrentUser? receiveUser,
      Object? error});
}

/// @nodoc
class __$$_ChatStateCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_ChatState>
    implements _$$_ChatStateCopyWith<$Res> {
  __$$_ChatStateCopyWithImpl(
      _$_ChatState _value, $Res Function(_$_ChatState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? messages = null,
    Object? sender = freezed,
    Object? receiveUser = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_ChatState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
      sender: freezed == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as CurrentUser?,
      receiveUser: freezed == receiveUser
          ? _value.receiveUser
          : receiveUser // ignore: cast_nullable_to_non_nullable
              as CurrentUser?,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_ChatState with DiagnosticableTreeMixin implements _ChatState {
  const _$_ChatState(
      {required this.status,
      required final List<MessageModel> messages,
      this.sender,
      this.receiveUser,
      this.error})
      : _messages = messages;

  @override
  final BlocStatus status;
  final List<MessageModel> _messages;
  @override
  List<MessageModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final CurrentUser? sender;
  @override
  final CurrentUser? receiveUser;
  @override
  final Object? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatState(status: $status, messages: $messages, sender: $sender, receiveUser: $receiveUser, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('messages', messages))
      ..add(DiagnosticsProperty('sender', sender))
      ..add(DiagnosticsProperty('receiveUser', receiveUser))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.receiveUser, receiveUser) ||
                other.receiveUser == receiveUser) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_messages),
      sender,
      receiveUser,
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatStateCopyWith<_$_ChatState> get copyWith =>
      __$$_ChatStateCopyWithImpl<_$_ChatState>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState(
      {required final BlocStatus status,
      required final List<MessageModel> messages,
      final CurrentUser? sender,
      final CurrentUser? receiveUser,
      final Object? error}) = _$_ChatState;

  @override
  BlocStatus get status;
  @override
  List<MessageModel> get messages;
  @override
  CurrentUser? get sender;
  @override
  CurrentUser? get receiveUser;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$_ChatStateCopyWith<_$_ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}
