import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@HiveType(typeId: 5)
@freezed
class Profile with _$Profile {
  const factory Profile({
    @HiveField(0) required String id,
    @HiveField(1) required String fullName,
    @HiveField(2) required String email,
    @HiveField(3) String? position,
    @HiveField(4) String? organization,
    @HiveField(5) String? role,
    @HiveField(6) String? country,
    @HiveField(7) String? imageUrl,
    @HiveField(8) String? imagePath,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}
