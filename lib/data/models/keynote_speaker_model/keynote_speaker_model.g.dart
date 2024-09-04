// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keynote_speaker_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KeynoteSpeakerImpl _$$KeynoteSpeakerImplFromJson(Map<String, dynamic> json) =>
    _$KeynoteSpeakerImpl(
      name: json['name'] as String,
      institution: json['institution'] as String,
      title: json['title'] as String,
      abstract: json['abstract'] as String,
      cv: json['cv'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$KeynoteSpeakerImplToJson(
        _$KeynoteSpeakerImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'institution': instance.institution,
      'title': instance.title,
      'abstract': instance.abstract,
      'cv': instance.cv,
      'image': instance.image,
    };
