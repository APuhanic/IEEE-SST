import 'package:ieee_sst/data/local_storage/key_value_storage.dart';
import 'package:ieee_sst/data/models/post_model/post_model.dart';

class PostLocalStorage {
  final KeyValueStorage _keyValueStorage;

  PostLocalStorage(this._keyValueStorage);

  Future<void> saveEvents(List<Post> posts) async {
    final box = await _keyValueStorage.postsBox;
    await box.clear();
    await box.addAll(posts);
  }

  Future<List<Post>> getPosts() async {
    final box = await _keyValueStorage.postsBox;
    return box.values.toList();
  }

  Future<void> deletePost(Post post) async {
    final box = await _keyValueStorage.commentsBox;
    await box.delete(post);
  }

  // TODO: Add deleting posts
}
