import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ieee_sst/data/repositories/post_repository.dart';
import 'package:injectable/injectable.dart';

part 'post_form_event.dart';
part 'post_form_state.dart';
part 'post_form_bloc.freezed.dart';

@injectable
class PostFormBloc extends Bloc<PostFormEvent, PostFormState> {
  PostFormBloc(this._postRepository) : super(const _PostFormState()) {
    on<_CreatePost>(_onCreatePost);
    on<_TitleChanged>(_onTitleChanged);
    on<_ContentChanged>(_onContentChanged);
  }

  final PostRepository _postRepository;

  Future<void> _onCreatePost(
      PostFormEvent event, Emitter<PostFormState> emit) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      await _postRepository.uploadPost(
        state.title,
        state.content,
      );
      emit(state.copyWith(
        status: FormzSubmissionStatus.success,
        title: '',
        content: '',
      ));
    } catch (e) {
      emit(state.copyWith(
          status: FormzSubmissionStatus.failure, errorMessage: e.toString()));
    }
  }

  void _onTitleChanged(_TitleChanged event, Emitter<PostFormState> emit) {
    emit(state.copyWith(title: event.title));
  }

  void _onContentChanged(_ContentChanged event, Emitter<PostFormState> emit) {
    emit(state.copyWith(content: event.content));
  }
}
