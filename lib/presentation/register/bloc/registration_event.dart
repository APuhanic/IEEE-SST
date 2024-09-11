part of 'registration_bloc.dart';

@freezed
class RegistrationEvent with _$RegistrationEvent {
  const factory RegistrationEvent.submitted() = _Submitted;
  const factory RegistrationEvent.emailChanged(String email) = _EmailChanged;
  const factory RegistrationEvent.passwordChanged(String password) =
      _PasswordChanged;
  const factory RegistrationEvent.fullNameChanged(String fullName) =
      _UserNameChanged;
  const factory RegistrationEvent.organizationChanged(String organization) =
      _OrganizationChanged;
  const factory RegistrationEvent.positionChanged(String position) =
      _PositionChanged;
  const factory RegistrationEvent.confirmPasswordChanged(
      String confirmPassword) = _ConfirmPasswordChanged;
  const factory RegistrationEvent.countryChanged(String country) =
      _CountryChanged;
  const factory RegistrationEvent.updateUserInfo() = _UpdateUserInfo;
  const factory RegistrationEvent.setInitialValues(
    String organization,
    String position,
    String country,
  ) = _SetInitialValues;
}
