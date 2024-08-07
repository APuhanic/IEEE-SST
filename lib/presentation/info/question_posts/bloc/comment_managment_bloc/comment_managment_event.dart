part of 'comment_managment_bloc.dart';

@freezed
class CommentManagmentEvent with _$CommentManagmentEvent {
  const factory CommentManagmentEvent.loadComments(int postId) = _LoadComments;
  const factory CommentManagmentEvent.deleteComment(int commentId) =
      _DeleteComment;
}
