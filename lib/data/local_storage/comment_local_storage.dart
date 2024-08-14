import 'package:ieee_sst/data/local_storage/key_value_storage.dart';
import 'package:ieee_sst/data/models/comment_model/comment_model.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CommentLocalStorage {
  final KeyValueStorage _keyValueStorage;

  CommentLocalStorage(this._keyValueStorage);

  Future<void> saveComments(List<Comment> comments) async {
    final box = await _keyValueStorage.commentsBox;
    await box.clear();
    await box.addAll(comments);
  }

  Future<List<Comment>> getComments() async {
    final box = await _keyValueStorage.commentsBox;
    return box.values.toList();
  }

  Future<void> deleteComment(Comment comment) async {
    final box = await _keyValueStorage.commentsBox;
    await box.delete(comment.id);
  }
}
