import 'dart:io';

import 'package:ieee_sst/data/models/sponsor_model/sponsor_model.dart';
import 'package:ieee_sst/util/remove_first_slash.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@injectable
class SponsorClient {
  SponsorClient(this._supabaseClient);
  final SupabaseClient _supabaseClient;

  Future<List<Map<String, dynamic>>> fetchSponsors() async =>
      await _supabaseClient.from('sponsors').select();

  Future<void> addSponsor(
          String name, String imageUrl, String imagePath) async =>
      await _supabaseClient.from('sponsors').insert({
        'name': name,
        'imageUrl': imageUrl,
        'imagePath': imagePath,
      });

  uploadImage(File image) async {
    await _supabaseClient.storage.from('images').upload(image.path, image);
    return _supabaseClient.storage.from('images').getPublicUrl(image.path);
  }

  Future<void> deleteSponsor(Sponsor sponsor) async {
    await _supabaseClient.storage
        .from('images')
        .remove([sponsor.imagePath.removeFirstSlash()]);
    await _supabaseClient.from('sponsors').delete().eq('id', sponsor.id);
  }
}
