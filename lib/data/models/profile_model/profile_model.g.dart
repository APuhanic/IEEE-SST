// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProfileAdapter extends TypeAdapter<Profile> {
  @override
  final int typeId = 5;

  @override
  Profile read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Profile(
      id: fields[0] as String,
      fullName: fields[1] as String,
      email: fields[2] as String,
      position: fields[3] as String?,
      organization: fields[4] as String?,
      role: fields[5] as String?,
      country: fields[6] as String?,
      imageUrl: fields[7] as String?,
      imagePath: fields[8] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Profile obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.fullName)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.position)
      ..writeByte(4)
      ..write(obj.organization)
      ..writeByte(5)
      ..write(obj.role)
      ..writeByte(6)
      ..write(obj.country)
      ..writeByte(7)
      ..write(obj.imageUrl)
      ..writeByte(8)
      ..write(obj.imagePath);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProfileAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileImpl _$$ProfileImplFromJson(Map<String, dynamic> json) =>
    _$ProfileImpl(
      id: json['id'] as String,
      fullName: json['fullName'] as String,
      email: json['email'] as String,
      position: json['position'] as String?,
      organization: json['organization'] as String?,
      role: json['role'] as String?,
      country: json['country'] as String?,
      imageUrl: json['imageUrl'] as String?,
      imagePath: json['imagePath'] as String?,
    );

Map<String, dynamic> _$$ProfileImplToJson(_$ProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'email': instance.email,
      'position': instance.position,
      'organization': instance.organization,
      'role': instance.role,
      'country': instance.country,
      'imageUrl': instance.imageUrl,
      'imagePath': instance.imagePath,
    };
