part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.submitted(String email, String password) =
      _Submitted;
  const factory LoginEvent.emailChanged(String email) = _EmailChanged;
  const factory LoginEvent.passwordChanged(String password) = _PasswordChanged;
  const factory LoginEvent.loginWithGoogle() = _LoginWithGoogle;
}
