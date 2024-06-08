part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.loadProfile() = _LoadProfile;
  const factory ProfileEvent.loadProfiles() = _LoadProfiles;
}
