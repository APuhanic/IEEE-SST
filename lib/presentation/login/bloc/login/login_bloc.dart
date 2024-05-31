import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ieee_sst/data/models/input_models/email.dart';
import 'package:ieee_sst/data/models/input_models/password.dart';
import 'package:ieee_sst/domain/repositories/auth/auth_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._authRepository) : super(const LoginState()) {
    on<_Submitted>(_onSubmitted);
    on<_EmailChanged>(_onEmailChanged);
    on<_PasswordChanged>(_onPasswordChanged);
  }

  final AuthenticationRepository _authRepository;

  Future<void> _onSubmitted(
    _Submitted event,
    Emitter<LoginState> emit,
  ) async {
    try {
      emit(state.copyWith(status: FormzSubmissionStatus.inProgress));

      final loginResponse = await _authRepository.signInWithEmailAndPassword(
        state.email.value,
        state.password.value,
      );

      if (loginResponse.user!.userMetadata!['role'] == 'admin') {
        emit(state.copyWith(
          status: FormzSubmissionStatus.success,
          isAdmin: true,
        ));
      } else {
        emit(state.copyWith(
          status: FormzSubmissionStatus.success,
          isAdmin: false,
        ));
      }
    } on AuthException catch (e) {
      emit(state.copyWith(
        status: FormzSubmissionStatus.failure,
        errorMessage: e.message,
      ));
    }
  }

  FutureOr<void> _onPasswordChanged(
    _PasswordChanged event,
    Emitter<LoginState> emit,
  ) {
    final password = Password.dirty(event.password);

    emit(
      state.copyWith(
        password: password,
        status: FormzSubmissionStatus.initial,
        isValid: Formz.validate([password]),
      ),
    );
  }

  FutureOr<void> _onEmailChanged(
      _EmailChanged event, Emitter<LoginState> emit) {
    final email = Email.dirty(event.email);
    emit(
      state.copyWith(
        email: email,
        status: FormzSubmissionStatus.initial,
        isValid: Formz.validate([email]),
      ),
    );
  }
}
