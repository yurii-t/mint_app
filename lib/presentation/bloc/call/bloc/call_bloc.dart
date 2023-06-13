import 'dart:async';
import 'dart:developer';

import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mint_app/data/data.dart';
import 'package:mint_app/data/gateway/firebase_firestore_gateway_impl.dart';
import 'package:mint_app/data/models/user_call.dart';
import 'package:mint_app/presentation/bloc/status.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:uuid/uuid.dart';

part 'call_event.dart';
part 'call_state.dart';
part 'call_bloc.freezed.dart';

final appId = dotenv.get('appId');

final channelName = dotenv.get('channelName');

class CallBloc extends Bloc<CallEvent, CallState> {
  final FirebaseFirestoreGatewayImpl _firebaseFirestoreGatewayImpl;
  CallBloc(this._firebaseFirestoreGatewayImpl)
      : super(const CallState(
          status: BlocStatus.loading,
          callStatus: CallStatus.idle,
          isMuted: false,
          isVideoCall: false,
          isVideoPage: false,
          isSpeakerOn: false,
        )) {
    on<_IncomingCall>(
      (event, emit) async => _incomingCall(emit: emit),
      transformer: restartable(),
    );
    on<_StartCall>(
      (event, emit) async => _startCall(
        emit: emit,
        isCaller: event.isCaller,
        isEndCall: event.isEndCall,
      ),
      transformer: restartable(),
    );
    on<_ToggleAudio>((event, emit) async => _toggleAudio(emit: emit));
    on<_ToggleVideo>((event, emit) async => _toggleVideo(emit: emit));
    on<_SwitchCamera>((event, emit) async => _switchCamera(emit: emit));
    on<_ToggleSpeaker>((event, emit) async => _toggleSpeaker(emit: emit));
    on<_EndCall>(
      (event, emit) async => _endCall(emit: emit),
    );
  }

  Future<void> _incomingCall({
    required Emitter<CallState> emit,
  }) async {
    log('_incomingCall_incomingCall_incomingCall_incomingCall_incomingCall_incomingCall_incomingCall_incomingCall_incomingCall');
    final callStream = _firebaseFirestoreGatewayImpl.incomingCall();

    final currentUser =
        await _firebaseFirestoreGatewayImpl.getCurrentUserInfo();
    await emit.forEach(callStream, onData: (data) {
      return data.isNotEmpty
          ? data.first.receiverId == currentUser.userId
              ? state.copyWith(
                  status: BlocStatus.loaded,
                  callStatus: CallStatus.incomeCall,
                  userCallModel: data.first,
                )
              : state.copyWith(
                  status: BlocStatus.loaded,
                  callStatus: CallStatus.idle,
                )
          : state.copyWith(
              status: BlocStatus.loaded,
              callStatus: CallStatus.idle,
            );
    });
  }

