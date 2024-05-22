import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ieee_sst/domain/repositories/auth/auth_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBLoc extends Bloc<AuthEvent, AuthState> {
  AuthBLoc(this._supabaseAuthRepository) : super(const _Initial()) {
    on<AuthEvent>(
      _onLoginEvent,
    );
  }
  final AuthenticationRepository _supabaseAuthRepository;

  void _onLoginEvent(
    AuthEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    await event.when(
      login: (email, password) async {
        try {
          emit(const AuthState.loading());
          await _supabaseAuthRepository.signInWithEmailAndPassword(
            email,
            password,
          );
          emit(const AuthState.authenticated());
        } on AuthException catch (e) {
          emit(AuthState.error(e.message));
        }
      },
      getCurrentUser: () async {
        try {
          emit(const AuthState.loading());
          final user = await _supabaseAuthRepository.getCurrentUser();
          Logger().w(user);
          emit(const AuthState.authenticated());
        } on AuthException catch (e) {
          emit(AuthState.error(e.message));
        }
      },
      signOut: () async {
        try {
          await _supabaseAuthRepository.signOut();
          emit(const AuthState.unauthenticated());
        } on AuthException catch (e) {
          emit(AuthState.error(e.message));
        }
      },
    );
  }
}
