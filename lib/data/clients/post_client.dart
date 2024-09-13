import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@injectable
class PostsClient {
  PostsClient(this._supabaseClient);

  final SupabaseClient _supabaseClient;

  Future<void> uploadPost(
    String title,
    String content,
  ) async {
    try {
      await _supabaseClient.from('user_posts').insert({
        'title': title,
        'content': content,
        'postedBy': _supabaseClient.auth.currentUser?.id,
      });
    } catch (e) {
      //TODO: Add proper error handling
      debugPrint(e.toString());
    }
  }

  Future<List<Map<String, dynamic>>> fetchPosts() async {
    final res = await _supabaseClient.rpc('get_posts_with_profiles').select();
    Logger().w(res);
    return res;
  }

  Future<void> updatePost(Map<String, dynamic> post) async {
    try {
      await _supabaseClient.from('user_posts').upsert(post);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> deletePost(int postId) async {
    try {
      await _supabaseClient.from('user_posts').delete().eq('id', postId);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<int> getCommentCount(int id) async {
    return await _supabaseClient
        .rpc('get_comment_count', params: {'post_id': id})
        .select()
        .then((value) => value[0]['count']);
  }

  //TODO: Remove this method if not needed
  /*Future<void> updatePost(Map<String, dynamic> post) async {
    try {
      await _supabaseClient.from('user_posts').upsert(post);
    } catch (e) {
      throw Exception(e);
    }
  }*/
}
