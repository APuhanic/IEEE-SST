import 'package:ieee_sst/data/clients/supabase_auth_client.dart';
import 'package:ieee_sst/data/models/supabase_user_model.dart';
import 'package:ieee_sst/domain/models/user_model.dart';
import 'package:ieee_sst/domain/repositories/auth/auth_repository.dart';
import 'package:injectable/injectable.dart';

// TODO: Consider if this is the auth repository or user repository
// because there will be a repository made for
// just getting public list of registered users

/// Supabase User Authentication Repository that handles login, sign up, sign out
/// and and other user related methods by calling the Supabase Auth Client.
/// Provides the implementation for the AuthenticationRepository for BLoC.
@LazySingleton(as: AuthenticationRepository)
class SupabaseUserRepository implements AuthenticationRepository {
  SupabaseUserRepository(this.supabaseAuthClient);
  final SupabaseAuthClient supabaseAuthClient;

  /// Login - Sign in with email and password.
  @override
  Future<void> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    return supabaseAuthClient.signIn(email, password);
  }

  /// Registration - Sign up with email and password.
  @override
  Future<void> signUpWithEmailAndPassword(
    String email,
    String password,
  ) async =>
      supabaseAuthClient.signUp(email, password);

  /// Sign out the current user.
  @override
  Future<void> signOut() async => supabaseAuthClient.signOut();

  /// Get the current user
  @override
  Future<BaseUserModel> getCurrentUser() async {
    final user = await supabaseAuthClient.getCurrentUser();
    return SupabaseUser(
      id: user.id,
      email: user.email,
      appMetadata: user.appMetadata,
      userMetadata: user.userMetadata,
      aud: user.aud,
      createdAt: user.createdAt,
    );
  }
}
