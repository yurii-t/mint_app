part of 'audio_play_bloc.dart';

@freezed
class AudioPlayState with _$AudioPlayState {
  const factory AudioPlayState({
    required BlocStatus status,
    required List<AudioPosition> audioPosition,
    Object? error,
  }) = _AudioPlayState;
}
