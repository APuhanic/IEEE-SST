import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

// TODO: Change name?
@freezed
class Profile with _$Profile {
  const factory Profile({
    required String id,
    required String name,
    required String email,
    required String address,
    required String? image,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}
