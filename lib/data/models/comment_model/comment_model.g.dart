// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentImpl _$$CommentImplFromJson(Map<String, dynamic> json) =>
    _$CommentImpl(
      id: (json['id'] as num?)?.toInt(),
      content: json['content'] as String,
      createdAt: json['createdAt'] as String,
      fullName: json['fullName'] as String,
      postedBy: json['postedBy'] as String,
      isOwner: json['isOwner'] as bool?,
    );

Map<String, dynamic> _$$CommentImplToJson(_$CommentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'createdAt': instance.createdAt,
      'fullName': instance.fullName,
      'postedBy': instance.postedBy,
      'isOwner': instance.isOwner,
    };
