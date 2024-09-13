// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'steering_committee_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommitteeMemberImpl _$$CommitteeMemberImplFromJson(
        Map<String, dynamic> json) =>
    _$CommitteeMemberImpl(
      name: json['name'] as String,
      institution: json['institution'] as String,
      country: json['country'] as String,
    );

Map<String, dynamic> _$$CommitteeMemberImplToJson(
        _$CommitteeMemberImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'institution': instance.institution,
      'country': instance.country,
    };
