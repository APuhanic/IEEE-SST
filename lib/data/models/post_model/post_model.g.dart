// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PostAdapter extends TypeAdapter<Post> {
  @override
  final int typeId = 4;

  @override
  Post read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Post(
      id: fields[0] as int?,
      title: fields[1] as String,
      content: fields[2] as String,
      timePosted: fields[3] as String,
      fullName: fields[4] as String,
      commentcount: fields[5] as int,
      postedBy: fields[6] as String,
      isOwner: fields[7] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, Post obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.content)
      ..writeByte(3)
      ..write(obj.timePosted)
      ..writeByte(4)
      ..write(obj.fullName)
      ..writeByte(5)
      ..write(obj.commentcount)
      ..writeByte(6)
      ..write(obj.postedBy)
      ..writeByte(7)
      ..write(obj.isOwner);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PostAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String,
      content: json['content'] as String,
      timePosted: json['timePosted'] as String,
      fullName: json['fullName'] as String,
      commentcount: (json['commentcount'] as num).toInt(),
      postedBy: json['postedBy'] as String,
      isOwner: json['isOwner'] as bool?,
    );

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'timePosted': instance.timePosted,
      'fullName': instance.fullName,
      'commentcount': instance.commentcount,
      'postedBy': instance.postedBy,
      'isOwner': instance.isOwner,
    };
