// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EventAdapter extends TypeAdapter<Event> {
  @override
  final int typeId = 0;

  @override
  Event read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Event(
      id: fields[0] as String?,
      name: fields[1] as String,
      description: fields[2] as String,
      location: fields[3] as String,
      speaker: fields[4] as String,
      startTime: fields[5] as DateTime?,
      endTime: fields[6] as DateTime?,
      date: fields[7] as DateTime?,
      info: fields[8] as String?,
      isGoing: fields[9] as bool,
      attendeeCount: fields[10] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Event obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.location)
      ..writeByte(4)
      ..write(obj.speaker)
      ..writeByte(5)
      ..write(obj.startTime)
      ..writeByte(6)
      ..write(obj.endTime)
      ..writeByte(7)
      ..write(obj.date)
      ..writeByte(8)
      ..write(obj.info)
      ..writeByte(9)
      ..write(obj.isGoing)
      ..writeByte(10)
      ..write(obj.attendeeCount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EventAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventImpl _$$EventImplFromJson(Map<String, dynamic> json) => _$EventImpl(
      id: json['id'] as String?,
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      location: json['location'] as String? ?? '',
      speaker: json['speaker'] as String? ?? '',
      startTime: json['startTime'] == null
          ? null
          : DateTime.parse(json['startTime'] as String),
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      info: json['info'] as String?,
      isGoing: json['isGoing'] as bool? ?? false,
      attendeeCount: (json['attendeeCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$EventImplToJson(_$EventImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'location': instance.location,
      'speaker': instance.speaker,
      'startTime': instance.startTime?.toIso8601String(),
      'endTime': instance.endTime?.toIso8601String(),
      'date': instance.date?.toIso8601String(),
      'info': instance.info,
      'isGoing': instance.isGoing,
      'attendeeCount': instance.attendeeCount,
    };
