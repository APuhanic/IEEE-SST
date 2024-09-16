import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ieee_sst/data/models/input_models/confirm_password.dart';
import 'package:ieee_sst/data/models/input_models/email.dart';
import 'package:ieee_sst/data/models/input_models/organization.dart';
import 'package:ieee_sst/data/models/input_models/password.dart';
import 'package:ieee_sst/data/models/input_models/full_name.dart';
import 'package:ieee_sst/data/models/input_models/position.dart';
import 'package:ieee_sst/domain/repositories/auth/auth_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'registration_event.dart';
part 'registration_state.dart';
part 'registration_bloc.freezed.dart';

@injectable
class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  RegistrationBloc(this._authRepository) : super(const _RegistrationState()) {
    on<_Submitted>(_onSubmitted);
    on<_EmailChanged>(_onEmailChanged);
    on<_PasswordChanged>(_onPasswordChanged);
    on<_UserNameChanged>(_onUserNameChanged);
    on<_ConfirmPasswordChanged>(_onConfirmPasswordChanged);
    on<_OrganizationChanged>(_onOrganizationChanged);
    on<_PositionChanged>(_onPositionChanged);
    on<_CountryChanged>(_onCountryChanged);
    on<_UpdateUserInfo>(_onUpdateUserInfo);
    on<_SetInitialValues>(_onSetInitialValues);
    on<_UpdatePassword>(_onUpdatePassword);
  }
  final AuthenticationRepository _authRepository;

  //TODO: Separate user info and auth

  void _onSubmitted(
    _Submitted event,
    Emitter<RegistrationState> emit,
  ) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      await _authRepository.signUpWithEmailAndPassword(
        state.email.value,
        state.password.value,
        state.fullName.value,
        state.organization.value,
        state.position.value,
        state.country,
      );
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
        isValid: Formz.validate([email, state.password, state.fullName]),
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
        isValid: Formz.validate(
            [state.email, password, state.fullName, state.confirmPassword]),
      ),
    );
  }

  void _onUserNameChanged(
    _UserNameChanged event,
    Emitter<RegistrationState> emit,
  ) {
    final fullName = FullName.dirty(event.fullName);
    emit(
      state.copyWith(
        fullName: fullName,
        isValid: Formz.validate([state.email, state.password, fullName]),
      ),
    );
  }

  void _onConfirmPasswordChanged(
    _ConfirmPasswordChanged event,
    Emitter<RegistrationState> emit,
  ) {
    final confirmPassword = ConfirmPassowrd.dirty(
      state.password.value,
      event.confirmPassword,
    );
    emit(
      state.copyWith(
        confirmPassword: confirmPassword,
        isValid: Formz.validate(
          [state.email, state.password, state.fullName, confirmPassword],
        ),
      ),
    );
  }

  void _onOrganizationChanged(
    _OrganizationChanged event,
    Emitter<RegistrationState> emit,
  ) {
    final organization = Organization.dirty(event.organization);
    emit(
      state.copyWith(
        organization: organization,
        isValid: Formz.validate(
            [state.email, state.password, state.fullName, organization]),
      ),
    );
  }

  void _onCountryChanged(
      _CountryChanged event, Emitter<RegistrationState> emit) {
    emit(state.copyWith(country: event.country));
  }

  void _onPositionChanged(
    _PositionChanged event,
    Emitter<RegistrationState> emit,
  ) {
    final position = Position.dirty(event.position);
    emit(
      state.copyWith(
        position: position,
        isValid: Formz.validate(
            [state.email, state.password, state.fullName, position]),
      ),
    );
  }

  Future<void> _onUpdateUserInfo(
      _UpdateUserInfo event, Emitter<RegistrationState> emit) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      await _authRepository.updateUserInfo(
        state.organization.value,
        state.position.value,
        state.country,
      );
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } on AuthException catch (e) {
      emit(state.copyWith(
        status: FormzSubmissionStatus.failure,
        errorMessage: e.message,
      ));
    }
  }

  void _onSetInitialValues(
      _SetInitialValues event, Emitter<RegistrationState> emit) {
    emit(
      state.copyWith(
        organization: Organization.dirty(event.organization),
        position: Position.dirty(event.position),
        country: event.country,
      ),
    );
  }

  Future<void> _onUpdatePassword(
      _UpdatePassword event, Emitter<RegistrationState> emit) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      await _authRepository.updatePassword(state.password.value);
      emit(state.copyWith(
        status: FormzSubmissionStatus.success,
        password: const Password.pure(),
        confirmPassword: const ConfirmPassowrd.dirty(''),
      ));
    } on AuthException catch (e) {
      emit(state.copyWith(
        status: FormzSubmissionStatus.failure,
        errorMessage: e.message,
      ));
    }
  }
}
