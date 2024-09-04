import 'package:freezed_annotation/freezed_annotation.dart';

part 'keynote_speaker_model.freezed.dart';
part 'keynote_speaker_model.g.dart';

@freezed
class KeynoteSpeaker with _$KeynoteSpeaker {
  const factory KeynoteSpeaker({
    required String name,
    required String institution,
    required String title,
    required String abstract,
    required String cv,
    required String image,
  }) = _KeynoteSpeaker;

  factory KeynoteSpeaker.fromJson(Map<String, dynamic> json) =>
      _$KeynoteSpeakerFromJson(json);
}
