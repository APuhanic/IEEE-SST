import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'sponsor_model.freezed.dart';
part 'sponsor_model.g.dart';

@HiveType(typeId: 6)
@freezed
class Sponsor with _$Sponsor {
  const factory Sponsor({
    @HiveField(0) required int id,
    @HiveField(1) required String name,
    @HiveField(2) required String imageUrl,
    @HiveField(3) required String imagePath,
  }) = _Sponsor;

  factory Sponsor.fromJson(Map<String, dynamic> json) =>
      _$SponsorFromJson(json);
}
