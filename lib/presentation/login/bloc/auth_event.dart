part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login(
      {required String email, required String password}) = _Login;
  const factory AuthEvent.getCurrentUser() = _GetCurrentUser;
  const factory AuthEvent.signOut() = _SignOut;
}
