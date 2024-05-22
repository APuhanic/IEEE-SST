part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signOut() = _SignOut;
  const factory AuthEvent.onCurrentUserChanged(BaseUserModel? user) =
      _OnCurrentUserChanged;
  const factory AuthEvent.onInitialAuthEvent() = _OnInitialAuthEvent;
}
