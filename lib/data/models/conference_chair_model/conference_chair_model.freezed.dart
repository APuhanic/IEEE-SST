// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conference_chair_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConferenceChair _$ConferenceChairFromJson(Map<String, dynamic> json) {
  return _ConferenceChair.fromJson(json);
}

/// @nodoc
mixin _$ConferenceChair {
  String get name => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String get institution => throw _privateConstructorUsedError;
  String get university => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConferenceChairCopyWith<ConferenceChair> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConferenceChairCopyWith<$Res> {
  factory $ConferenceChairCopyWith(
          ConferenceChair value, $Res Function(ConferenceChair) then) =
      _$ConferenceChairCopyWithImpl<$Res, ConferenceChair>;
  @useResult
  $Res call(
      {String name,
      String role,
      String institution,
      String university,
      String address,
      String phone,
      String email,
      String imageUrl});
}

/// @nodoc
class _$ConferenceChairCopyWithImpl<$Res, $Val extends ConferenceChair>
    implements $ConferenceChairCopyWith<$Res> {
  _$ConferenceChairCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? role = null,
    Object? institution = null,
    Object? university = null,
    Object? address = null,
    Object? phone = null,
    Object? email = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      institution: null == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as String,
      university: null == university
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConferenceChairImplCopyWith<$Res>
    implements $ConferenceChairCopyWith<$Res> {
  factory _$$ConferenceChairImplCopyWith(_$ConferenceChairImpl value,
          $Res Function(_$ConferenceChairImpl) then) =
      __$$ConferenceChairImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String role,
      String institution,
      String university,
      String address,
      String phone,
      String email,
      String imageUrl});
}

/// @nodoc
class __$$ConferenceChairImplCopyWithImpl<$Res>
    extends _$ConferenceChairCopyWithImpl<$Res, _$ConferenceChairImpl>
    implements _$$ConferenceChairImplCopyWith<$Res> {
  __$$ConferenceChairImplCopyWithImpl(
      _$ConferenceChairImpl _value, $Res Function(_$ConferenceChairImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? role = null,
    Object? institution = null,
    Object? university = null,
    Object? address = null,
    Object? phone = null,
    Object? email = null,
    Object? imageUrl = null,
  }) {
    return _then(_$ConferenceChairImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      institution: null == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as String,
      university: null == university
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConferenceChairImpl implements _ConferenceChair {
  const _$ConferenceChairImpl(
      {required this.name,
      required this.role,
      required this.institution,
      required this.university,
      required this.address,
      required this.phone,
      required this.email,
      required this.imageUrl});

  factory _$ConferenceChairImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConferenceChairImplFromJson(json);

  @override
  final String name;
  @override
  final String role;
  @override
  final String institution;
  @override
  final String university;
  @override
  final String address;
  @override
  final String phone;
  @override
  final String email;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'ConferenceChair(name: $name, role: $role, institution: $institution, university: $university, address: $address, phone: $phone, email: $email, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConferenceChairImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.institution, institution) ||
                other.institution == institution) &&
            (identical(other.university, university) ||
                other.university == university) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, role, institution,
      university, address, phone, email, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConferenceChairImplCopyWith<_$ConferenceChairImpl> get copyWith =>
      __$$ConferenceChairImplCopyWithImpl<_$ConferenceChairImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConferenceChairImplToJson(
      this,
    );
  }
}

abstract class _ConferenceChair implements ConferenceChair {
  const factory _ConferenceChair(
      {required final String name,
      required final String role,
      required final String institution,
      required final String university,
      required final String address,
      required final String phone,
      required final String email,
      required final String imageUrl}) = _$ConferenceChairImpl;

  factory _ConferenceChair.fromJson(Map<String, dynamic> json) =
      _$ConferenceChairImpl.fromJson;

  @override
  String get name;
  @override
  String get role;
  @override
  String get institution;
  @override
  String get university;
  @override
  String get address;
  @override
  String get phone;
  @override
  String get email;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$ConferenceChairImplCopyWith<_$ConferenceChairImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
