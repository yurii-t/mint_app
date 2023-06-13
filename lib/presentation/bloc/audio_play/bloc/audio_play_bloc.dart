import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_audio/just_audio.dart';
import 'package:mint_app/data/models/audio_position.dart';
import 'package:mint_app/presentation/bloc/status.dart';
import 'package:path_provider/path_provider.dart';

part 'audio_play_event.dart';
part 'audio_play_state.dart';
part 'audio_play_bloc.freezed.dart';

class AudioPlayBloc extends Bloc<AudioPlayEvent, AudioPlayState> {
  AudioPlayBloc()
      : super(const AudioPlayState(
          status: BlocStatus.loading,
          audioPosition: [],
        )) {
    on<_AudioPlayPauseToggled>(
      (event, emit) async {
        final _player = AudioPlayer();
        final directory = await getApplicationDocumentsDirectory();
        final path = directory.path;

        final audioPath = path + event.docName;
        await _player.setFilePath(audioPath);
        final Duration? fullDuration = await _player.setFilePath(audioPath);

        if (event.play) {
          unawaited(_player.play());
          bool isPlaying = true;
          isPlaying = _player.playing;

          final position = _player.positionStream;

          await emit.forEach(
            position,
            onData: (curPos) {
              final state = this.state;

              final audioPositionList = state.status == BlocStatus.loaded
                  ? List<AudioPosition>.from(state.audioPosition)
                  : <AudioPosition>[];

              final audioIndex = audioPositionList.indexWhere(
                (audioPosition) => audioPosition.id == event.messageId,
              );
              if (audioIndex == -1) {
                audioPositionList.add(AudioPosition(
                  id: event.messageId,
                  position: curPos,
                  isPlaying: isPlaying,
                  fullDuration: fullDuration ?? Duration.zero,
                ));
              } else {
                audioPositionList[audioIndex] = AudioPosition(
                  id: event.messageId,
                  position: curPos,
                  isPlaying: isPlaying,
                  fullDuration: fullDuration ?? Duration.zero,
                );
              }
              if (curPos == _player.duration) {
                isPlaying = false;

                _player.pause();
              }

              return state.copyWith(
                status: BlocStatus.loaded,
                audioPosition: audioPositionList,
              );
            },
          );
        } else {
          await _player.stop();
        }
      },
      transformer: restartable(),
    );
  }
}
