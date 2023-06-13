part of 'audio_play_bloc.dart';

@freezed
class AudioPlayEvent with _$AudioPlayEvent {
  const factory AudioPlayEvent.audioPlayPauseToggled({
    required bool play,
    required String docName,
    required String messageId,
  }) = _AudioPlayPauseToggled;
}
