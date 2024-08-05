import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ieee_sst/data/repositories/post_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

part 'post_form_event.dart';
part 'post_form_state.dart';
part 'post_form_bloc.freezed.dart';

//TODO: Replace this into a folder....
@injectable
class PostFormBloc extends Bloc<PostFormEvent, PostFormState> {
  PostFormBloc(this._postRepository) : super(const _PostFormState()) {
    on<_CreatePost>(_onCreatePost);
    on<_TitleChanged>(_onTitleChanged);
    on<_ContentChanged>(_onContentChanged);
  }

  final PostRepository _postRepository;

  FutureOr<void> _onCreatePost(
      PostFormEvent event, Emitter<PostFormState> emit) {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      // TODO: Rename to create post?
      Logger().w(state.title);
      Logger().w(state.content);

      _postRepository.uploadPost(
        state.title,
        state.content,
      );
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } catch (e) {
      emit(state.copyWith(
          status: FormzSubmissionStatus.failure, errorMessage: e.toString()));
    }
  }

  FutureOr<void> _onTitleChanged(
      _TitleChanged event, Emitter<PostFormState> emit) {
    emit(state.copyWith(title: event.title));
  }

  FutureOr<void> _onContentChanged(
      _ContentChanged event, Emitter<PostFormState> emit) {
    emit(state.copyWith(content: event.content));
  }
}
