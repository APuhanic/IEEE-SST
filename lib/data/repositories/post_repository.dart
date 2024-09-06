import 'package:ieee_sst/data/clients/post_client.dart';
import 'package:ieee_sst/data/models/post_model/post_model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class PostRepository {
  PostRepository(this._postClient);

  final PostsClient _postClient;

  Future<List<Post>> getAllPosts() async {
    final postResponse = await _postClient.fetchPosts();
    return postResponse.map((post) => Post.fromJson(post)).toList();
  }

  Future<void> uploadPost(String title, String content) async {
    await _postClient.uploadPost(title, content);
  }

  Future<void> deletPost(String postId) {
    return _postClient.deletePost(postId);
  }

  Future<void> updatePost(Post post) {
    return _postClient.updatePost(post.toJson());
  }
}
