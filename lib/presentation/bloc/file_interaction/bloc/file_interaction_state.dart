part of 'file_interaction_bloc.dart';

@freezed
class FileInteractionState with _$FileInteractionState {
  const factory FileInteractionState({
    required BlocStatus status,
    required FileStatus fileStatus,
    required List<UploadingProgress> uploadProgressList,
    required List<DownloadingProgress> downloadingProgressList,
    required List<MessageModel> errorList,
    Object? error,
  }) = _FileInteractionState;
}

enum FileStatus {
  uploading,
  downloading,
  error,
  idle,
}

class UploadingProgress {
  final String docId;
  final double uploadProgress;

  UploadingProgress(this.docId, this.uploadProgress);
}

class DownloadingProgress {
  final String id;
  final double progress;

  DownloadingProgress(this.id, this.progress);
}
