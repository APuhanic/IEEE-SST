import 'package:freezed_annotation/freezed_annotation.dart';

part 'steering_committee_model.freezed.dart';
part 'steering_committee_model.g.dart';

//TODO: Rename to CommitteeMember
@freezed
class SteeringCommittee with _$SteeringCommittee {
  const factory SteeringCommittee({
    required String name,
    required String institution,
    required String country,
  }) = _SteeringCommittee;

  factory SteeringCommittee.fromJson(Map<String, dynamic> json) =>
      _$SteeringCommitteeFromJson(json);
}
