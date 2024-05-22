part of 'registration_bloc.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState({
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default(Email.pure()) Email email,
    @Default(Password.pure()) Password password,
    @Default(UserName.pure()) UserName userName,
    @Default(ConfirmPassowrd.pure()) ConfirmPassowrd confirmPassword,
    @Default(false) bool isValid,
    @Default('') String errorMessage,
  }) = _RegistrationState;
}
