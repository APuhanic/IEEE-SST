part of 'comment_form_bloc.dart';

@freezed
class CommentFormEvent with _$CommentFormEvent {
  const factory CommentFormEvent.commentChanged(String content) =
      _CommentChanged;
  const factory CommentFormEvent.postComment(int postId) = _PostComment;
}
