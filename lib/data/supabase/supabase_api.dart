import 'package:ieee_sst/data/constants/user_roles.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@LazySingleton()
class SupabaseProfileApi {
  final SupabaseClient _supabaseClient;

  SupabaseProfileApi(this._supabaseClient);

  Future<List<Map<String, dynamic>>> fetchProfile(String id) async =>
      await _supabaseClient.from('profiles').select().eq('id', id);

  Future<List<Map<String, dynamic>>> fetchProfileByEmail(String email) async =>
      await _supabaseClient.from('profiles').select().eq('email', email);

  Future<List<Map<String, dynamic>>> fetchProfiles() async =>
      await _supabaseClient.from('profiles').select();

  // TODO: Implement enum or class for roles?
  Future<void> addUserProfile(String id) async =>
      await _supabaseClient.from('profiles').insert(
        {'id': id, 'role': UserRoles.user},
      );

  Future<List<User>> getAllRegisteredUsers() async =>
      await _supabaseClient.auth.admin.listUsers();
}
