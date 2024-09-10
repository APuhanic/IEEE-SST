// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'special_session_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpecialSessionImpl _$$SpecialSessionImplFromJson(Map<String, dynamic> json) =>
    _$SpecialSessionImpl(
      title: json['title'] as String,
      organizers: (json['organizers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      shortDescription: json['shortDescription'] as String,
      detailedDescription: DetailedDescription.fromJson(
          json['detailedDescription'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SpecialSessionImplToJson(
        _$SpecialSessionImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'organizers': instance.organizers,
      'shortDescription': instance.shortDescription,
      'detailedDescription': instance.detailedDescription,
    };

_$DetailedDescriptionImpl _$$DetailedDescriptionImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailedDescriptionImpl(
      section1: json['section1'] as String?,
      section2: json['section2'] as String?,
      section3: json['section3'] as String?,
      conclusion: json['conclusion'] as String?,
      overview: json['overview'] as String?,
      knowledgeSharing: json['knowledgeSharing'] as String?,
    );

Map<String, dynamic> _$$DetailedDescriptionImplToJson(
        _$DetailedDescriptionImpl instance) =>
    <String, dynamic>{
      'section1': instance.section1,
      'section2': instance.section2,
      'section3': instance.section3,
      'conclusion': instance.conclusion,
      'overview': instance.overview,
      'knowledgeSharing': instance.knowledgeSharing,
    };
