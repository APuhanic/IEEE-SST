part of 'comment_form_bloc.dart';

@freezed
class CommentFormState with _$CommentFormState {
  const factory CommentFormState({
    String? id,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default('') String content,
    @Default('') String errorMessage,
  }) = _CommentFormState;
}
