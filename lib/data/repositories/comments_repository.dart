import 'package:ieee_sst/data/clients/comment_client.dart';
import 'package:ieee_sst/data/models/comment_model/comment_model.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@LazySingleton()
class CommentsRepository {
  final CommentClient _commentsClient;
  final SupabaseClient _supabaseClient;
  CommentsRepository(this._commentsClient, this._supabaseClient);

  Future<List<Comment>> getAllComments(int postId) async {
    final commentsResponse = await _commentsClient.fetchComments(postId);
    Logger().i(commentsResponse);
    return commentsResponse
        .map((comment) => Comment.fromJson(comment).copyWith(
              isOwner:
                  comment['postedBy'] == _supabaseClient.auth.currentUser?.id,
            ))
        .toList();
  }

  Future<void> postComment(int postId, String content) async {
    await _commentsClient.postComment(postId, content);
  }

  Future<void> deleteComment(int announcementId) {
    return _commentsClient.deleteComments(announcementId);
  }

  /*Future<void> updateComment(Comment comment) {
    return _commentsClient.updateComment(comment.toJson());
  }*/
}
