// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventImpl _$$EventImplFromJson(Map<String, dynamic> json) => _$EventImpl(
      id: json['id'] as String?,
      name: json['name'] as String,
      description: json['description'] as String,
      location: json['location'] as String,
      speaker: json['speaker'] as String,
      date: DateTime.parse(json['date'] as String),
      time: json['time'] as String,
    );

Map<String, dynamic> _$$EventImplToJson(_$EventImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'location': instance.location,
      'speaker': instance.speaker,
      'date': instance.date.toIso8601String(),
      'time': instance.time,
    };
