import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ieee_sst/domain/repositories/auth/auth_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._supabaseAuthRepository) : super(const _Initial()) {
    on<LoginEvent>(
      _onLoginEvent,
    );
  }
  final AuthenticationRepository _supabaseAuthRepository;

  void _onLoginEvent(
    LoginEvent event,
    Emitter<LoginState> emit,
  ) async {
    emit(const LoginState.loading());
    await event.when(
      login: (email, password) async {
        try {
          await _supabaseAuthRepository.signInWithEmailAndPassword(
            email,
            password,
          );
          emit(const LoginState.success());
        } on AuthException catch (e) {
          emit(LoginState.error(e.message));
        }
      },
      getCurrentUser: (id) async {
        try {
          final user = await _supabaseAuthRepository.getCurrentUser();
          Logger().w(user);
          emit(const LoginState.success());
        } on AuthException catch (e) {
          emit(LoginState.error(e.message));
        }
      },
    );
  }
}
