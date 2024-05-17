part of 'registration_bloc.dart';

@freezed
class RegistrationEvent with _$RegistrationEvent {
  const factory RegistrationEvent.register(
      {required String email,
      required String password,
      required String userName}) = _Register;
}
