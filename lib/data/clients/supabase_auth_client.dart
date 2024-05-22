import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

/// Supabase Auth Client that calls directly to the Supabase Auth API.
///
@singleton
class SupabaseAuthClient {
  // TODO: Implement error handling
  SupabaseAuthClient(this._supabase);
  final SupabaseClient _supabase;

  /// Call the Supabase Auth API to sign in with email and password.
  Future<void> signIn(String email, String password) async =>
      await _supabase.auth.signInWithPassword(email: email, password: password);

  /// Call the Supabase Auth API to sign up with email and password.
  Future<void> signUp(String email, String password) async =>
      await _supabase.auth.signUp(email: email, password: password);

  /// Call the Supabase Auth API to sign out the current user.
  Future<void> signOut() async => await _supabase.auth.signOut();

  // Get current user
  // TODO: This is a temporary solution?
  Future<User> getCurrentUser() async => _supabase.auth.currentUser!;
}
