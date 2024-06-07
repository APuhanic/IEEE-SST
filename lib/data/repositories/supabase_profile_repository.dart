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
      Logger().w('Profile response: $profileResponse');
      final profile = Profile.fromJson(profileResponse[0]);
      return profile;
    } catch (e) {
      Logger().e('Error fetching profile: $e');
      rethrow;
    }
  }
}
