import 'package:google_sign_in/google_sign_in.dart';
import 'package:ieee_sst/data/models/supabase_user_model.dart';
import 'package:ieee_sst/data/clients/profile_client.dart';
import 'package:ieee_sst/domain/models/user_model.dart';
import 'package:ieee_sst/domain/repositories/auth/auth_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

@LazySingleton(as: AuthenticationRepository)
class AuthRepository implements AuthenticationRepository {
  AuthRepository(this._supabaseClient, this._profileClient);
  final SupabaseClient _supabaseClient;
  final ProfileClient _profileClient;

  @override
  Future<AuthResponse> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    final AuthResponse authResponse = await _supabaseClient.auth
        .signInWithPassword(email: email, password: password);
    await _setFcmToken();
    return authResponse;
  }

  @override
  Future<void> signUpWithEmailAndPassword(
    String email,
    String password,
    String fullName,
    String? organization,
    String? position,
    String? country,
  ) async {
    // TODO: Implement error handling for profile creation
    final response = await _supabaseClient.auth.signUp(
      email: email,
      password: password,
      data: {
        'role': 'user',
        'full_name': fullName,
        'organization': organization,
        'position': position,
        'country': country,
      },
    );
    await _profileClient.addUserProfile(
      response.user!.id,
      fullName,
      email,
      organization ?? '',
      position ?? '',
      country ?? '',
    );
    _setFcmToken();
  }

  @override
  Future<void> signOut() async => _supabaseClient.auth.signOut();

  @override
  BaseUserModel? getCurrentUser() {
    final user = _supabaseClient.auth.currentUser;
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
    return _supabaseClient.auth.onAuthStateChange.map((event) {
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

  @override
  Future<void> signUpWithEmailAndPasswordAsAdmin(
    String email,
    String password,
  ) async {
    // TODO: Implement error handling for profile creation
    final response =
        await _supabaseClient.auth.signUp(email: email, password: password);
    await _supabaseClient.from('profiles').insert({
      'id': response.user!.id,
      'role': 'admin',
    });
    await _supabaseClient.auth
        .updateUser(UserAttributes(data: {'role': 'admin'}));
  }

  @override
  Future<AuthResponse> signInWithGoogle() async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
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

    final AuthResponse authResponse =
        await _supabaseClient.auth.signInWithIdToken(
      provider: OAuthProvider.google,
      idToken: idToken,
      accessToken: accessToken,
    );
    await _setFcmToken();
    return authResponse;
  }

  @override
  Future<void> resetPassword(String email) async {
    await _supabaseClient.auth.resetPasswordForEmail(email);
  }

  @override
  Future<void> updateUserInfo(
      String? organization, String? position, String? country) async {
    final user = _supabaseClient.auth.currentUser;
    if (user == null) {
      throw 'User is not signed in.';
    }

    await _profileClient.updateUserProfile(
      user.id,
      organization,
      position,
      country,
    );
  }

  Future<void> _setFcmToken() async {
    final user = _supabaseClient.auth.currentUser;
    if (user == null) {
      throw 'User is not signed in.';
    }

    final fcmToken = await FirebaseMessaging.instance.getToken();

    if (fcmToken == null) {
      throw 'FCM token is null.';
    }
    await _profileClient.addFcmTOken(
      user.id,
      fcmToken,
    );
  }
}
