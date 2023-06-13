// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_interaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FileInteractionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String messageType, File image, String docSize,
            String docName, String docId)
        uploadFile,
    required TResult Function(String url, String messageId) downloadFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String messageType, File image, String docSize,
            String docName, String docId)?
        uploadFile,
    TResult? Function(String url, String messageId)? downloadFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String messageType, File image, String docSize,
            String docName, String docId)?
        uploadFile,
    TResult Function(String url, String messageId)? downloadFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadFile value) uploadFile,
    required TResult Function(_DownloadFile value) downloadFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadFile value)? uploadFile,
    TResult? Function(_DownloadFile value)? downloadFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadFile value)? uploadFile,
    TResult Function(_DownloadFile value)? downloadFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileInteractionEventCopyWith<$Res> {
  factory $FileInteractionEventCopyWith(FileInteractionEvent value,
          $Res Function(FileInteractionEvent) then) =
      _$FileInteractionEventCopyWithImpl<$Res, FileInteractionEvent>;
}

/// @nodoc
class _$FileInteractionEventCopyWithImpl<$Res,
        $Val extends FileInteractionEvent>
    implements $FileInteractionEventCopyWith<$Res> {
  _$FileInteractionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UploadFileCopyWith<$Res> {
  factory _$$_UploadFileCopyWith(
          _$_UploadFile value, $Res Function(_$_UploadFile) then) =
      __$$_UploadFileCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String messageType,
      File image,
      String docSize,
      String docName,
      String docId});
}

/// @nodoc
class __$$_UploadFileCopyWithImpl<$Res>
    extends _$FileInteractionEventCopyWithImpl<$Res, _$_UploadFile>
    implements _$$_UploadFileCopyWith<$Res> {
  __$$_UploadFileCopyWithImpl(
      _$_UploadFile _value, $Res Function(_$_UploadFile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageType = null,
    Object? image = null,
    Object? docSize = null,
    Object? docName = null,
    Object? docId = null,
  }) {
    return _then(_$_UploadFile(
      messageType: null == messageType
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
      docSize: null == docSize
          ? _value.docSize
          : docSize // ignore: cast_nullable_to_non_nullable
              as String,
      docName: null == docName
          ? _value.docName
          : docName // ignore: cast_nullable_to_non_nullable
              as String,
      docId: null == docId
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UploadFile with DiagnosticableTreeMixin implements _UploadFile {
  const _$_UploadFile(
      {required this.messageType,
      required this.image,
      required this.docSize,
      required this.docName,
      required this.docId});

  @override
  final String messageType;
  @override
  final File image;
  @override
  final String docSize;
  @override
  final String docName;
  @override
  final String docId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FileInteractionEvent.uploadFile(messageType: $messageType, image: $image, docSize: $docSize, docName: $docName, docId: $docId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FileInteractionEvent.uploadFile'))
      ..add(DiagnosticsProperty('messageType', messageType))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('docSize', docSize))
      ..add(DiagnosticsProperty('docName', docName))
      ..add(DiagnosticsProperty('docId', docId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UploadFile &&
            (identical(other.messageType, messageType) ||
                other.messageType == messageType) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.docSize, docSize) || other.docSize == docSize) &&
            (identical(other.docName, docName) || other.docName == docName) &&
            (identical(other.docId, docId) || other.docId == docId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, messageType, image, docSize, docName, docId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UploadFileCopyWith<_$_UploadFile> get copyWith =>
      __$$_UploadFileCopyWithImpl<_$_UploadFile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String messageType, File image, String docSize,
            String docName, String docId)
        uploadFile,
    required TResult Function(String url, String messageId) downloadFile,
  }) {
    return uploadFile(messageType, image, docSize, docName, docId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String messageType, File image, String docSize,
            String docName, String docId)?
        uploadFile,
    TResult? Function(String url, String messageId)? downloadFile,
  }) {
    return uploadFile?.call(messageType, image, docSize, docName, docId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String messageType, File image, String docSize,
            String docName, String docId)?
        uploadFile,
    TResult Function(String url, String messageId)? downloadFile,
    required TResult orElse(),
  }) {
    if (uploadFile != null) {
      return uploadFile(messageType, image, docSize, docName, docId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadFile value) uploadFile,
    required TResult Function(_DownloadFile value) downloadFile,
  }) {
    return uploadFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadFile value)? uploadFile,
    TResult? Function(_DownloadFile value)? downloadFile,
  }) {
    return uploadFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadFile value)? uploadFile,
    TResult Function(_DownloadFile value)? downloadFile,
    required TResult orElse(),
  }) {
    if (uploadFile != null) {
      return uploadFile(this);
    }
    return orElse();
  }
}

abstract class _UploadFile implements FileInteractionEvent {
  const factory _UploadFile(
      {required final String messageType,
      required final File image,
      required final String docSize,
      required final String docName,
      required final String docId}) = _$_UploadFile;

