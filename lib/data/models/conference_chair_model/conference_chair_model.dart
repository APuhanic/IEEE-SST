import 'package:freezed_annotation/freezed_annotation.dart';

part 'conference_chair_model.freezed.dart';
part 'conference_chair_model.g.dart';

@freezed
class ConferenceChair with _$ConferenceChair {
  const factory ConferenceChair({
    required String name,
    required String role,
    required String institution,
    required String university,
    required String address,
    required String phone,
    required String email,
    required String imageUrl,
  }) = _ConferenceChair;

  factory ConferenceChair.fromJson(Map<String, dynamic> json) =>
      _$ConferenceChairFromJson(json);
}
