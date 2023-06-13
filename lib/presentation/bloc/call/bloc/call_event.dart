part of 'call_bloc.dart';

@freezed
class CallEvent with _$CallEvent {
  const factory CallEvent.startCall({
    required bool isCaller,
    @Default(false) bool isEndCall,
  }) = _StartCall;
  const factory CallEvent.incomingCall() = _IncomingCall;
  const factory CallEvent.endCall() = _EndCall;
  const factory CallEvent.toggleAudio() = _ToggleAudio;
  const factory CallEvent.switchCamera() = _SwitchCamera;
  const factory CallEvent.toggleVideo() = _ToggleVideo;
  const factory CallEvent.toggleSpeaker() = _ToggleSpeaker;
}
