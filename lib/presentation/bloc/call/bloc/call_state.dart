part of 'call_bloc.dart';

@freezed
class CallState with _$CallState {
  const factory CallState({
    required BlocStatus status,
    required CallStatus callStatus,
    required bool isMuted,
    required bool isVideoCall,
    required bool isVideoPage,
    required bool isSpeakerOn,
    int? remoteUid,
    bool? localUserJoined,
    RtcEngine? engine,
    String? channelName,
    UserCall? userCallModel,
    Object? error,
    Duration? duration,
  }) = _CallState;
}

enum CallStatus { started, calling, end, idle, incomeCall }
