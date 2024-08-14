import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'announcement_model.freezed.dart';
part 'announcement_model.g.dart';

@HiveType(typeId: 1)
@freezed
class Announcement with _$Announcement {
  const factory Announcement({
    @HiveField(0) String? id,
    @HiveField(1) required String title,
    @HiveField(2) required String description,
    @HiveField(3) required String timeposted,
    @HiveField(4) required String fullName,
  }) = _Announcement;

  factory Announcement.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementFromJson(json);
}
