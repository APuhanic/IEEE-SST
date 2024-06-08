import 'package:ieee_sst/data/models/profile_model/profile_model.dart';
import 'package:ieee_sst/data/supabase/supabase_profile_api.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@LazySingleton()
class SupabaseProfileRepository {
  SupabaseProfileRepository(this._supabaseApi);
  final SupabaseProfileApi _supabaseApi;

  Future<String> getProfileRole(String id) async =>
      await _supabaseApi.fetchProfile().then((value) => value[0]['role']);

  Future<Profile> getProfile() async {
    try {
      final profileResponse = await _supabaseApi.fetchProfile();
      return Profile.fromJson(profileResponse[0]);
    } catch (e) {
      Logger().e(e);
      rethrow;
    }
  }

  Future<List<Profile>> getProfiles() async {
    try {
      final profilesResponse = await _supabaseApi.fetchProfiles();
      return profilesResponse
          .map((profile) => Profile.fromJson(profile))
          .toList();
    } catch (e) {
      Logger().e(e);
      rethrow;
    }
  }
}
