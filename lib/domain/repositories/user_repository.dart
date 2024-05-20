import 'package:ieee_sst/domain/models/user_model.dart';

abstract class UserRepository {
  Future<BaseUserModel> getUser(String id);
  Future<bool> isAdministrator();
  Future<List<BaseUserModel>> getUsers();
  Future<void> updateUser(BaseUserModel user);
  Future<void> deleteUser(String id);
}
