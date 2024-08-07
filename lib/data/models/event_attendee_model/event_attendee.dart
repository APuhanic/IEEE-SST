// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_attendee.freezed.dart';
part 'event_attendee.g.dart';

@freezed
class EventAttendee with _$EventAttendee {
  const factory EventAttendee({
    int? id,
    // TODO: change to eventId and userId
    required String event_id,
    required String user_id,
  }) = _EventAttendee;

  factory EventAttendee.fromJson(Map<String, dynamic> json) =>
      _$EventAttendeeFromJson(json);
}
