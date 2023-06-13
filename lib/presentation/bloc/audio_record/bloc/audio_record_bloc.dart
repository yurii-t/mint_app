import 'dart:core';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mint_app/presentation/bloc/status.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:record/record.dart';

part 'audio_record_event.dart';
part 'audio_record_state.dart';
part 'audio_record_bloc.freezed.dart';

class AudioRecordBloc extends Bloc<AudioRecordEvent, AudioRecordState> {
  AudioRecordBloc()
      : super(const AudioRecordState(
          status: BlocStatus.loading,
          audioRecordStatus: AudiRecordStatus.idle,
          isMuted: false,
          isRecording: false,
          recordTime: 0,
        )) {
    final _audioRecorder = Record();
    on<AudioRecordEvent>(
      (event, emit) async {
        int recordDuration = 0;
        if (event is _OnRecord) {
          final Map<Permission, PermissionStatus> permissions = await [
            Permission.storage,
            Permission.microphone,
          ].request();

          final bool permissionsGranted =
              permissions[Permission.storage]!.isGranted &&
                  permissions[Permission.microphone]!.isGranted;

          if (permissionsGranted) {
            final tempDir = await getApplicationDocumentsDirectory();

            final pathFolder =
                '${tempDir.path}/${DateTime.now().microsecondsSinceEpoch}.mp3';
            await _audioRecorder.start(path: pathFolder);
            final bool isRecording = await _audioRecorder.isRecording();

            final timeStream = Stream.periodic(
              const Duration(seconds: 1),
              (t) => recordDuration++,
            );

            await emit.forEach(
              timeStream,
              onData: (time) => state.copyWith(
                status: BlocStatus.loaded,
                isRecording: isRecording,
                recordTime: time,
                audioRecordStatus: AudiRecordStatus.record,
              ),
            );
          }
        }
        if (event is _OnStop) {
          final path = await _audioRecorder.stop();

          final bool isRecording = await _audioRecorder.isRecording();

          emit(state.copyWith(
            isRecording: isRecording,
            path: path ?? '',
            audioRecordStatus: AudiRecordStatus.stop,
          ));
        }
        if (event is _OnCancel) {
          await _audioRecorder.stop();

          final bool isRecording = await _audioRecorder.isRecording();

          emit(state.copyWith(
            isRecording: isRecording,
            audioRecordStatus: AudiRecordStatus.cancel,
          ));
        }
      },
      transformer: restartable(),
    );
  }
}