  Future<void> _startCall({
    required Emitter<CallState> emit,
    required bool isCaller,
    required bool isEndCall,
  }) async {
    try {
      if (!isEndCall) {
        RtcEngine _engine;

        await [Permission.microphone, Permission.camera].request();
        final token = await _firebaseFirestoreGatewayImpl.getVideoToken();

        final curentUser =
            await _firebaseFirestoreGatewayImpl.getCurrentUserInfo();
        final users = await _firebaseFirestoreGatewayImpl.getUsers();
        final receiveUser =
            users.firstWhere((element) => element.userId != curentUser.userId);
        _engine = createAgoraRtcEngine();

        await _engine.initialize(RtcEngineContext(
          appId: appId,
          channelProfile: ChannelProfileType.channelProfileCommunication1v1,
        ));

        int time = 0;
        final duration =
            Stream<int>.periodic(const Duration(seconds: 1), (t) => time++);

        final userCallModel = isCaller
            ? UserCall(
                id: const Uuid().v1(),
                token: token,
                channelName: channelName,
                callerId: curentUser.userId,
                callerName: '${curentUser.firstName} ${curentUser.lastName}',
                callerAvatar: curentUser.profileImage,
                receiverId: receiveUser.userId,
                receiverName:
                    '${receiveUser.firstName} ${receiveUser.lastName}',
                receiverAvatar: receiveUser.profileImage,
                status: CallStatus.calling.name,
              )
            : state.userCallModel;

        _engine.registerEventHandler(
          RtcEngineEventHandler(
            onJoinChannelSuccess: (connection, elapsed) {
              log('local user ${connection.localUid} joined');

              if (isCaller)
                _firebaseFirestoreGatewayImpl.startCall(
                  userCallModel ??
                      UserCall(
                        id: const Uuid().v1(),
                        token: token,
                        channelName: channelName,
                        callerId: curentUser.userId,
                        callerName:
                            '${curentUser.firstName} ${curentUser.lastName}',
                        callerAvatar: curentUser.profileImage,
                        receiverId: receiveUser.userId,
                        receiverName:
                            '${receiveUser.firstName} ${receiveUser.lastName}',
                        receiverAvatar: receiveUser.profileImage,
                        status: CallStatus.calling.name,
                      ),
                );
            },
            onUserJoined: (connection, remoteUid, elapsed) {
              log('remote user $remoteUid joined');

              time = 0;
              emit(state.copyWith(
                remoteUid: remoteUid,
                callStatus: CallStatus.started,
              ));
            },
            onUserEnableLocalVideo: (connection, remoteUid, enabled) async {
              log('REMOTE USER VIDEO ${enabled}');

              if (enabled && !state.isVideoPage && !state.isVideoCall) {
                await _engine.enableVideo();

                emit(state.copyWith(isVideoPage: true, isVideoCall: true));
              }
            },
            onUserOffline: (
              connection,
              remoteUid,
              reason,
            ) async {
              debugPrint('remote user $remoteUid left channel');
              await _firebaseFirestoreGatewayImpl.updateCallStatus();

              add(const _EndCall());
            },
            onTokenPrivilegeWillExpire: (connection, token) {
              log('[onTokenPrivilegeWillExpire] connection: ${connection.toJson()}, token: $token');
            },
          ),
        );

        await Future.wait([
          _engine.setClientRole(role: ClientRoleType.clientRoleBroadcaster),
          _engine.setEnableSpeakerphone(false),
          _engine.joinChannel(
            token: token,
            channelId: channelName,
            uid: 0,
            options: const ChannelMediaOptions(),
          ),
        ]);

        await emit.forEach(duration, onData: (data) {
          return state.copyWith(
            status: BlocStatus.loaded,
            callStatus: CallStatus.calling,
            localUserJoined: true,
            remoteUid: state.remoteUid,
            engine: _engine,
            channelName: channelName,
            userCallModel: userCallModel,
            duration: Duration(seconds: data),
          );
        });
      } else {
        emit(state.copyWith(
          status: BlocStatus.loaded,
          callStatus: CallStatus.end,
          localUserJoined: state.localUserJoined,
          remoteUid: null,
          engine: state.engine,
          channelName: channelName,
          userCallModel: state.userCallModel,
          duration: Duration.zero,
          isMuted: false,
          isVideoCall: false,
          isVideoPage: false,
        ));

        add(const _IncomingCall());
      }
    } on Exception catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }

  Future<void> _switchCamera({
    required Emitter<CallState> emit,
  }) async {
    try {
      final engine = state.engine;
      if (engine != null) {
        await engine.switchCamera();
      }
    } on Exception catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }

  Future<void> _toggleAudio({
    required Emitter<CallState> emit,
  }) async {
    try {
      final engine = state.engine;

      if (engine != null) {
        await engine.muteLocalAudioStream(!state.isMuted);
      }
      emit(state.copyWith(isMuted: !state.isMuted));
    } on Exception catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }

  Future<void> _toggleSpeaker({
    required Emitter<CallState> emit,
  }) async {
    try {
      final engine = state.engine;

      if (engine != null) {
        await engine.setEnableSpeakerphone(!state.isSpeakerOn);
        emit(state.copyWith(isMuted: !state.isSpeakerOn));
      }
      emit(state.copyWith(isMuted: !state.isMuted));
    } on Exception catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }

  Future<void> _toggleVideo({
    required Emitter<CallState> emit,
  }) async {
    try {
      final engine = state.engine;

      if (engine != null) {
        if (state.isVideoCall) {
          await engine.enableLocalVideo(false);

          emit(state.copyWith(isVideoCall: false));
        } else {
          await engine.enableLocalVideo(true);
          await engine.enableVideo();

          emit(state.copyWith(isVideoCall: true, isVideoPage: true));
        }
      }
    } on Exception catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }

  Future<void> _endCall({
    required Emitter<CallState> emit,
  }) async {
    try {
      final engine = state.engine;
      await _firebaseFirestoreGatewayImpl.updateCallStatus();
      if (engine != null) {
        await engine.leaveChannel();
        await engine.release();
      }

      add(const _StartCall(isCaller: false, isEndCall: true));
    } on Exception catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }
}
