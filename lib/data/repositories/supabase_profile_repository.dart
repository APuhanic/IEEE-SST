import 'package:ieee_sst/data/supabase/supabase_api.dart';
import 'package:ieee_sst/di/dependency_injection.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

/// Supabase Profile Repository that handles getting user profile info
/// by calling the Supabase API or local storage depening on connection.
@LazySingleton()
class SupabaseProfileRepository {
  SupabaseProfileRepository();

  final _supabaseApi = SupabaseApi(getIt<SupabaseClient>());

  /// Get the user role
  Future<String> getProfileRole(String id) async =>
      await _supabaseApi.fetchProfile(id).then((value) => value[0]['role']);
}
