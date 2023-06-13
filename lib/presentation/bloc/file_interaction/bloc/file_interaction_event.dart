part of 'file_interaction_bloc.dart';

@freezed
class FileInteractionEvent with _$FileInteractionEvent {
  const factory FileInteractionEvent.uploadFile({
    required String messageType,
    required File image,
    required String docSize,
    required String docName,
    required String docId,
  }) = _UploadFile;

  const factory FileInteractionEvent.downloadFile({
    required String url,
    required String messageId,
  }) = _DownloadFile;
}
