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
  ) async {
    return await _supabase.auth
        .signInWithPassword(email: email, password: password);
  }

  /// Registration - Sign up with email and password.
  @override
  Future<void> signUpWithEmailAndPassword(
    String email,
    String password,
    String fullName,
    String? organization,
    String? position,
  ) async {
    // TODO: Implement error handling for profile creation
    final response = await _supabase.auth.signUp(
      email: email,
      password: password,
      data: {
        'role': 'user',
        'full_name': fullName,
        'organization': organization,
        'position': position,
      },
    );
    // Set the user as user in the profile table
    // TODO: Replace with a profile creation method from supabaseAPI
    await _supabase.from('profiles').insert({
      'id': response.user!.id,
      // TODO: Add a role enum or class
      'role': 'user',
      'full_name': fullName,
      'email': email,
      'organization': organization,
      'position': position,
    });
  }

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

  /// Get the current user atuh stream from local storage or session.
  /// This stream will emit the current user when the user is signed in or
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

  Future<void> signUpWithEmailAndPasswordAsAdmin(
    String email,
    String password,
  ) async {
    // TODO: Implement error handling for profile creation
    final response =
        await _supabase.auth.signUp(email: email, password: password);
    // Set the user as admin in the profile table
    await _supabase.from('profiles').insert({
      'id': response.user!.id,
      'role': 'admin',
    });
    // Set the user as admin in the auth table metadata
    await _supabase.auth.updateUser(UserAttributes(data: {'role': 'admin'}));
  }
}
