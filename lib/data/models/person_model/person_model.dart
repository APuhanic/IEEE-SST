import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_model.freezed.dart';
part 'person_model.g.dart';

// TODO: Change name?
@freezed
class Person with _$Person {
  const factory Person({
    required String id,
    required String name,
    required String email,
    required String address,
    required String? image,
  }) = _Person;

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
}
