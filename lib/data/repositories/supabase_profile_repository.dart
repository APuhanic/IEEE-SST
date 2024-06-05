import 'package:ieee_sst/data/supabase/supabase_api.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class SupabaseProfileRepository {
  SupabaseProfileRepository(this._supabaseApi);
  final SupabaseProfileApi _supabaseApi;

  Future<String> getProfileRole(String id) async =>
      await _supabaseApi.fetchProfile(id).then((value) => value[0]['role']);
}
