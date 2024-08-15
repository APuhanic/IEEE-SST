import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
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

  Future<List<Map<String, dynamic>>> fetchPosts() async =>
      await _supabaseClient.rpc('get_posts_with_profiles').select();

  Future<void> updatePost(Map<String, dynamic> post) async {
    try {
      await _supabaseClient.from('user_posts').upsert(post);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> deletePost(String postId) async {
    try {
      await _supabaseClient.from('user_posts').delete().eq('id', postId);
    } catch (e) {
      throw Exception(e);
    }
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
