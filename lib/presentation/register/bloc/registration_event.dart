part of 'registration_bloc.dart';

@freezed
class RegistrationEvent with _$RegistrationEvent {
  const factory RegistrationEvent.submitted(
      {required String email,
      required String password,
      required String userName}) = _Submitted;
  const factory RegistrationEvent.emailChanged(String email) = _EmailChanged;
  const factory RegistrationEvent.passwordChanged(String password) =
      _PasswordChanged;
  const factory RegistrationEvent.userNameChanged(String userName) =
      _UserNameChanged;
  const factory RegistrationEvent.confirmPasswordChanged(
      String confirmPassword) = _ConfirmPasswordChanged;
}
