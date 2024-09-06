part of 'post_form_bloc.dart';

@freezed
class PostFormEvent with _$PostFormEvent {
  const factory PostFormEvent.createPost() = _CreatePost;
  const factory PostFormEvent.titleChanged(String title) = _TitleChanged;
  const factory PostFormEvent.contentChanged(String content) = _ContentChanged;
  const factory PostFormEvent.updatePost() = _UpdatePost;
  const factory PostFormEvent.deletePost(String postId) = _DeletePost;
}
