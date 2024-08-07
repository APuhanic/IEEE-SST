// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_attendee.dart';

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
