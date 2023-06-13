import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:just_waveform/just_waveform.dart';
import 'package:mint_app/data/models/message_model.dart';
import 'package:mint_app/presentation/bloc/audio_play/bloc/audio_play_bloc.dart';

import 'package:mint_app/presentation/bloc/audio_wave_loader/bloc/audio_wave_loader_bloc.dart';
import 'package:mint_app/presentation/bloc/status.dart';
import 'package:mint_app/presentation/pages/home/chat/widgets/audio_waveform.dart';
import 'package:mint_app/presentation/pages/home/chat/widgets/message_bubble.dart';

class AudioMessage extends StatelessWidget {
  const AudioMessage({
    required this.messagesData,
    required this.sender,
    required this.play,
    required this.audioPlayBloc,
    required this.audioWaveLoaderBloc,
    Key? key,
  }) : super(key: key);
  final MessageModel messagesData;

  final bool sender;
  final bool play;
  final AudioPlayBloc audioPlayBloc;
  final AudioWaveLoaderBloc audioWaveLoaderBloc;

  @override
  Widget build(BuildContext context) {
    const double updateProgress = 0;
    const String updateProgressString = '';

    const bool uploadError = false;

    return BlocBuilder<AudioWaveLoaderBloc, AudioWaveLoaderState>(
      bloc: audioWaveLoaderBloc,
      builder: (context, waveState) {
        Waveform? wave;

        WaveSetter? waveSetter;

        if (waveState.status == BlocStatus.loaded) {
          final waveIndex = waveState.waveFormList
              .indexWhere((waveSet) => waveSet.id == messagesData.messageId);

          final waveAudio =
              waveIndex != -1 ? waveState.waveFormList[waveIndex] : null;
          waveSetter = waveAudio;
        }

        return GestureDetector(
          onTap: () {
            audioPlayBloc.add(AudioPlayEvent.audioPlayPauseToggled(
              play: !play,
              docName: messagesData.docName,
              messageId: messagesData.messageId,
            ));
          },
          child: BlocBuilder<AudioPlayBloc, AudioPlayState>(
            bloc: audioPlayBloc,
            builder: (context, state) {
              bool isPlaying = false;

              Duration currentAudioPosition = Duration.zero;

              if (state.status == BlocStatus.loaded) {
                final auidoPositionIndex = state.audioPosition.indexWhere(
                  (audioPosId) => audioPosId.id == messagesData.messageId,
                );

                final audioPosition = auidoPositionIndex != -1
                    ? state.audioPosition[auidoPositionIndex].position
                    : Duration.zero;
                final fullAudioDuration = auidoPositionIndex != -1
                    ? state.audioPosition[auidoPositionIndex].fullDuration
                    : Duration.zero;

                final audioisPlaying =
                    // ignore: avoid_bool_literals_in_conditional_expressions
                    auidoPositionIndex != -1
                        ? state.audioPosition[auidoPositionIndex].isPlaying
                        : false;

                currentAudioPosition = audioPosition;

                isPlaying = audioisPlaying;
                if (currentAudioPosition == fullAudioDuration) {
                  isPlaying = false;
                }
              }

              return MessageBubble(
                sender: sender,
                audioWaveWidget: (waveSetter is WaveSetterLoaded)
                    ? AudioWaveform(
                        waveform: waveSetter.waveform ??
                            Waveform(
                              version: 1,
                              flags: 0,
                              sampleRate: 0,
                              samplesPerPixel: 0,
                              length: 0,
                              data: [
                                0,
                              ],
                            ),
                        start: Duration.zero,
                        progress: currentAudioPosition,
                        duration:
                            waveSetter.waveform?.duration ?? Duration.zero,
                      )
                    : const Center(
                        child: SizedBox(
                          width: 24,
                          height: 24,
                          child: CircularProgressIndicator(),
                        ),
                      ),
                audioProgress: currentAudioPosition,
                start: Duration.zero,
                audioWaveform: wave,
                audioWaveformDuration: const Duration(seconds: 3),
                isPlaying: isPlaying,
                seen: messagesData.isRead,
                error: uploadError,
                uploadValue: updateProgress,
                uploadString: updateProgressString,
                docSize: '',
                type: MessageBubbleType.audioMessage,
                text: messagesData.docName,
                time: DateFormat('hh:mm a').format(
                  messagesData.time.toDate(),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
