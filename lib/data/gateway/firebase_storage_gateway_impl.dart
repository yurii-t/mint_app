import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

import 'package:mint_app/data/gateway/firebase_storage_gateway.dart';

class FirebaseStorageGatewayImpl implements FirebaseStorageGateway {
  const FirebaseStorageGatewayImpl({required this.firebaseStorage});
  final FirebaseStorage firebaseStorage;

  @override
  Future<Reference> getReference(
    File file,
    String chatId,
    String folder,
  ) async {
    return firebaseStorage.ref().child(
          '$folder/$chatId/${DateTime.now().millisecondsSinceEpoch}${getNameOnly(file.path)}',
        );
  }

  @override
  Future<UploadTask> uploadImage(
    File file,
    Reference ref,
  ) async {
    final uploadTask = ref.putFile(file);

    return uploadTask;
  }

  @override
  Stream<double> uploadProgress(
    UploadTask task,
  ) {
    final tmp = task.snapshotEvents.map((event) {
      return event.bytesTransferred.toDouble() / event.totalBytes.toDouble();
    });

    return tmp;
  }

  String getNameOnly(String path) {
    return path.split('/').last.split('%').last.split('?').first;
  }

  @override
  Future<DownloadTask> downloadFile(String url, File file) async {
    final downloadTask = firebaseStorage
        .refFromURL(url)
        .writeToFile(await file.create(recursive: true));

    return downloadTask;
  }

  @override
  Stream<double> downloadProgress(
    DownloadTask downloadTask,
  ) {
    final dowTask = downloadTask.snapshotEvents.map((event) =>
        event.bytesTransferred.toDouble() / event.totalBytes.toDouble());

    return dowTask;
  }
}
