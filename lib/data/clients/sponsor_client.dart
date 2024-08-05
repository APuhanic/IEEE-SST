import 'dart:io';

import 'package:ieee_sst/data/models/sponsor_model/sponsor_model.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@injectable
class SponsorClient {
  SponsorClient(this._supabaseClient);
  final SupabaseClient _supabaseClient;

  Future<List<Map<String, dynamic>>> fetchSponsors() async {
    try {
      return await _supabaseClient.from('sponsors').select();
    } on AuthException catch (e) {
      throw Exception(e.message);
    }
  }

  Future<void> addSponsor(
      String name, String imageUrl, String imagePath) async {
    try {
      await _supabaseClient.from('sponsors').insert({
        'name': name,
        'imageUrl': imageUrl,
        'imagePath': imagePath,
      });
    } catch (e) {
      throw Exception(e);
    }
  }

  uploadImage(File image) async {
    try {
      await _supabaseClient.storage.from('images').upload(image.path, image);
      return _supabaseClient.storage.from('images').getPublicUrl(image.path);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> deleteSponsor(Sponsor sponsor) async {
    try {
      await _supabaseClient.storage.from('images').remove([sponsor.imagePath]);
      await _supabaseClient.from('sponsors').delete().eq('id', sponsor.id);
    } catch (e) {
      throw Exception(e);
    }
  }
}
