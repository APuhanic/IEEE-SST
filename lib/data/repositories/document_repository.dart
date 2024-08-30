import 'package:file_picker/file_picker.dart';
import 'package:ieee_sst/data/clients/document_client.dart';
import 'package:ieee_sst/data/models/document_model/document_model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class DocumentRepository {
  final DocumentClient _documentClient;

  DocumentRepository(this._documentClient);

  Future<List<Document>> fetchDocuments() async {
    final documentsResponse = await _documentClient.fetchDocuments();
    return documentsResponse
        .map((document) => Document.fromJson(document))
        .toList();
  }

  Future<void> addDocument(String name, FilePickerResult file) async {
    final String doucmentPathResponse =
        await _documentClient.uploadDocument(file);
    await _documentClient.addDocument(
      name,
      doucmentPathResponse,
      file.files.single.path!,
    );
  }

  Future<void> deleteDocument(Document document) async {
    await _documentClient.deleteDocument(document);
  }
}
