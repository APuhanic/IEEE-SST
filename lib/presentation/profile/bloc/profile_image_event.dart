part of 'profile_image_bloc.dart';

@freezed
class ProfileImageEvent with _$ProfileImageEvent {
  const factory ProfileImageEvent.addProfileImage(Profile profile) =
      _AddProfileImage;
  const factory ProfileImageEvent.imageChanged(XFile? image) = _ImageChanged;
  const factory ProfileImageEvent.removeImage() = _RemoveImage;
}
