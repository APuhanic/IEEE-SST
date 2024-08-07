part of 'comment_managment_bloc.dart';

@freezed
class CommentManagmentState with _$CommentManagmentState {
  const factory CommentManagmentState.initial() = _Initial;
  const factory CommentManagmentState.loading() = _Loading;
  const factory CommentManagmentState.loaded(List<Comment> comments) = _Loaded;
  const factory CommentManagmentState.error(String message) = _Error;
}
