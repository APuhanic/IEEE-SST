import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@injectable
class CommentClient {
  CommentClient(this._supabaseClient);

  final SupabaseClient _supabaseClient;

  Future<void> postComment(
    int postId,
    String content,
  ) async {
    try {
      await _supabaseClient.from('comments').insert({
        'content': content,
        'postedBy': _supabaseClient.auth.currentUser?.id,
        'postId': postId,
      });
    } catch (e) {
      //TODO: Add proper error handling
      debugPrint(e.toString());
    }
  }

  Future<List<Map<String, dynamic>>> fetchComments(int postId) async {
    try {
      final response = await _supabaseClient.rpc(
        'get_comments_with_profiles',
        params: {'post_id': postId},
      ).select();
      Logger().e(response);
      return response;
    } on Exception {
      rethrow;
    }
  }

  Future<void> deleteComments(int announcementId) async {
    try {
      await _supabaseClient.from('comments').delete().eq('id', announcementId);
    } catch (e) {
      throw Exception(e);
    }
  }

  /*Future<void> updateAnnouncement(Map<String, dynamic> announcement) async {
    try {
      await _supabaseClient.from('announcements').upsert(announcement);
    } catch (e) {
      throw Exception(e);
    }
  }*/
}
