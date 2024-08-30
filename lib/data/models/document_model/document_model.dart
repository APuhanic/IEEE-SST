import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'document_model.freezed.dart';
part 'document_model.g.dart';

@HiveType(typeId: 7)
@freezed
class Document with _$Document {
  const factory Document({
    @HiveField(0) required int id,
    @HiveField(1) required String name,
    @HiveField(2) required String url,
    @HiveField(3) required String path,
  }) = _Document;

  factory Document.fromJson(Map<String, dynamic> json) =>
      _$DocumentFromJson(json);
}
