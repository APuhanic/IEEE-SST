import 'package:ieee_sst/domain/models/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class AuthenticationRepository {
  Future<AuthResponse> signInWithEmailAndPassword(
      String email, String password);
  Future<void> signUpWithEmailAndPassword(
    String email,
    String password,
    String fullName,
    String? organization,
    String? position,
    String? country,
  );
  Future<void> signUpWithEmailAndPasswordAsAdmin(String email, String password);
  Future<void> signOut();
  BaseUserModel? getCurrentUser();
  Stream<BaseUserModel?> getCurrentUserStream();
  Future<AuthResponse> signInWithGoogle();
  Future<void> resetPassword(String email);
  Future<void> updateUserInfo(
    String? organization,
    String? position,
    String? country,
  );
  Future<void> updatePassword(String password);
}
