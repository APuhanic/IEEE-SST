import 'package:ieee_sst/data/clients/post_client.dart';
import 'package:ieee_sst/data/models/post_model/post_model.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@LazySingleton()
class PostRepository {
  PostRepository(this._postClient, this._supabaseClient);

  final PostsClient _postClient;
  final SupabaseClient _supabaseClient;

  Future<List<Post>> getAllPosts() async {
    final postResponse = await _postClient.fetchPosts();
    return postResponse
        .map((post) => Post.fromJson(post).copyWith(
            isOwner: post['postedBy'] == _supabaseClient.auth.currentUser?.id))
        .toList();
  }

  Future<void> uploadPost(String title, String content) async {
    await _postClient.uploadPost(title, content);
  }

  Future<void> deletePost(int postId) {
    return _postClient.deletePost(postId);
  }

  Future<void> updatePost(Post post) {
    return _postClient.updatePost(post.toJson());
  }
}
