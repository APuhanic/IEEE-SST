import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ieee_sst/data/models/text_input_models/confirm_password.dart';
import 'package:ieee_sst/data/models/text_input_models/email.dart';
import 'package:ieee_sst/data/models/text_input_models/password.dart';
import 'package:ieee_sst/data/models/text_input_models/user_name.dart';
import 'package:ieee_sst/domain/repositories/auth/auth_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'registration_event.dart';
part 'registration_state.dart';
part 'registration_bloc.freezed.dart';

@injectable
class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  RegistrationBloc(this._supabaseAuthRepository)
      : super(const _RegistrationState()) {
    on<_Submitted>(
      _onSubmitted,
    );
    on<_EmailChanged>(
      _onEmailChanged,
    );
    on<_PasswordChanged>(
      _onPasswordChanged,
    );
    on<_UserNameChanged>(
      _onUserNameChanged,
    );
    on<_ConfirmPasswordChanged>(
      _onConfirmPasswordChanged,
    );
  }
  final AuthenticationRepository _supabaseAuthRepository;

  void _onSubmitted(
    _Submitted event,
    Emitter<RegistrationState> emit,
  ) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      await _supabaseAuthRepository.signUpWithEmailAndPassword(
          state.email.value, state.password.value);
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } on AuthException catch (e) {
      emit(state.copyWith(
        status: FormzSubmissionStatus.failure,
        errorMessage: e.message,
      ));
    }
  }

  void _onEmailChanged(
    _EmailChanged event,
    Emitter<RegistrationState> emit,
  ) {
    final email = Email.dirty(event.email);
    emit(
      state.copyWith(
        email: email,
        isValid: Formz.validate([email, state.password, state.userName]),
      ),
    );
  }

  void _onPasswordChanged(
    _PasswordChanged event,
    Emitter<RegistrationState> emit,
  ) {
    final password = Password.dirty(event.password);
    emit(
      state.copyWith(
        password: password,
        isValid: Formz.validate([state.email, password, state.userName]),
      ),
    );
  }

  void _onUserNameChanged(
    _UserNameChanged event,
    Emitter<RegistrationState> emit,
  ) {
    final userName = UserName.dirty(event.userName);
    emit(
      state.copyWith(
        userName: userName,
        isValid: Formz.validate([state.email, state.password, userName]),
      ),
    );
  }

  void _onConfirmPasswordChanged(
    _ConfirmPasswordChanged event,
    Emitter<RegistrationState> emit,
  ) {
    final confirmPassword = ConfirmPassowrd.dirty(event.confirmPassword);
    emit(
      state.copyWith(
        confirmPassword: confirmPassword,
        isValid: Formz.validate(
            [state.email, state.password, state.userName, confirmPassword]),
      ),
    );
  }
}
