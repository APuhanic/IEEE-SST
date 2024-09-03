// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conference_chair_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConferenceChairImpl _$$ConferenceChairImplFromJson(
        Map<String, dynamic> json) =>
    _$ConferenceChairImpl(
      name: json['name'] as String,
      role: json['role'] as String,
      institution: json['institution'] as String,
      university: json['university'] as String,
      address: json['address'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String,
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$$ConferenceChairImplToJson(
        _$ConferenceChairImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'role': instance.role,
      'institution': instance.institution,
      'university': instance.university,
      'address': instance.address,
      'phone': instance.phone,
      'email': instance.email,
      'imageUrl': instance.imageUrl,
    };
