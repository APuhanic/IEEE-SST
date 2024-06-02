import 'package:flutter/foundation.dart';
import 'package:ieee_sst/data/constants/user_roles.dart';
import 'package:ieee_sst/di/dependency_injection.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

/// Supabase API that handles fetching data from the Supabase database.
@LazySingleton()
class SupabaseApi {
  final SupabaseClient _supabaseClient = getIt<SupabaseClient>();

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

  Future<void> addEvent(
    String name,
    String description,
    String location,
    String speaker,
    DateTime date,
    String time,
  ) async {
    try {
      debugPrint('Adding event');
      await _supabaseClient.from('events').insert({
        'name': name,
        'description': description,
        'time': time,
        'location': location,
        'speaker': speaker,
        'date': date.toIso8601String(),
        'info': 'Event info',
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<List<Map<String, dynamic>>> fetchEvents() async =>
      Supabase.instance.client.from('events').select();
}
