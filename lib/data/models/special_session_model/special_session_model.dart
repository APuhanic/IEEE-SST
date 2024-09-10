import 'package:freezed_annotation/freezed_annotation.dart';

part 'special_session_model.freezed.dart';
part 'special_session_model.g.dart';

@freezed
class SpecialSession with _$SpecialSession {
  const factory SpecialSession({
    required String title,
    required List<String> organizers,
    required String shortDescription,
    required DetailedDescription detailedDescription,
  }) = _SpecialSession;

  factory SpecialSession.fromJson(Map<String, dynamic> json) =>
      _$SpecialSessionFromJson(json);
}

@freezed
class DetailedDescription with _$DetailedDescription {
  const factory DetailedDescription({
    String? section1,
    String? section2,
    String? section3,
    String? conclusion,
    String? overview,
    String? knowledgeSharing,
  }) = _DetailedDescription;

  factory DetailedDescription.fromJson(Map<String, dynamic> json) =>
      _$DetailedDescriptionFromJson(json);
}
