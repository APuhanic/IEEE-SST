import 'package:supabase_flutter/supabase_flutter.dart';

abstract class AuthenticationRepository {
  Future<void> signInWithEmailAndPassword(String email, String password);
  Future<void> signUpWithEmailAndPassword(String email, String password);
  Future<void> signOut();
  Future<String> getUser();
  Future<User> getCurrentUser();
}