  String get messageType;
  File get image;
  String get docSize;
  String get docName;
  String get docId;
  @JsonKey(ignore: true)
  _$$_UploadFileCopyWith<_$_UploadFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DownloadFileCopyWith<$Res> {
  factory _$$_DownloadFileCopyWith(
          _$_DownloadFile value, $Res Function(_$_DownloadFile) then) =
      __$$_DownloadFileCopyWithImpl<$Res>;
  @useResult
  $Res call({String url, String messageId});
}

/// @nodoc
class __$$_DownloadFileCopyWithImpl<$Res>
    extends _$FileInteractionEventCopyWithImpl<$Res, _$_DownloadFile>
    implements _$$_DownloadFileCopyWith<$Res> {
  __$$_DownloadFileCopyWithImpl(
      _$_DownloadFile _value, $Res Function(_$_DownloadFile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? messageId = null,
  }) {
    return _then(_$_DownloadFile(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DownloadFile with DiagnosticableTreeMixin implements _DownloadFile {
  const _$_DownloadFile({required this.url, required this.messageId});

  @override
  final String url;
  @override
  final String messageId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FileInteractionEvent.downloadFile(url: $url, messageId: $messageId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FileInteractionEvent.downloadFile'))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('messageId', messageId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DownloadFile &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url, messageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DownloadFileCopyWith<_$_DownloadFile> get copyWith =>
      __$$_DownloadFileCopyWithImpl<_$_DownloadFile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String messageType, File image, String docSize,
            String docName, String docId)
        uploadFile,
    required TResult Function(String url, String messageId) downloadFile,
  }) {
    return downloadFile(url, messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String messageType, File image, String docSize,
            String docName, String docId)?
        uploadFile,
    TResult? Function(String url, String messageId)? downloadFile,
  }) {
    return downloadFile?.call(url, messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String messageType, File image, String docSize,
            String docName, String docId)?
        uploadFile,
    TResult Function(String url, String messageId)? downloadFile,
    required TResult orElse(),
  }) {
    if (downloadFile != null) {
      return downloadFile(url, messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadFile value) uploadFile,
    required TResult Function(_DownloadFile value) downloadFile,
  }) {
    return downloadFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadFile value)? uploadFile,
    TResult? Function(_DownloadFile value)? downloadFile,
  }) {
    return downloadFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadFile value)? uploadFile,
    TResult Function(_DownloadFile value)? downloadFile,
    required TResult orElse(),
  }) {
    if (downloadFile != null) {
      return downloadFile(this);
    }
    return orElse();
  }
}

abstract class _DownloadFile implements FileInteractionEvent {
  const factory _DownloadFile(
      {required final String url,
      required final String messageId}) = _$_DownloadFile;

