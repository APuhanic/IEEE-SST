// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

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
