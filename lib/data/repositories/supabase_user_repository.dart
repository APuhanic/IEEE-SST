import 'package:ieee_sst/domain/models/user_model.dart';
import 'package:ieee_sst/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@LazySingleton(as: UserRepository)
class SupabaseUserRepository implements UserRepository {
  SupabaseUserRepository(this.supabase);
  final SupabaseClient supabase;

  @override
  Future<BaseUserModel> getUser(String id) async {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future<void> deleteUser(String id) {
    // TODO: implement deleteUser
    throw UnimplementedError();
  }

  @override
  Future<List<BaseUserModel>> getUsers() {
    // TODO: implement getUsers
    throw UnimplementedError();
  }

  @override
  Future<bool> isAdministrator() {
    // TODO: implement isAdministrator
    throw UnimplementedError();
  }

  @override
  Future<void> updateUser(BaseUserModel user) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }
}
