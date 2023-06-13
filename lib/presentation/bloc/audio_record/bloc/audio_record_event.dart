part of 'audio_record_bloc.dart';

@freezed
class AudioRecordEvent with _$AudioRecordEvent {
  const factory AudioRecordEvent.onRecord() = _OnRecord;

  const factory AudioRecordEvent.onStop() = _OnStop;
  const factory AudioRecordEvent.onCancel() = _OnCancel;
}
