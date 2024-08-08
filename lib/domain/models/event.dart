import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';
part 'event.g.dart';

//TODO: Move to data layer
@freezed
class Event with _$Event {
  const factory Event({
    String? id,
    @Default('') String name,
    @Default('') String description,
    @Default('') String location,
    @Default('') String speaker,
    DateTime? startTime,
    DateTime? endTime,
    DateTime? date,
    String? info,
    @Default(false) bool isGoing,
    @Default(0) int attendeeCount,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}
