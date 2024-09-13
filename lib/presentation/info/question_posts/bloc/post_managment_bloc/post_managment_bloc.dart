import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ieee_sst/data/models/post_model/post_model.dart';
import 'package:ieee_sst/data/repositories/post_repository.dart';
import 'package:injectable/injectable.dart';

part 'post_managment_event.dart';
part 'post_managment_state.dart';
part 'post_managment_bloc.freezed.dart';

@injectable
class PostManagmentBloc extends Bloc<PostManagmentEvent, PostManagmentState> {
  PostManagmentBloc(this._postRepository) : super(const _Initial()) {
    on<_LoadPosts>(_onLoadPosts);
    on<_DeletePost>(_onDeletePost);
  }

  final PostRepository _postRepository;

  Future<void> _onLoadPosts(
      _LoadPosts event, Emitter<PostManagmentState> emit) async {
    emit(const _Loading());
    try {
      final postsResponse = await _postRepository.getAllPosts();
      emit(_Loaded(sortPosts(postsResponse)));
    } catch (e) {
      emit(_Error(e.toString()));
    }
  }

  List<Post> sortPosts(List<Post> posts) =>
      posts..sort((a, b) => b.timePosted.compareTo(a.timePosted));

  Future<void> _onDeletePost(
      _DeletePost event, Emitter<PostManagmentState> emit) async {
    try {
      await _postRepository.deletePost(event.postId);
      if (state is _Loaded) {
        final posts = (state as _Loaded).posts;
        final updatedPosts = posts.where((e) => e.id != event.postId).toList();
        emit(_Loaded(updatedPosts));
      }
    } catch (e) {
      emit(_Error(e.toString()));
    }
  }
}
