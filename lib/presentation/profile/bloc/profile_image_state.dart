part of 'profile_image_bloc.dart';

@freezed
class ProfileImageState with _$ProfileImageState {
  const factory ProfileImageState({
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default('') String errorMessage,
    XFile? image,
    @Default(false) bool isChoosing,
  }) = _ProfileImageState;
}
