import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import 'package:mint_app/data/models/message_model.dart';
import 'package:mint_app/l10n/l10n.dart';
import 'package:mint_app/presentation/bloc/file_interaction/bloc/file_interaction_bloc.dart';
import 'package:mint_app/presentation/pages/home/chat/widgets/message_bubble.dart';
import 'package:open_file/open_file.dart';

class FileInteractionMessage extends StatefulWidget {
  const FileInteractionMessage({
    required this.sender,
    required this.messagesData,
    required this.fileInteractionBloc,
    required this.pickedFile,
    Key? key,
  }) : super(key: key);
  final bool sender;
  final MessageModel messagesData;
  final FileInteractionBloc fileInteractionBloc;
  final PlatformFile? pickedFile;
  @override
  State<FileInteractionMessage> createState() => _FileInteractionMessageState();
}

class _FileInteractionMessageState extends State<FileInteractionMessage> {
  List<MessageModel> errorList = [];

  double dowProgress = 0;
  String progressString = '';
  double updateProgress = 0;
  String updateProgressString = '';
  bool fileDownloaded = false;
  bool downloading = false;
  String? downloadedPath;
  bool uploadError = false;

  void openFile(String? file) {
    OpenFile.open(file);
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = context.l10n;

    return GestureDetector(
      onTap: () {
        if (!widget.sender) {
          widget.fileInteractionBloc.add(
            FileInteractionEvent.downloadFile(
              url: widget.messagesData.message,
              messageId: widget.messagesData.messageId,
            ),
          );
        } else
          openFile(downloadedPath);
      },
      child: BlocBuilder<FileInteractionBloc, FileInteractionState>(
        bloc: widget.fileInteractionBloc,
        builder: (context, state) {
          if (state.fileStatus == FileStatus.error &&
              state.errorList.contains(widget.messagesData)) {
            errorList = state.errorList;
            final errorIndex = state.errorList.indexWhere(
              (element) => element.docId == widget.messagesData.docId,
            );

            final errorMes = errorIndex != -1
                ? state.errorList[errorIndex]
                : state.errorList.last;

            return GestureDetector(
              onTap: () {
                showModalBottomSheet<Widget?>(
                  useRootNavigator: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(24),
                    ),
                  ),
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                        top: 35,
                        bottom: 50,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              final resendfile = File(
                                widget.pickedFile?.path ?? '',
                              );
                              // ignore: unnecessary_null_comparison
                              if (resendfile != null) {
                                widget.fileInteractionBloc.add(
                                  FileInteractionEvent.uploadFile(
                                    messageType: 'file',
                                    image: resendfile,
                                    docSize: errorMes.docSize,
                                    docName: errorMes.docName,
                                    docId: errorMes.docId,
                                  ),
                                );
                              }

                              return;
                            },
                            child: Row(
                              children: [
                                const Icon(Icons.restore_page_outlined),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  l10n.resend,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 26,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                state.errorList.remove(
                                  errorMes,
                                );
                              });
                            },
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.delete,
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  l10n.delete,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  MessageBubble(
                    sender: widget.sender,
                    docSize: errorMes.docSize,
                    text: errorMes.docName,
                    type: MessageBubbleType.sendDocError,
                    time: DateFormat('hh:mm a').format(
                      errorMes.time.toDate(),
                    ),
                    error: uploadError,
                    seen: false,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Icon(Icons.error),
                ],
              ),
            );
          }

          if (state.fileStatus == FileStatus.downloading) {
            final downloadIndex = state.downloadingProgressList.indexWhere(
              (progressId) => progressId.id == widget.messagesData.messageId,
            );

            final progress = downloadIndex != -1
                ? state.downloadingProgressList[downloadIndex].progress
                : 0;
            dowProgress = progress.toDouble();
            progressString =
                '${(dowProgress * 100).toStringAsFixed(0)}% ${l10n.downloaded}';
          }
          if (state.fileStatus == FileStatus.uploading) {
            final uploadIndex = state.uploadProgressList.indexWhere(
              (progressDocId) =>
                  progressDocId.docId == widget.messagesData.docId,
            );

            final uploadProgress = uploadIndex != -1
                ? state.uploadProgressList[uploadIndex].uploadProgress
                : 0;
            updateProgress = uploadProgress.toDouble();
            updateProgressString =
                '${(updateProgress * 100).toStringAsFixed(0)}% ${l10n.uploaded}';

            return MessageBubble(
              sender: widget.sender,
              seen: widget.messagesData.isRead,
              error: uploadError,
              uploadValue: updateProgress,
              uploadString: updateProgressString,
              docSize: widget.messagesData.docSize.toString(),
              type: MessageBubbleType.docMessage,
              text: widget.messagesData.docName,
              time: DateFormat('hh:mm a').format(
                widget.messagesData.time.toDate(),
              ),
            );
          }

          return MessageBubble(
            sender: widget.sender,
            seen: widget.messagesData.isRead,
            error: false,
            docSize: widget.messagesData.docSize.toString(),
            downloadString: progressString,
            downloadValue: dowProgress,
            type: MessageBubbleType.docMessage,
            text: widget.messagesData.docName,
            time:
                DateFormat('hh:mm a').format(widget.messagesData.time.toDate()),
          );
        },
      ),
    );
  }
}
