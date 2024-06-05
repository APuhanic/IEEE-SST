import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';
part 'event.g.dart';

@freezed
class Event with _$Event {
  const factory Event({
    String? id,
    @Default('') String name,
    @Default('') String description,
    @Default('') String location,
    @Default('') String speaker,
    DateTime? time,
    String? info,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}
