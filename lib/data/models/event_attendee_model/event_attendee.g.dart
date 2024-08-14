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
      event_id: fields[1] as String,
      user_id: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, EventAttendee obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.event_id)
      ..writeByte(2)
      ..write(obj.user_id);
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
      event_id: json['event_id'] as String,
      user_id: json['user_id'] as String,
    );

Map<String, dynamic> _$$EventAttendeeImplToJson(_$EventAttendeeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'event_id': instance.event_id,
      'user_id': instance.user_id,
    };
