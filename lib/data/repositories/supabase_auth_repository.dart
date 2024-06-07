import 'package:google_sign_in/google_sign_in.dart';
import 'package:ieee_sst/data/models/supabase_user_model.dart';
import 'package:ieee_sst/data/supabase/supabase_profile_api.dart';
import 'package:ieee_sst/domain/models/user_model.dart';
import 'package:ieee_sst/domain/repositories/auth/auth_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@LazySingleton(as: AuthenticationRepository)
class SupabaseAuthRepository implements AuthenticationRepository {
  SupabaseAuthRepository(this._supabase, this._profileApi);
  final SupabaseClient _supabase;
  final SupabaseProfileApi _profileApi;

  @override
  Future<AuthResponse> signInWithEmailAndPassword(
    String email,
    String password,
  ) async =>
      await _supabase.auth.signInWithPassword(email: email, password: password);

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
    await _profileApi.addUserProfile(
      response.user!.id,
      fullName,
      email,
      organization ?? '',
      position ?? '',
    );
  }

  @override
  Future<void> signOut() async => _supabase.auth.signOut();

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

  /// Get the current user auth stream from local storage or session.
  /// This stream will emit the current user when the user is signed
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
    await _supabase.from('profiles').insert({
      'id': response.user!.id,
      'role': 'admin',
    });
    await _supabase.auth.updateUser(UserAttributes(data: {'role': 'admin'}));
  }

  @override
  Future<void> signInWithGoogle() async {
    const webClientId =
        '76206281014-25ljo7r9kmqctok3ird786ai3anc98kf.apps.googleusercontent.com';

    final GoogleSignIn googleSignIn = GoogleSignIn(
      serverClientId: webClientId,
    );
    final googleUser = await googleSignIn.signIn();
    final googleAuth = await googleUser!.authentication;
    final accessToken = googleAuth.accessToken;
    final idToken = googleAuth.idToken;

    if (accessToken == null) {
      throw 'No Access Token found.';
    }
    if (idToken == null) {
      throw 'No ID Token found.';
    }

    await _supabase.auth.signInWithIdToken(
      provider: OAuthProvider.google,
      idToken: idToken,
      accessToken: accessToken,
    );
  }
}
