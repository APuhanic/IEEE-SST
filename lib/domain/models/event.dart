import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'event.freezed.dart';
part 'event.g.dart';

//TODO: Move to data layer
@HiveType(typeId: 0)
@freezed
class Event with _$Event {
  const factory Event({
    @HiveField(0) String? id,
    @HiveField(1) @Default('') String name,
    @HiveField(2) @Default('') String description,
    @HiveField(3) @Default('') String location,
    @HiveField(4) @Default('') String speaker,
    @HiveField(5) DateTime? startTime,
    @HiveField(6) DateTime? endTime,
    @HiveField(7) DateTime? date,
    @HiveField(8) String? info,
    @HiveField(9) @Default(false) bool isGoing,
    @HiveField(10) @Default(0) int attendeeCount,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}
