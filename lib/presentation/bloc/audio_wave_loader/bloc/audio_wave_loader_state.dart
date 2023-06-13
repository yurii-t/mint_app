part of 'audio_wave_loader_bloc.dart';

@freezed
class AudioWaveLoaderState with _$AudioWaveLoaderState {
  const factory AudioWaveLoaderState({
    required BlocStatus status,
    required List<WaveSetter> waveFormList,
    String? id,
    Waveform? waveform,
    Object? error,
  }) = _AudioWaveLoaderState;
}

abstract class WaveSetter {
  final String id;

  WaveSetter({required this.id});
}

class WaveSetterLoading extends WaveSetter {
  WaveSetterLoading({required super.id});
}

class WaveSetterLoaded extends WaveSetter {
  final Waveform? waveform;

  WaveSetterLoaded({required super.id, required this.waveform});
}
