import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

/// Supabase API that handles fetching data from the Supabase database.
@LazySingleton()
class SupabaseApi {
  SupabaseApi(this._supabase);
  final SupabaseClient _supabase;

  /// Get the profile by id
  Future<List<Map<String, dynamic>>> fetchProfile(String id) async {
    return await _supabase.from('profiles').select().eq('id', id);
  }

  /// Get the profile by email
  Future<List<Map<String, dynamic>>> fetchProfileByEmail(String email) async {
    return await _supabase.from('profiles').select().eq('email', email);
  }
}
