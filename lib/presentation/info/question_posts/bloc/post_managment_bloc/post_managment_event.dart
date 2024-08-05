part of 'post_managment_bloc.dart';

@freezed
class PostManagmentEvent with _$PostManagmentEvent {
  const factory PostManagmentEvent.loadPosts() = _LoadPosts;
  const factory PostManagmentEvent.deletePost(String postId) = _DeletePost;
}
