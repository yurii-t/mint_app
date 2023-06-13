part of 'audio_wave_loader_bloc.dart';

@freezed
class AudioWaveLoaderEvent with _$AudioWaveLoaderEvent {
  const factory AudioWaveLoaderEvent.started({
    required String messageId,
    required String docName,
    required String url,
  }) = _Started;
}
