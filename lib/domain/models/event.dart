import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';
part 'event.g.dart';

@freezed
class Event with _$Event {
  const factory Event({
    String? id,
    required String name,
    required String description,
    required String location,
    required String speaker,
    required DateTime date,
    required String time,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}
