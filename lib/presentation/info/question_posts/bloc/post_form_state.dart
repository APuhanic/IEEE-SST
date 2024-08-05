part of 'post_form_bloc.dart';

@freezed
class PostFormState with _$PostFormState {
  const factory PostFormState({
    String? id,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default('') String title,
    @Default('') String content,
    @Default('') String timePosted,
    @Default('') String fullName,
    @Default('') String errorMessage,
  }) = _PostFormState;
}
