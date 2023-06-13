import 'package:auto_route/auto_route.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
import 'package:mint_app/backbone/dependency_injection.dart' as di;
import 'package:mint_app/data/models/message_model.dart';
import 'package:mint_app/l10n/l10n.dart';
import 'package:mint_app/presentation/bloc/audio_play/bloc/audio_play_bloc.dart';
import 'package:mint_app/presentation/bloc/audio_record/bloc/audio_record_bloc.dart';
import 'package:mint_app/presentation/bloc/audio_wave_loader/bloc/audio_wave_loader_bloc.dart';
import 'package:mint_app/presentation/bloc/chat/bloc/chat_bloc.dart';
import 'package:mint_app/presentation/bloc/file_interaction/bloc/file_interaction_bloc.dart';
import 'package:mint_app/presentation/bloc/status.dart';
import 'package:mint_app/presentation/pages/home/chat/widgets/audio_message.dart';
import 'package:mint_app/presentation/pages/home/chat/widgets/custom_appbar.dart';
import 'package:mint_app/presentation/pages/home/chat/widgets/file_interaction_message.dart';
import 'package:mint_app/presentation/pages/home/chat/widgets/message_bubble.dart';
import 'package:mint_app/presentation/pages/home/chat/widgets/message_text_field_row.dart';
import 'package:mint_app/theme/app_colors.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  PlatformFile? pickedFile;

  final ChatBloc _chatBloc = di.sl.get();
  final AudioRecordBloc _audioRecordBloc = di.sl.get();
  final AudioPlayBloc _audioPlayBloc = di.sl.get();
  final AudioWaveLoaderBloc _audioWaveLoaderBloc = di.sl.get();
  final FileInteractionBloc _fileInteractionBloc = di.sl.get();

  @override
  void initState() {
    _chatBloc
      ..add(const ChatEvent.createChat())
      ..add(const ChatEvent.getAllMessages())
      ..add(const ChatEvent.updateChattingWithId());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = context.l10n;

    return BlocBuilder<ChatBloc, ChatState>(
      bloc: _chatBloc,
      builder: (context, state) {
        _chatBloc.add(const ChatEvent.seenMessages());
        if (state.status == BlocStatus.loading) {
          return const Scaffold(
            body: Center(
              child: SizedBox(
                width: 24,
                height: 24,
                child: CircularProgressIndicator(),
              ),
            ),
          );
        }
        if (state.status == BlocStatus.loaded) {
          final receiveUserImage = state.receiveUser?.profileImage ?? '';

          final messages = [
            ...state.messages,
          ];

          return Scaffold(
            backgroundColor: AppColors.background,
            appBar: CustomAppBar(
              widgetleft: GestureDetector(
                onTap: () {
                  _chatBloc.add(const ChatEvent.updateChattingWithId());

                  context.router.pop();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.chevron_left,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      l10n.backButton,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              widgetCenter: GestureDetector(
                child: Text(
                  '${state.receiveUser?.firstName} ${state.receiveUser?.lastName}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
              widgetRight: CircleAvatar(
                radius: 15,
                backgroundImage: receiveUserImage != ''
                    ? NetworkImage(receiveUserImage)
                    : null,
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 30),
              child: Column(
                children: [
                  Expanded(
                    child: messages.isEmpty
                        ? Center(
                            child: Text(
                              l10n.noMessageHereYet,
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: AppColors.textGrey,
                              ),
                            ),
                          )
                        : GroupedListView<MessageModel, DateTime>(
                            reverse: true,
                            elements: messages,
                            groupBy: (element) => DateTime(
                              element.time.toDate().year,
                              element.time.toDate().month,
                              element.time.toDate().day,
                            ),
                            groupComparator: (value1, value2) =>
                                value2.compareTo(value1),
                            itemComparator: (item1, item2) =>
                                item1.docName.compareTo(item2.docName),
                            order: GroupedListOrder.ASC,
                            useStickyGroupSeparators: false,
                            groupSeparatorBuilder: (value) => Center(
                              child: Container(
                                alignment: Alignment.center,
                                height: 30,
                                width: 87,
                                margin: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Text(
                                  DateFormat('yyyy-MM-dd').format(value) ==
                                          DateFormat('yyyy-MM-dd')
                                              .format(DateTime.now())
                                      ? l10n.today
                                      : DateFormat('MMM d').format(value),
                                  textAlign: TextAlign.start,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.textGrey,
                                  ),
                                ),
                              ),
                            ),
                            indexedItemBuilder: (context, element, index) {
                              final messageRevers = messages.reversed.toList();

                              final messagesData = messageRevers[index];
                              final bool sender = state.sender?.userId ==
                                  messagesData.senderUid;

                              if (messagesData.messageType == 'image') {
                                return MessageBubble(
                                  sender: sender,
                                  seen: messagesData.isRead,
                                  error: false,
                                  type: MessageBubbleType.imageMessage,
                                  text: messagesData.message,
                                  time: DateFormat('hh:mm a')
                                      .format(messagesData.time.toDate()),
                                );
                              } else if (messagesData.messageType == 'file') {
                                return FileInteractionMessage(
                                  fileInteractionBloc: _fileInteractionBloc,
                                  sender: sender,
                                  messagesData: messagesData,
                                  pickedFile: pickedFile,
                                );
                              } else if (messagesData.messageType == 'audio') {
                                const bool play = false;
                                _audioWaveLoaderBloc.add(
                                  AudioWaveLoaderEvent.started(
                                    messageId: messagesData.messageId,
                                    docName: messagesData.docName,
                                    url: messagesData.message,
                                  ),
                                );

                                return AudioMessage(
                                  messagesData: messagesData,
                                  sender: sender,
                                  play: play,
                                  audioPlayBloc: _audioPlayBloc,
                                  audioWaveLoaderBloc: _audioWaveLoaderBloc,
                                );
                              }

                              return MessageBubble(
                                sender: sender,
                                seen: messagesData.isRead,
                                error: false,
                                type: MessageBubbleType.textMessage,
                                text: messagesData.message,
                                time: DateFormat('hh:mm a')
                                    .format(messagesData.time.toDate()),
                              );
                            },
                          ),
                  ),
                  MessageTextFieldRow(
                    audioRecordBloc: _audioRecordBloc,
                    fileInteractionBloc: _fileInteractionBloc,
                    chatBloc: _chatBloc,
                    pickedFile: (newFile) => pickedFile = newFile,
                  ),
                ],
              ),
            ),
          );
        }

        return const Scaffold(
          body: Center(
            child: SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(),
            ),
          ),
        );
      },
    );
  }
}
