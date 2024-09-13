// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_attendee.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EventAttendeeAdapter extends TypeAdapter<EventAttendee> {
  @override
  final int typeId = 3;

  @override
  EventAttendee read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EventAttendee(
      id: fields[0] as int?,
      eventId: fields[1] as String,
      userId: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, EventAttendee obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.eventId)
      ..writeByte(2)
      ..write(obj.userId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EventAttendeeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventAttendeeImpl _$$EventAttendeeImplFromJson(Map<String, dynamic> json) =>
    _$EventAttendeeImpl(
      id: (json['id'] as num?)?.toInt(),
      eventId: json['eventId'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$EventAttendeeImplToJson(_$EventAttendeeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'eventId': instance.eventId,
      'userId': instance.userId,
    };
