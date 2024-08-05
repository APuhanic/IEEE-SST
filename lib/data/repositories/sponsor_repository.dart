import 'dart:io';

import 'package:ieee_sst/data/models/sponsor_model/sponsor_model.dart';
import 'package:ieee_sst/data/clients/sponsor_client.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class SponsorRepository {
  SponsorRepository(this._sponsorClient);

  final SponsorClient _sponsorClient;

  Future<List<Sponsor>> fetchSponsors() async {
    final sponsorsResponse = await _sponsorClient.fetchSponsors();
    return sponsorsResponse
        .map((sponsor) => Sponsor.fromJson(sponsor))
        .toList();
  }

  Future<void> addSponsor(String name, File image) async {
    final String imagePathResponse = await _sponsorClient.uploadImage(image);
    await _sponsorClient.addSponsor(
        name, imagePathResponse, image.path.toString());
  }

  Future<void> deleteSponsor(Sponsor sponsor) async {
    await _sponsorClient.deleteSponsor(sponsor);
  }
}
