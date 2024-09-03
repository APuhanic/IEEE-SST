// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'steering_committee_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SteeringCommittee _$SteeringCommitteeFromJson(Map<String, dynamic> json) {
  return _SteeringCommittee.fromJson(json);
}

/// @nodoc
mixin _$SteeringCommittee {
  String get name => throw _privateConstructorUsedError;
  String get institution => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SteeringCommitteeCopyWith<SteeringCommittee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SteeringCommitteeCopyWith<$Res> {
  factory $SteeringCommitteeCopyWith(
          SteeringCommittee value, $Res Function(SteeringCommittee) then) =
      _$SteeringCommitteeCopyWithImpl<$Res, SteeringCommittee>;
  @useResult
  $Res call({String name, String institution, String country});
}

/// @nodoc
class _$SteeringCommitteeCopyWithImpl<$Res, $Val extends SteeringCommittee>
    implements $SteeringCommitteeCopyWith<$Res> {
  _$SteeringCommitteeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? institution = null,
    Object? country = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      institution: null == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SteeringCommitteeImplCopyWith<$Res>
    implements $SteeringCommitteeCopyWith<$Res> {
  factory _$$SteeringCommitteeImplCopyWith(_$SteeringCommitteeImpl value,
          $Res Function(_$SteeringCommitteeImpl) then) =
      __$$SteeringCommitteeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String institution, String country});
}

/// @nodoc
class __$$SteeringCommitteeImplCopyWithImpl<$Res>
    extends _$SteeringCommitteeCopyWithImpl<$Res, _$SteeringCommitteeImpl>
    implements _$$SteeringCommitteeImplCopyWith<$Res> {
  __$$SteeringCommitteeImplCopyWithImpl(_$SteeringCommitteeImpl _value,
      $Res Function(_$SteeringCommitteeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? institution = null,
    Object? country = null,
  }) {
    return _then(_$SteeringCommitteeImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      institution: null == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SteeringCommitteeImpl implements _SteeringCommittee {
  const _$SteeringCommitteeImpl(
      {required this.name, required this.institution, required this.country});

  factory _$SteeringCommitteeImpl.fromJson(Map<String, dynamic> json) =>
      _$$SteeringCommitteeImplFromJson(json);

  @override
  final String name;
  @override
  final String institution;
  @override
  final String country;

  @override
  String toString() {
    return 'SteeringCommittee(name: $name, institution: $institution, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SteeringCommitteeImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.institution, institution) ||
                other.institution == institution) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, institution, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SteeringCommitteeImplCopyWith<_$SteeringCommitteeImpl> get copyWith =>
      __$$SteeringCommitteeImplCopyWithImpl<_$SteeringCommitteeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SteeringCommitteeImplToJson(
      this,
    );
  }
}

abstract class _SteeringCommittee implements SteeringCommittee {
  const factory _SteeringCommittee(
      {required final String name,
      required final String institution,
      required final String country}) = _$SteeringCommitteeImpl;

  factory _SteeringCommittee.fromJson(Map<String, dynamic> json) =
      _$SteeringCommitteeImpl.fromJson;

  @override
  String get name;
  @override
  String get institution;
  @override
  String get country;
  @override
  @JsonKey(ignore: true)
  _$$SteeringCommitteeImplCopyWith<_$SteeringCommitteeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
