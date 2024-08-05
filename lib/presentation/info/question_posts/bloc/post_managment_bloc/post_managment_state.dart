part of 'post_managment_bloc.dart';

@freezed
class PostManagmentState with _$PostManagmentState {
  const factory PostManagmentState.initial() = _Initial;
  const factory PostManagmentState.loading() = _Loading;
  const factory PostManagmentState.loaded(List<Post> posts) = _Loaded;
  const factory PostManagmentState.error(String message) = _Error;
}
