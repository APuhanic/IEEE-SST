part of 'auth_session_cubit.dart';

@freezed
class AuthSessionState with _$AuthSessionState {
  const factory AuthSessionState.initial() = _Initial;
  const factory AuthSessionState.isUser() = _IsUser;
  const factory AuthSessionState.isAdmin({@Default(false) bool isInAdminMode}) =
      _IsAdmin;
}
