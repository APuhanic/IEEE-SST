import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@injectable
class CommentClient {
  CommentClient(this._supabaseClient);

  final SupabaseClient _supabaseClient;

  Future<void> postComment(
    int postId,
    String content,
  ) async =>
      await _supabaseClient.from('comments').insert({
        'content': content,
        'postedBy': _supabaseClient.auth.currentUser?.id,
        'postId': postId,
      });

  Future<List<Map<String, dynamic>>> fetchComments(int postId) async =>
      await _supabaseClient.rpc(
        'get_comments_with_profiles',
        params: {'post_id': postId},
      ).select();

  Future<void> deleteComments(int announcementId) async =>
      await _supabaseClient.from('comments').delete().eq('id', announcementId);
}
