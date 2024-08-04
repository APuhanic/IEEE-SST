part of 'announcement_form_bloc.dart';

@freezed
class AnnouncementFormState with _$AnnouncementFormState {
  const factory AnnouncementFormState({
    String? id,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default('') String title,
    @Default('') String description,
    @Default('') String errorMessage,
    @Default('') String timeposted,
    @Default('') String fullName,
  }) = _AnnouncementFormState;
}
