import 'dart:io';

import 'package:ieee_sst/data/models/profile_model/profile_model.dart';
import 'package:ieee_sst/data/clients/profile_client.dart';
import 'package:injectable/injectable.dart';

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
      throw Exception('Error fetching profile');
    }
  }

  Future<List<Profile>> getProfiles() async {
    try {
      final profilesResponse = await _profileClient.fetchProfiles();
      return profilesResponse
          .map((profile) => Profile.fromJson(profile))
          .toList();
    } catch (e) {
      throw Exception('Error fetching profiles');
    }
  }

  Future<void> updateProfileRole(String id, String role) async {
    try {
      await _profileClient.updateUserRole(id, role);
    } catch (e) {
      throw Exception('Error updating profile role');
    }
  }

  Future<void> addProfileImage(Profile profile, File image) async {
    try {
      if (profile.imageUrl != null) {
        await _profileClient.deleteProfileImage(profile);
      }
      final String imageUrl = await _profileClient.uploadUserImage(image);
      await _profileClient.addProfileImage(
        removeFirstSlash(image.path.toString()),
        imageUrl,
      );
    } catch (e) {
      throw Exception('Error updating profile');
    }
  }

//TODO make extension
  String removeFirstSlash(String path) {
    return path.replaceFirst(RegExp(r'^/'), '');
  }
}