  String get url;
  String get messageId;
  @JsonKey(ignore: true)
  _$$_DownloadFileCopyWith<_$_DownloadFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FileInteractionState {
  BlocStatus get status => throw _privateConstructorUsedError;
  FileStatus get fileStatus => throw _privateConstructorUsedError;
  List<UploadingProgress> get uploadProgressList =>
      throw _privateConstructorUsedError;
  List<DownloadingProgress> get downloadingProgressList =>
      throw _privateConstructorUsedError;
  List<MessageModel> get errorList => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FileInteractionStateCopyWith<FileInteractionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileInteractionStateCopyWith<$Res> {
  factory $FileInteractionStateCopyWith(FileInteractionState value,
          $Res Function(FileInteractionState) then) =
      _$FileInteractionStateCopyWithImpl<$Res, FileInteractionState>;
  @useResult
  $Res call(
      {BlocStatus status,
      FileStatus fileStatus,
      List<UploadingProgress> uploadProgressList,
      List<DownloadingProgress> downloadingProgressList,
      List<MessageModel> errorList,
      Object? error});
}

/// @nodoc
class _$FileInteractionStateCopyWithImpl<$Res,
        $Val extends FileInteractionState>
    implements $FileInteractionStateCopyWith<$Res> {
  _$FileInteractionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? fileStatus = null,
    Object? uploadProgressList = null,
    Object? downloadingProgressList = null,
    Object? errorList = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      fileStatus: null == fileStatus
          ? _value.fileStatus
          : fileStatus // ignore: cast_nullable_to_non_nullable
              as FileStatus,
      uploadProgressList: null == uploadProgressList
          ? _value.uploadProgressList
          : uploadProgressList // ignore: cast_nullable_to_non_nullable
              as List<UploadingProgress>,
      downloadingProgressList: null == downloadingProgressList
          ? _value.downloadingProgressList
          : downloadingProgressList // ignore: cast_nullable_to_non_nullable
              as List<DownloadingProgress>,
      errorList: null == errorList
          ? _value.errorList
          : errorList // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FileInteractionStateCopyWith<$Res>
    implements $FileInteractionStateCopyWith<$Res> {
  factory _$$_FileInteractionStateCopyWith(_$_FileInteractionState value,
          $Res Function(_$_FileInteractionState) then) =
      __$$_FileInteractionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status,
      FileStatus fileStatus,
      List<UploadingProgress> uploadProgressList,
      List<DownloadingProgress> downloadingProgressList,
      List<MessageModel> errorList,
      Object? error});
}

/// @nodoc
class __$$_FileInteractionStateCopyWithImpl<$Res>
    extends _$FileInteractionStateCopyWithImpl<$Res, _$_FileInteractionState>
    implements _$$_FileInteractionStateCopyWith<$Res> {
  __$$_FileInteractionStateCopyWithImpl(_$_FileInteractionState _value,
      $Res Function(_$_FileInteractionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? fileStatus = null,
    Object? uploadProgressList = null,
    Object? downloadingProgressList = null,
    Object? errorList = null,
    Object? error = freezed,
  }) {
    return _then(_$_FileInteractionState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      fileStatus: null == fileStatus
          ? _value.fileStatus
          : fileStatus // ignore: cast_nullable_to_non_nullable
              as FileStatus,
      uploadProgressList: null == uploadProgressList
          ? _value._uploadProgressList
          : uploadProgressList // ignore: cast_nullable_to_non_nullable
              as List<UploadingProgress>,
      downloadingProgressList: null == downloadingProgressList
          ? _value._downloadingProgressList
          : downloadingProgressList // ignore: cast_nullable_to_non_nullable
              as List<DownloadingProgress>,
      errorList: null == errorList
          ? _value._errorList
          : errorList // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_FileInteractionState
    with DiagnosticableTreeMixin
    implements _FileInteractionState {
  const _$_FileInteractionState(
      {required this.status,
      required this.fileStatus,
      required final List<UploadingProgress> uploadProgressList,
      required final List<DownloadingProgress> downloadingProgressList,
      required final List<MessageModel> errorList,
      this.error})
      : _uploadProgressList = uploadProgressList,
        _downloadingProgressList = downloadingProgressList,
        _errorList = errorList;

  @override
  final BlocStatus status;
  @override
  final FileStatus fileStatus;
  final List<UploadingProgress> _uploadProgressList;
  @override
  List<UploadingProgress> get uploadProgressList {
    if (_uploadProgressList is EqualUnmodifiableListView)
      return _uploadProgressList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_uploadProgressList);
  }

  final List<DownloadingProgress> _downloadingProgressList;
  @override
  List<DownloadingProgress> get downloadingProgressList {
    if (_downloadingProgressList is EqualUnmodifiableListView)
      return _downloadingProgressList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_downloadingProgressList);
  }

  final List<MessageModel> _errorList;
  @override
  List<MessageModel> get errorList {
    if (_errorList is EqualUnmodifiableListView) return _errorList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errorList);
  }

  @override
  final Object? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FileInteractionState(status: $status, fileStatus: $fileStatus, uploadProgressList: $uploadProgressList, downloadingProgressList: $downloadingProgressList, errorList: $errorList, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FileInteractionState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('fileStatus', fileStatus))
      ..add(DiagnosticsProperty('uploadProgressList', uploadProgressList))
      ..add(DiagnosticsProperty(
          'downloadingProgressList', downloadingProgressList))
      ..add(DiagnosticsProperty('errorList', errorList))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FileInteractionState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.fileStatus, fileStatus) ||
                other.fileStatus == fileStatus) &&
            const DeepCollectionEquality()
                .equals(other._uploadProgressList, _uploadProgressList) &&
            const DeepCollectionEquality().equals(
                other._downloadingProgressList, _downloadingProgressList) &&
            const DeepCollectionEquality()
                .equals(other._errorList, _errorList) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      fileStatus,
      const DeepCollectionEquality().hash(_uploadProgressList),
      const DeepCollectionEquality().hash(_downloadingProgressList),
      const DeepCollectionEquality().hash(_errorList),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FileInteractionStateCopyWith<_$_FileInteractionState> get copyWith =>
      __$$_FileInteractionStateCopyWithImpl<_$_FileInteractionState>(
          this, _$identity);
}

abstract class _FileInteractionState implements FileInteractionState {
  const factory _FileInteractionState(
      {required final BlocStatus status,
      required final FileStatus fileStatus,
      required final List<UploadingProgress> uploadProgressList,
      required final List<DownloadingProgress> downloadingProgressList,
      required final List<MessageModel> errorList,
      final Object? error}) = _$_FileInteractionState;

  @override
  BlocStatus get status;
  @override
  FileStatus get fileStatus;
  @override
  List<UploadingProgress> get uploadProgressList;
  @override
  List<DownloadingProgress> get downloadingProgressList;
  @override
  List<MessageModel> get errorList;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$_FileInteractionStateCopyWith<_$_FileInteractionState> get copyWith =>
      throw _privateConstructorUsedError;
}
