part of 'audio_record_bloc.dart';

@freezed
class AudioRecordState with _$AudioRecordState {
  const factory AudioRecordState({
    required bool isMuted,
    required BlocStatus status,
    required AudiRecordStatus audioRecordStatus,
    required bool isRecording,
    required int recordTime,
    String? path,
    Object? error,
    Duration? duration,
  }) = _AudioRecordState;
}

enum AudiRecordStatus {
  record,
  stop,
  cancel,
  idle,
}
