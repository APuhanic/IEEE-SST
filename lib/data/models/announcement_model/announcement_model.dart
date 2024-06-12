import 'package:freezed_annotation/freezed_annotation.dart';

part 'announcement_model.freezed.dart';
part 'announcement_model.g.dart';

@freezed
class Announcement with _$Announcement {
  const factory Announcement({
    String? id,
    required String title,
    required String description,
    required String timeposted,
    required String fullName,
  }) = _Announcement;

  factory Announcement.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementFromJson(json);
}
