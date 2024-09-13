import 'dart:io';

import 'package:ieee_sst/data/models/profile_model/profile_model.dart';
import 'package:ieee_sst/data/clients/profile_client.dart';
import 'package:ieee_sst/util/remove_first_slash.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class ProfileRepository {
  ProfileRepository(this._profileClient);
  final ProfileClient _profileClient;

  Future<String> getProfileRole(String id) async =>
      await _profileClient.fetchProfile().then((value) => value[0]['role']);

  Future<Profile> getProfile() async {
    final profileResponse = await _profileClient.fetchProfile();
    return Profile.fromJson(profileResponse[0]);
  }

  Future<List<Profile>> getProfiles() async {
    final profilesResponse = await _profileClient.fetchProfiles();
    return profilesResponse
        .map((profile) => Profile.fromJson(profile))
        .toList();
  }

  Future<void> updateProfileRole(String id, String role) async =>
      await _profileClient.updateUserRole(id, role);

  Future<void> addGoogleProfile(
    String id,
    String email,
    String fullName,
    String imageUrl,
  ) async {
    try {
      await _profileClient.addGoogleProfile(id, fullName, email, imageUrl);
    } catch (e) {
      throw Exception('Error adding google profile');
    }
  }

  Future<void> addProfileImage(Profile profile, File image) async {
    if (profile.imageUrl != null) {
      await _profileClient.deleteProfileImage(profile);
    }
    final String imageUrl = await _profileClient.uploadUserImage(image);
    await _profileClient.addProfileImage(
      image.path.toString().removeFirstSlash(),
      imageUrl,
    );
  }
}
