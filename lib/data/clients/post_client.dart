import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@injectable
class PostsClient {
  PostsClient(this._supabaseClient);

  final SupabaseClient _supabaseClient;

  Future<void> uploadPost(
    String title,
    String content,
  ) async =>
      await _supabaseClient.from('user_posts').insert({
        'title': title,
        'content': content,
        'postedBy': _supabaseClient.auth.currentUser?.id,
      });

  Future<List<Map<String, dynamic>>> fetchPosts() async =>
      await _supabaseClient.rpc('get_posts_with_profiles').select();

  Future<void> updatePost(Map<String, dynamic> post) async =>
      await _supabaseClient.from('user_posts').upsert(post);

  Future<void> deletePost(int postId) async =>
      await _supabaseClient.from('user_posts').delete().eq('id', postId);

  Future<int> getCommentCount(int id) async => await _supabaseClient
      .rpc('get_comment_count', params: {'post_id': id})
      .select()
      .then((value) => value[0]['count']);
}
