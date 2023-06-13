// ignore_for_file: no-empty-block
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mint_app/gen/assets.gen.dart';
import 'package:mint_app/l10n/l10n.dart';
import 'package:mint_app/presentation/bloc/audio_record/bloc/audio_record_bloc.dart';
import 'package:mint_app/presentation/bloc/chat/bloc/chat_bloc.dart';
import 'package:mint_app/presentation/bloc/file_interaction/bloc/file_interaction_bloc.dart';
import 'package:mint_app/theme/app_colors.dart';

class MessageTextFieldRow extends StatefulWidget {
  const MessageTextFieldRow({
    required this.fileInteractionBloc,
    required this.chatBloc,
    required this.audioRecordBloc,
    required this.pickedFile,
    Key? key,
  }) : super(key: key);
  final FileInteractionBloc fileInteractionBloc;
  final ChatBloc chatBloc;
  final AudioRecordBloc audioRecordBloc;
  final Function(PlatformFile?) pickedFile;

  @override
  State<MessageTextFieldRow> createState() => _MessageTextFieldRowState();
}

class _MessageTextFieldRowState extends State<MessageTextFieldRow> {
  TextEditingController _textController = TextEditingController();

  final ImagePicker _picker = ImagePicker();
  File? image;
  String? imageName;
  num? imageSize;
  PlatformFile? pickedFile;

  @override
  void initState() {
    super.initState();

    _textController.addListener(() {
      setState(() {});
    });
  }

  Future<void> pickFile() async {
    try {
      final file = await FilePicker.platform.pickFiles();
      if (file == null) {
        return;
      }

      setState(() {
        this.pickedFile = file.files.first;
        widget.pickedFile(file.files.first);
      });
    } on PlatformException catch (e) {
      debugPrint('Failed to pick file: $e');
    }
  }

  Future<void> pickImage() async {
    try {
      final image = await _picker.pickImage(source: ImageSource.gallery);

      if (image == null) {
        return;
      }

      final imageTemp = File(image.path);
      final imageSizeTmp = imageTemp.readAsBytesSync().lengthInBytes;

      setState(() {
        this.image = imageTemp;
        this.imageSize = imageSizeTmp;
      });
    } on PlatformException catch (e) {
      debugPrint('Failed to pick image: $e');
    }
  }

  String _formatNumber(int number) {
    String numberStr = number.toString();
    if (number < 10) {
      numberStr = '0$numberStr';
    }

    return numberStr;
  }

  @override
  void dispose() {
    _textController
      // ignore: no-empty-block
      ..removeListener(() {})
      ..dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = context.l10n;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
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
                          pickImage().whenComplete(
                            () {
                              if (image != null) {
                                final currentImage = image;
                                if (currentImage != null)
                                  return widget.chatBloc
                                      .add(ChatEvent.uploadImage(
                                    messageType: 'image',
                                    image: currentImage,
                                    docSize: imageSize.toString(),
                                    docName:
                                        imageName ?? 'image${DateTime.now()}',
                                  ));
                              }

                              return;
                            },
                          );
                        },
                        child: Row(
                          children: [
                            const Icon(Icons.image),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              l10n.photoOrVideo,
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
                          pickFile().whenComplete(() {
                            final double kb = (pickedFile?.size ?? 1) / 1024;
                            final double mb = kb / 1024;
                            final String size = (mb >= 1)
                                ? '${mb.toStringAsFixed(2)} MB'
                                : '${kb.toStringAsFixed(2)} KB';

                            final pkfile = File(pickedFile?.path ?? '');

                            if (pkfile != '') {
                              widget.fileInteractionBloc.add(
                                FileInteractionEvent.uploadFile(
                                  messageType: 'file',
                                  image: pkfile,
                                  docSize: size,
                                  docName: pickedFile?.name ??
                                      'document name loading,..',
                                  docId: '$pkfile/${Timestamp.now()}',
                                ),
                              );
                            }

                            return;
                          });
                        },
                        child: Row(
                          children: [
                            const Icon(Icons.file_open),
                            const SizedBox(
                              width: 12,
                            ),
                            Text(
                              l10n.file,
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
          child: const Icon(Icons.attach_file_sharp),
        ),
        BlocConsumer<AudioRecordBloc, AudioRecordState>(
          bloc: widget.audioRecordBloc,
          listener: (context, state) {
            if (state.audioRecordStatus == AudiRecordStatus.stop) {
              final path = state.path ?? '';
              if (path != '') {
                final audioFile = File(path);
                final audioName = audioFile.path.split('/').last;
                widget.fileInteractionBloc.add(FileInteractionEvent.uploadFile(
                  messageType: 'audio',
                  image: audioFile,
                  docSize: 'min:sec',
                  docName: audioName,
                  docId: '$audioFile/${Timestamp.now()}',
                ));
              }
            }
          },
          builder: (context, state) {
            final voiceRecording =
                (state.audioRecordStatus == AudiRecordStatus.record &&
                        state.isRecording) ||
                    (state.audioRecordStatus == AudiRecordStatus.stop &&
                        state.isRecording);

            String minutes = '00';
            String seconds = '00';
            if (state.audioRecordStatus == AudiRecordStatus.record) {
              minutes = _formatNumber(state.recordTime ~/ 60);
              seconds = _formatNumber(state.recordTime % 60);
            }

            return SizedBox(
              child: !voiceRecording
                  ? TextField(
                      controller: _textController,
                      minLines: 1,
                      maxLines: null,
                      textInputAction: TextInputAction.newline,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(
                          left: 15,
                          right: 15,
                          top: 8,
                          bottom: 8,
                        ),
                        filled: true,
                        fillColor: AppColors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide.none,
                        ),
                        hintText: l10n.message,
                        constraints: BoxConstraints(
                          minHeight: 35,
                          maxWidth: MediaQuery.of(context).size.width * 0.7,
                          minWidth: MediaQuery.of(context).size.width * 0.7,
                        ),
                        helperStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textGrey,
                        ),
                      ),
                    )
                  : Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: 5,
                        ),
                        const SizedBox(width: 5),
                        Text('$minutes:$seconds'),
                        const SizedBox(width: 75),
                        const Icon(Icons.chevron_left),
                        const SizedBox(width: 5),
                        Text(l10n.swipeToCancel),
                      ],
                    ),
            );
          },
        ),
        GestureDetector(
          onLongPressStart: (_) {
            widget.audioRecordBloc.add(const AudioRecordEvent.onRecord());
          },
          onLongPressEnd: (_) {
            widget.audioRecordBloc.add(const AudioRecordEvent.onStop());
          },
          onLongPressMoveUpdate: (details) {
            final Offset localPosition = details.localPosition;

            if (localPosition.dx < -1.0) {
              widget.audioRecordBloc.add(const AudioRecordEvent.onCancel());
            }
          },
          onTap: () {
            if (_textController.text.isNotEmpty) {
              widget.chatBloc.add(ChatEvent.sendMessage(
                message: _textController.text,
                messageType: 'Text',
              ));
            }
            _textController.clear();
          },
          child: _textController.text.isNotEmpty
              ? const Icon(Icons.send)
              : const $AssetsIconsGen().mic.svg(),
        ),
      ],
    );
  }
}
