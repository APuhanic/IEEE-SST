import 'package:ieee_sst/data/constants/user_roles.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@injectable
class SupabaseProfileApi {
  final SupabaseClient _supabaseClient;

  SupabaseProfileApi(this._supabaseClient);

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
  ) async {
    return await _supabaseClient.from('profiles').insert({
      'id': id,
      'role': UserRoles.user,
      'full_name': fullName,
      'email': email,
      'organization': organization,
      'position': position,
    });
  }

  Future<List<User>> getAllRegisteredUsers() async =>
      await _supabaseClient.auth.admin.listUsers();
}
