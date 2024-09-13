import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:ieee_sst/data/constants/user_roles.dart';
import 'package:ieee_sst/data/models/profile_model/profile_model.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@injectable
class ProfileClient {
  ProfileClient(this._supabaseClient);
  final SupabaseClient _supabaseClient;

  Future<List<Map<String, dynamic>>> fetchProfile() async {
    try {
      final user = _supabaseClient.auth.currentUser;
      return await _supabaseClient.from('profiles').select().eq('id', user!.id);
    } on AuthException catch (e) {
      throw Exception(e.message);
    }
  }

  Future<List<Map<String, dynamic>>> fetchProfileByEmail(String email) async =>
      await _supabaseClient.from('profiles').select().eq('email', email);

  Future<List<Map<String, dynamic>>> fetchProfiles() async =>
      await _supabaseClient.from('profiles').select();

  Future<void> addUserProfile(
    String id,
    String fullName,
    String email,
    String organization,
    String position,
    String? country,
  ) async {
    return await _supabaseClient.from('profiles').insert({
      'id': id,
      'role': UserRoles.user,
      'fullName': fullName,
      'email': email,
      'organization': organization,
      'position': position,
      'country': country,
    });
  }

  Future<void> addGoogleProfile(
    String id,
    String fullName,
    String email,
    String imageUrl,
  ) async {
    //check if user already exists
    final user = await _supabaseClient.from('profiles').select().eq('id', id);
    if (user.isNotEmpty) return;
    return await _supabaseClient.from('profiles').insert({
      'id': id,
      'role': UserRoles.user,
      'fullName': fullName,
      'email': email,
      'imageUrl': imageUrl,
    });
  }

  Future<List<User>> getAllRegisteredUsers() async =>
      await _supabaseClient.auth.admin.listUsers();

  Future<void> updateUserRole(String id, String role) async =>
      await _supabaseClient
          .from('profiles')
          .update({'role': role}).eq('id', id);

  Future<void> updateUserProfile(String id, String? organization,
      String? position, String? country) async {
    return await _supabaseClient.from('profiles').update({
      'organization': organization,
      'position': position,
      'country': country,
    }).eq('id', id);
  }

  Future<void> addFcmTOken(String id, String? fcmToken) async {
    return await _supabaseClient.from('profiles').update({
      'fcmToken': fcmToken,
    }).eq('id', id);
  }

  Future<String> uploadUserImage(File image) async {
    try {
      await _supabaseClient.storage.from('images').upload(image.path, image);
      return _supabaseClient.storage.from('images').getPublicUrl(image.path);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> addProfileImage(String imagePath, String imageUrl) async {
    try {
      await _supabaseClient.from('profiles').update({
        'imagePath': imagePath,
        'imageUrl': imageUrl,
      }).eq('id', _supabaseClient.auth.currentUser!.id);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> deleteProfileImage(Profile profile) async {
    try {
      if (profile.imagePath == null) return;
      try {
        await _supabaseClient.storage
            .from('images')
            .remove([profile.imagePath!]);
      } on Exception catch (e) {
        debugPrint('Error deleting image: $e');
      }
      await _supabaseClient
          .from('profiles')
          .update({'imageUrl': null, 'imagePath': null}).eq('id', profile.id);
    } catch (e) {
      throw Exception(e);
    }
  }
}
