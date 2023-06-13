// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: avoid-returning-widgets
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:just_waveform/just_waveform.dart';
import 'package:mint_app/presentation/pages/home/chat/widgets/audio_container.dart';
import 'package:mint_app/presentation/pages/home/chat/widgets/doc_container.dart';
import 'package:mint_app/presentation/pages/home/chat/widgets/error_doc_container.dart';
import 'package:mint_app/presentation/pages/home/chat/widgets/image_container.dart';
import 'package:mint_app/presentation/pages/home/chat/widgets/message_container.dart';
import 'package:mint_app/theme/app_colors.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble({
    required this.type,
    required this.time,
    required this.error,
    required this.seen,
    required this.sender,
    this.text,
    this.downloaded,
    this.docSize,
    this.downloading,
    this.downloadValue,
    this.downloadString,
    this.uploadValue,
    this.uploadString,
    this.url,
    this.isPlaying,
    this.audioWaveform,
    this.audioWaveformDuration,
    this.start,
    this.audioProgress,
    this.audioWaveWidget,
    Key? key,
  }) : super(key: key);
  final MessageBubbleType type;
  final String time;
  final String? text;
  final bool seen;
  final bool? downloaded;
  final bool error;
  final String? docSize;
  final bool? downloading;
  final num? downloadValue;
  final String? downloadString;
  final num? uploadValue;
  final String? uploadString;
  final String? url;
  final bool? isPlaying;
  final Waveform? audioWaveform;
  final Duration? audioWaveformDuration;
  final Duration? start;
  final Duration? audioProgress;
  final Widget? audioWaveWidget;
  final bool sender;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final double maxBubbleWidth = constraints.maxWidth * 0.7;

      return Align(
        alignment: sender ? Alignment.centerRight : Alignment.centerLeft,
        child: !error
            ? buildMessageBubble(
                maxBubbleWidth,
                Colors.transparent,
              )
            : GestureDetector(
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
                            Row(
                              children: [
                                SvgPicture.asset('assets/icons/resend.svg'),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  'Resend',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 26,
                            ),
                            Row(
                              children: [
                                SvgPicture.asset('assets/icons/delete.svg'),
                                const SizedBox(
                                  width: 12,
                                ),
                                const Text(
                                  'Delete',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
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
                    buildMessageBubble(
                      maxBubbleWidth,
                      Colors.red,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SvgPicture.asset('assets/icons/error.svg'),
                  ],
                ),
              ),
      );
    });
  }

  Widget buildMessageBubble(
    double maxWidth,
    Color errorBorder,
  ) {
    switch (type) {
      case MessageBubbleType.textMessage:
        {
          return MessageContainer(
            text: text,
            time: time,
            maxWidth: maxWidth,
            color: sender ? AppColors.blue : AppColors.white,
            messageColor: sender ? AppColors.white : AppColors.black,
            timeColor: sender ? AppColors.white : AppColors.black,
            border: sender
                ? BorderRadius.circular(16)
                : const BorderRadius.only(
                    topLeft: Radius.circular(19),
                    topRight: Radius.circular(19),
                    bottomRight: Radius.circular(19),
                  ),
            seen: sender ? seen : false,
            errorBorder: errorBorder,
          );
        }

      case MessageBubbleType.imageMessage:
        {
          return ImageCotainer(
            imageUrl: text,
            color: sender ? AppColors.blue : AppColors.white,
            border: sender
                ? BorderRadius.circular(16)
                : const BorderRadius.only(
                    topLeft: Radius.circular(19),
                    topRight: Radius.circular(19),
                    bottomRight: Radius.circular(19),
                  ),
            errorBorder: errorBorder,
          );
        }

      case MessageBubbleType.docMessage:
        {
          return DocContainer(
            sender: sender,
            seen: sender ? seen : false,
            docName: text ?? 'doc',
            docSize: docSize ?? '',
            color: sender ? AppColors.blue : AppColors.white,
            time: time,
            textColor: sender ? AppColors.white : Colors.black,
            subTextColor: sender ? AppColors.white : AppColors.textGrey,
            border: sender
                ? BorderRadius.circular(16)
                : const BorderRadius.only(
                    topLeft: Radius.circular(19),
                    topRight: Radius.circular(19),
                    bottomRight: Radius.circular(19),
                  ),
            errorBorder: errorBorder,
            uploadValue: sender ? uploadValue ?? 0 : downloadValue ?? 0,
            uploadString: sender ? uploadString ?? '' : downloadString ?? '',
          );
        }

      case MessageBubbleType.sendDocError:
        {
          return ErrorDocContainer(
            seen: seen,
            docName: text ?? 'doc',
            docSize: docSize ?? '',
            color: AppColors.blue,
            time: time,
            textColor: AppColors.white,
            subTextColor: AppColors.white,
            border: BorderRadius.circular(16),
            errorBorder: Colors.red,
            uploadValue: uploadValue ?? 0,
            uploadString: uploadString ?? '',
          );
        }
      case MessageBubbleType.audioMessage:
        {
          return AudioContainer(
            audioWaveWidget: audioWaveWidget ?? const SizedBox.shrink(),
            audioProgress: audioProgress ?? Duration.zero,
            audioWaveform: audioWaveform,
            audioWaveformDuration: audioWaveformDuration,
            start: start,
            isPlaying: isPlaying,
            url: url ?? '',
            seen: sender ? seen : false,
            docName: text ?? 'audio message',
            docSize: docSize ?? '',
            color: sender ? AppColors.blue : AppColors.white,
            time: time,
            textColor: sender ? AppColors.white : Colors.black,
            subTextColor: sender ? AppColors.white : AppColors.textGrey,
            border: sender
                ? BorderRadius.circular(16)
                : const BorderRadius.only(
                    topLeft: Radius.circular(19),
                    topRight: Radius.circular(19),
                    bottomRight: Radius.circular(19),
                  ),
            errorBorder: errorBorder,
            uploadValue: 0,
            uploadString: '',
          );
        }
    }
  }
}

enum MessageBubbleType {
  textMessage,
  imageMessage,
  docMessage,
  sendDocError,
  audioMessage,
}
