import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

@HiveType(typeId: 4)
@freezed
class Post with _$Post {
  const factory Post({
    @HiveField(0) int? id,
    @HiveField(1) required String title,
    @HiveField(2) required String content,
    @HiveField(3) required String timePosted,
    @HiveField(4) required String fullName,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}
