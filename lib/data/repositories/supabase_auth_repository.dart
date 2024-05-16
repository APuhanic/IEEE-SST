import 'package:ieee_sst/domain/repositories/auth/auth_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@LazySingleton(as: AuthenticationRepository)
class SupabaseAuthenticationRepository implements AuthenticationRepository {
  final SupabaseClient supabase;

  SupabaseAuthenticationRepository(this.supabase);

  @override
  Future<AuthResponse> signInWithEmailAndPassword(
          String email, String password) async =>
      await supabase.auth.signInWithPassword(email: email, password: password);

  @override
  Future<AuthResponse> signUpWithEmailAndPassword(
          String email, String password) async =>
      await supabase.auth.signUp(email: email, password: password);

  @override
  Future<void> signOut() async => await supabase.auth.signOut();

  @override
  Future<UserResponse> isSignedIn() async => supabase.auth.getUser();

  @override
  Future<String> getUser() async => supabase.auth.currentUser?.email ?? '';
}
