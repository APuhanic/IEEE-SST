part of 'document_form_bloc.dart';

@freezed
class DocumentFormEvent with _$DocumentFormEvent {
  const factory DocumentFormEvent.fileChanged(FilePickerResult file) =
      _FileChanged;
  const factory DocumentFormEvent.removeFile() = _RemoveFile;
  const factory DocumentFormEvent.nameChanged(String name) = _NameChanged;
  const factory DocumentFormEvent.uploadDocument() = _UploadDocument;
}
