import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_waveform/just_waveform.dart';
import 'package:mint_app/data/gateway/firebase_storage_gateway_impl.dart';
import 'package:mint_app/presentation/bloc/status.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

part 'audio_wave_loader_event.dart';
part 'audio_wave_loader_state.dart';
part 'audio_wave_loader_bloc.freezed.dart';

class AudioWaveLoaderBloc
    extends Bloc<AudioWaveLoaderEvent, AudioWaveLoaderState> {
  final FirebaseStorageGatewayImpl _firebaseStorageGatewayImpl;
  AudioWaveLoaderBloc(this._firebaseStorageGatewayImpl)
      : super(const AudioWaveLoaderState(
          status: BlocStatus.loading,
          waveFormList: [],
        )) {
    on<_Started>(
      (event, emit) async {
        final Map<Permission, PermissionStatus> permissions = await [
          Permission.storage,
        ].request();

        final directory = await getApplicationDocumentsDirectory();

        final path = directory.path;

        if (permissions[Permission.storage]!.isGranted) {
          final auidoFile = await File(path + event.docName);
          final String waveName = '${event.docName.split('.').first}.wave';
          final waveFile = await File(path + waveName);
          Waveform? completeWave;
          if (event.url.isNotEmpty) {
            if (!auidoFile.existsSync()) {
              await (await _firebaseStorageGatewayImpl.downloadFile(
                event.url,
                auidoFile,
              ));
            }
            if (!waveFile.existsSync()) {
              final progressStream = JustWaveform.extract(
                audioInFile: auidoFile,
                waveOutFile: waveFile,
                zoom: const WaveformZoom.pixelsPerSecond(100),
              );

              await emit.forEach(
                progressStream,
                onData: (waveformProgress) {
                  final state = this.state;

                  final waveList = state.status == BlocStatus.loaded
                      ? List<WaveSetter>.from(state.waveFormList)
                      : <WaveSetter>[];

                  final waveSetter = waveformProgress.progress >= 1
                      ? WaveSetterLoaded(
                          id: event.messageId,
                          waveform: waveformProgress.waveform,
                        )
                      : WaveSetterLoading(id: event.messageId);

                  final waveIndex = waveList.indexWhere(
                    (wave) => wave.id == event.messageId,
                  );
                  if (waveIndex == -1) {
                    waveList.add(
                      waveSetter,
                    );
                  } else {
                    waveList[waveIndex] = waveSetter;
                  }

                  return state.copyWith(
                    status: BlocStatus.loaded,
                    waveFormList: waveList,
                  );
                },
              );
            } else {
              final parseWaveFile = await JustWaveform.parse(waveFile);
              completeWave = parseWaveFile;

              final state = this.state;
              final waveList = state.status == BlocStatus.loaded
                  ? List<WaveSetter>.from(state.waveFormList)
                  : <WaveSetter>[];

              final waveSetter =
                  WaveSetterLoaded(id: event.messageId, waveform: completeWave);

              final waveIndex = waveList.indexWhere(
                (wave) => wave.id == event.messageId,
              );
              if (waveIndex == -1) {
                waveList.add(
                  waveSetter,
                );
              } else {
                waveList[waveIndex] = waveSetter;
              }

              emit(state.copyWith(
                status: BlocStatus.loaded,
                waveFormList: waveList,
              ));
            }
          }
        }
      },
      transformer: sequential(),
    );
  }
}
