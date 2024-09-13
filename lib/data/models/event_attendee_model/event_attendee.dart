import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'event_attendee.freezed.dart';
part 'event_attendee.g.dart';

@HiveType(typeId: 3)
@freezed
class EventAttendee with _$EventAttendee {
  const factory EventAttendee({
    @HiveField(0) int? id,
    @HiveField(1) required String eventId,
    @HiveField(2) required String userId,
  }) = _EventAttendee;

  factory EventAttendee.fromJson(Map<String, dynamic> json) =>
      _$EventAttendeeFromJson(json);
}
