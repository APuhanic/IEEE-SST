import 'package:freezed_annotation/freezed_annotation.dart';

part 'sponsor_model.freezed.dart';
part 'sponsor_model.g.dart';

@freezed
class Sponsor with _$Sponsor {
  const factory Sponsor({
    required int id,
    required String name,
    required String imageUrl,
    required String imagePath,
  }) = _Sponsor;

  factory Sponsor.fromJson(Map<String, dynamic> json) =>
      _$SponsorFromJson(json);
}
