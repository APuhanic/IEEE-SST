import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ieee_sst/data/models/comment_model/comment_model.dart';
import 'package:ieee_sst/data/repositories/comments_repository.dart';
import 'package:injectable/injectable.dart';

part 'comment_managment_event.dart';
part 'comment_managment_state.dart';
part 'comment_managment_bloc.freezed.dart';

@injectable
class CommentManagmentBloc
    extends Bloc<CommentManagmentEvent, CommentManagmentState> {
  CommentManagmentBloc(this._commentsRepository) : super(const _Initial()) {
    on<_LoadComments>(_onLoadComments);
    on<_DeleteComment>(_onDeleteComment);
  }

  final CommentsRepository _commentsRepository;

  Future<FutureOr<void>> _onLoadComments(
      _LoadComments event, Emitter<CommentManagmentState> emit) async {
    emit(const _Loading());
    try {
      final commentsResponse =
          await _commentsRepository.getAllComments(event.postId);
      emit(_Loaded(commentsResponse));
    } catch (e) {
      emit(_Error(e.toString()));
    }
  }

  FutureOr<void> _onDeleteComment(
      _DeleteComment event, Emitter<CommentManagmentState> emit) {
    try {
      _commentsRepository.deleteComment(event.commentId);
      if (state is _Loaded) {
        final comments = (state as _Loaded).comments;
        final updatedComments =
            comments.where((e) => e.id != event.commentId).toList();
        emit(_Loaded(updatedComments));
      }
    } catch (e) {
      emit(_Error(e.toString()));
    }
  }
}
