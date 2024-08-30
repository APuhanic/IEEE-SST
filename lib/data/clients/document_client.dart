import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:ieee_sst/data/models/document_model/document_model.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@injectable
class DocumentClient {
  DocumentClient(this._supabaseClient);

  final SupabaseClient _supabaseClient;

  Future<List<Map<String, dynamic>>> fetchDocuments() async {
    try {
      return await _supabaseClient.from('documents').select();
    } on AuthException catch (e) {
      throw Exception(e.message);
    }
  }

  Future<void> addDocument(String name, String url, String path) async {
    try {
      await _supabaseClient.from('documents').insert({
        'name': name,
        'url': url,
        'path': path,
      });
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> deleteDocument(Document document) async {
    try {
      await _supabaseClient.storage.from('documents').remove([document.path]);
      await _supabaseClient
          .from('documents')
          .delete()
          .eq('path', document.path);
    } catch (e) {
      throw Exception(e);
    }
  }

  uploadDocument(FilePickerResult file) async {
    try {
      final PlatformFile platformFile = file.files.single;
      final File dartFile = File(platformFile.path!);
      await _supabaseClient.storage
          .from('documents')
          .upload(file.files.single.path!, dartFile);
      return _supabaseClient.storage
          .from('documents')
          .getPublicUrl(file.files.single.path!);
    } catch (e) {
      throw Exception(e);
    }
  }
}
