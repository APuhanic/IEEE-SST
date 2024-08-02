import 'dart:io';

import 'package:ieee_sst/data/models/sponsor_model/sponsor_model.dart';
import 'package:ieee_sst/data/supabase/supabase_sponsor_api.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class SupabaseSponsorRepository {
  SupabaseSponsorRepository(this._supabaseSponsorApi);

  final SupabaseSponsorApi _supabaseSponsorApi;

  Future<List<Sponsor>> fetchSponsors() async {
    final sponsorsResponse = await _supabaseSponsorApi.fetchSponsors();
    return sponsorsResponse
        .map((sponsor) => Sponsor.fromJson(sponsor))
        .toList();
  }

  Future<void> addSponsor(String name, File image) async {
    final String imagePathResponse =
        await _supabaseSponsorApi.uploadImage(image);
    await _supabaseSponsorApi.addSponsor(
        name, imagePathResponse, image.path.toString());
  }

  Future<void> deleteSponsor(Sponsor sponsor) async {
    await _supabaseSponsorApi.deleteSponsor(sponsor);
  }
}
