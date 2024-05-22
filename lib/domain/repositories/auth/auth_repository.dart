import 'package:ieee_sst/domain/models/user_model.dart';

abstract class AuthenticationRepository {
  Future<void> signInWithEmailAndPassword(String email, String password);
  Future<void> signUpWithEmailAndPassword(String email, String password);
  Future<void> signOut();
  BaseUserModel? getCurrentUser();
  Stream<BaseUserModel?> getCurrentUserStream();
}
