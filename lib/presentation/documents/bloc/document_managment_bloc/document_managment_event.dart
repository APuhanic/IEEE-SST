part of 'document_managment_bloc.dart';

@freezed
class DocumentManagmentEvent with _$DocumentManagmentEvent {
  const factory DocumentManagmentEvent.loadDocuments() = _LoadDocuments;
  const factory DocumentManagmentEvent.deleteDocument(Document document) =
      _DeleteDocument;
}
