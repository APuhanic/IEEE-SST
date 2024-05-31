import 'package:ieee_sst/data/supabase/supabase_api.dart';
import 'package:ieee_sst/di/dependency_injection.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class SupabaseProfileRepository {
  final _supabaseApi = getIt<SupabaseApi>();

  Future<String> getProfileRole(String id) async =>
      await _supabaseApi.fetchProfile(id).then((value) => value[0]['role']);
}
