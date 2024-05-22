import 'package:ieee_sst/data/models/supabase_user_model.dart';
import 'package:ieee_sst/domain/models/user_model.dart';
import 'package:ieee_sst/domain/repositories/auth/auth_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

/// Supabase User Authentication Repository that handles login, sign up, sign out
/// and and other user related methods by calling the Supabase Auth Client.
/// Provides the implementation for the AuthenticationRepository for BLoC.
@LazySingleton(as: AuthenticationRepository)
class SupabaseAuthRepository implements AuthenticationRepository {
  SupabaseAuthRepository(this._supabase);
  final SupabaseClient _supabase;

  /// Login - Sign in with email and password.
  @override
  Future<AuthResponse> signInWithEmailAndPassword(
    String email,
    String password,
  ) async => _supabase.auth.signInWithPassword(email: email, password: password);

  /// Registration - Sign up with email and password.
  @override
  Future<AuthResponse> signUpWithEmailAndPassword(
    String email,
    String password,
  ) async => _supabase.auth.signUp(email: email, password: password);

  /// Sign out the current user.
  @override
  Future<void> signOut() async => _supabase.auth.signOut();

  /// Get the current user from local storage or session.
  @override
  BaseUserModel? getCurrentUser() {
    final user = _supabase.auth.currentUser;
    return user != null
        ? SupabaseUser(
            id: user.id,
            email: user.email,
            appMetadata: user.appMetadata,
            userMetadata: user.userMetadata,
            aud: user.aud,
            createdAt: user.createdAt,
          )
        : null;
  }

  @override
  Stream<BaseUserModel?> getCurrentUserStream() {
    return _supabase.auth.onAuthStateChange.map((event) {
      final user = event.session?.user;
      return user != null
          ? SupabaseUser(
              id: user.id,
              email: user.email,
              appMetadata: user.appMetadata,
              userMetadata: user.userMetadata,
              aud: user.aud,
              createdAt: user.createdAt,
            )
          : null;
    });
  }
}
