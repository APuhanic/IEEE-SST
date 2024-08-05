import 'package:ieee_sst/data/models/profile_model/profile_model.dart';
import 'package:ieee_sst/data/clients/profile_client.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@LazySingleton()
class ProfileRepository {
  ProfileRepository(this._profileClient);
  final ProfileClient _profileClient;

  Future<String> getProfileRole(String id) async =>
      await _profileClient.fetchProfile().then((value) => value[0]['role']);

  Future<Profile> getProfile() async {
    try {
      final profileResponse = await _profileClient.fetchProfile();
      return Profile.fromJson(profileResponse[0]);
    } catch (e) {
      Logger().e(e);
      rethrow;
    }
  }

  Future<List<Profile>> getProfiles() async {
    try {
      final profilesResponse = await _profileClient.fetchProfiles();
      return profilesResponse
          .map((profile) => Profile.fromJson(profile))
          .toList();
    } catch (e) {
      Logger().e(e);
      rethrow;
    }
  }
}
