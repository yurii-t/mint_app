import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:just_waveform/just_waveform.dart';

class AudioContainer extends StatelessWidget {
  const AudioContainer({
    required this.color,
    required this.time,
    required this.textColor,
    required this.subTextColor,
    required this.border,
    required this.docSize,
    required this.docName,
    required this.uploadValue,
    required this.uploadString,
    required this.url,
    required this.audioProgress,
    required this.audioWaveWidget,
    required this.seen,
    this.errorBorder,
    this.isPlaying,
    this.audioWaveform,
    this.audioWaveformDuration,
    this.start,
    Key? key,
  }) : super(key: key);
  final Color color;
  final BorderRadius border;
  final String time;
  final Color textColor;
  final Color subTextColor;
  final Color? errorBorder;
  final bool seen;

  final String docSize;
  final String docName;
  final num uploadValue;
  final String uploadString;
  final String url;
  final bool? isPlaying;
  final Waveform? audioWaveform;
  final Duration? audioWaveformDuration;
  final Duration? start;
  final Duration audioProgress;
  final Widget audioWaveWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:
          BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.7),
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: border,
        border: Border.all(color: errorBorder ?? Colors.transparent),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 8),
        horizontalTitleGap: 3,
        minVerticalPadding: 2,
        leading: SizedBox(
          height: double.infinity,
          child: isPlaying != true
              ? const Icon(Icons.play_arrow)
              : const Icon(Icons.pause),
        ),
        title: Container(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          height: 50,
          child: audioWaveWidget,
        ),
        subtitle: Row(
          children: [
            Expanded(
              child: Text(
                docSize,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.transparent,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  '$time',
                  style: TextStyle(
                    fontSize: 12,
                    color: subTextColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                if (seen)
                  SvgPicture.asset('assets/icons/message_checks.svg')
                else
                  const Text(''),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
