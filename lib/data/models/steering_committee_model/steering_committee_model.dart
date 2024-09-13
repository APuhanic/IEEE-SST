import 'package:freezed_annotation/freezed_annotation.dart';

part 'steering_committee_model.freezed.dart';
part 'steering_committee_model.g.dart';

@freezed
class CommitteeMember with _$CommitteeMember {
  const factory CommitteeMember({
    required String name,
    required String institution,
    required String country,
  }) = _CommitteeMember;

  factory CommitteeMember.fromJson(Map<String, dynamic> json) =>
      _$CommitteeMemberFromJson(json);
}
