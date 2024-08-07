import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ieee_sst/data/repositories/comments_repository.dart';
import 'package:injectable/injectable.dart';

part 'comment_form_event.dart';
part 'comment_form_state.dart';
part 'comment_form_bloc.freezed.dart';

@injectable
class CommentFormBloc extends Bloc<CommentFormEvent, CommentFormState> {
  CommentFormBloc(this._commentsRepository) : super(const _CommentFormState()) {
    on<_CommentChanged>(_onCommentChanged);
    on<_PostComment>(_onPostComment);
  }

  final CommentsRepository _commentsRepository;

  FutureOr<void> _onCommentChanged(
      _CommentChanged event, Emitter<CommentFormState> emit) {
    emit(state.copyWith(content: event.content));
  }

  Future<FutureOr<void>> _onPostComment(
      _PostComment event, Emitter<CommentFormState> emit) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      await _commentsRepository.postComment(event.postId, state.content);
      emit(state.copyWith(status: FormzSubmissionStatus.success, content: ''));
    } catch (e) {
      emit(state.copyWith(
          status: FormzSubmissionStatus.failure, errorMessage: e.toString()));
    }
  }
}
