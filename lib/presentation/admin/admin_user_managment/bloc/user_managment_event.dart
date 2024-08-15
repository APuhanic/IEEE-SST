part of 'user_managment_bloc.dart';

@freezed
class UserManagmentEvent with _$UserManagmentEvent {
  const factory UserManagmentEvent.roleChanged(String role) = _RoleChanged;
  const factory UserManagmentEvent.updateRole(String id) = _UpdateRole;
}
