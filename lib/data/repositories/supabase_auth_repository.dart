import 'package:ieee_sst/domain/repositories/auth/auth_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@LazySingleton(as: AuthenticationRepository)
class SupabaseAuthenticationRepository implements AuthenticationRepository {
  SupabaseAuthenticationRepository(this.supabase);
  final SupabaseClient supabase;

  @override
  Future<AuthResponse> signInWithEmailAndPassword(
    String email,
    String password,
  ) async =>
      supabase.auth.signInWithPassword(email: email, password: password);

  @override
  Future<AuthResponse> signUpWithEmailAndPassword(
    String email,
    String password,
  ) async =>
      supabase.auth.signUp(email: email, password: password);

  @override
  Future<void> signOut() async => supabase.auth.signOut();

  @override
  Future<String> getUser() async => supabase.auth.currentUser?.email ?? '';

  @override
  Future<User> getCurrentUser() async => supabase.auth.currentUser!;
}
