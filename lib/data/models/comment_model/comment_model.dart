import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'comment_model.freezed.dart';
part 'comment_model.g.dart';

@HiveType(typeId: 2)
@freezed
class Comment with _$Comment {
  const factory Comment({
    @HiveField(0) int? id,
    @HiveField(1) required String content,
    @HiveField(2) required String createdAt,
    @HiveField(3) required String fullName,
    @HiveField(4) required String postedBy,
    @HiveField(5) bool? isOwner,
  }) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
}
