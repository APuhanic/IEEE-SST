// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'special_session_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpecialSession _$SpecialSessionFromJson(Map<String, dynamic> json) {
  return _SpecialSession.fromJson(json);
}

/// @nodoc
mixin _$SpecialSession {
  String get title => throw _privateConstructorUsedError;
  List<String> get organizers => throw _privateConstructorUsedError;
  String get shortDescription => throw _privateConstructorUsedError;
  DetailedDescription get detailedDescription =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecialSessionCopyWith<SpecialSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialSessionCopyWith<$Res> {
  factory $SpecialSessionCopyWith(
          SpecialSession value, $Res Function(SpecialSession) then) =
      _$SpecialSessionCopyWithImpl<$Res, SpecialSession>;
  @useResult
  $Res call(
      {String title,
      List<String> organizers,
      String shortDescription,
      DetailedDescription detailedDescription});

  $DetailedDescriptionCopyWith<$Res> get detailedDescription;
}

/// @nodoc
class _$SpecialSessionCopyWithImpl<$Res, $Val extends SpecialSession>
    implements $SpecialSessionCopyWith<$Res> {
  _$SpecialSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? organizers = null,
    Object? shortDescription = null,
    Object? detailedDescription = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      organizers: null == organizers
          ? _value.organizers
          : organizers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      detailedDescription: null == detailedDescription
          ? _value.detailedDescription
          : detailedDescription // ignore: cast_nullable_to_non_nullable
              as DetailedDescription,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DetailedDescriptionCopyWith<$Res> get detailedDescription {
    return $DetailedDescriptionCopyWith<$Res>(_value.detailedDescription,
        (value) {
      return _then(_value.copyWith(detailedDescription: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpecialSessionImplCopyWith<$Res>
    implements $SpecialSessionCopyWith<$Res> {
  factory _$$SpecialSessionImplCopyWith(_$SpecialSessionImpl value,
          $Res Function(_$SpecialSessionImpl) then) =
      __$$SpecialSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      List<String> organizers,
      String shortDescription,
      DetailedDescription detailedDescription});

  @override
  $DetailedDescriptionCopyWith<$Res> get detailedDescription;
}

/// @nodoc
class __$$SpecialSessionImplCopyWithImpl<$Res>
    extends _$SpecialSessionCopyWithImpl<$Res, _$SpecialSessionImpl>
    implements _$$SpecialSessionImplCopyWith<$Res> {
  __$$SpecialSessionImplCopyWithImpl(
      _$SpecialSessionImpl _value, $Res Function(_$SpecialSessionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? organizers = null,
    Object? shortDescription = null,
    Object? detailedDescription = null,
  }) {
    return _then(_$SpecialSessionImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      organizers: null == organizers
          ? _value._organizers
          : organizers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      detailedDescription: null == detailedDescription
          ? _value.detailedDescription
          : detailedDescription // ignore: cast_nullable_to_non_nullable
              as DetailedDescription,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpecialSessionImpl implements _SpecialSession {
  const _$SpecialSessionImpl(
      {required this.title,
      required final List<String> organizers,
      required this.shortDescription,
      required this.detailedDescription})
      : _organizers = organizers;

  factory _$SpecialSessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecialSessionImplFromJson(json);

  @override
  final String title;
  final List<String> _organizers;
  @override
  List<String> get organizers {
    if (_organizers is EqualUnmodifiableListView) return _organizers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_organizers);
  }

  @override
  final String shortDescription;
  @override
  final DetailedDescription detailedDescription;

  @override
  String toString() {
    return 'SpecialSession(title: $title, organizers: $organizers, shortDescription: $shortDescription, detailedDescription: $detailedDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecialSessionImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._organizers, _organizers) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.detailedDescription, detailedDescription) ||
                other.detailedDescription == detailedDescription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      const DeepCollectionEquality().hash(_organizers),
      shortDescription,
      detailedDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecialSessionImplCopyWith<_$SpecialSessionImpl> get copyWith =>
      __$$SpecialSessionImplCopyWithImpl<_$SpecialSessionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecialSessionImplToJson(
      this,
    );
  }
}

abstract class _SpecialSession implements SpecialSession {
  const factory _SpecialSession(
          {required final String title,
          required final List<String> organizers,
          required final String shortDescription,
          required final DetailedDescription detailedDescription}) =
      _$SpecialSessionImpl;

  factory _SpecialSession.fromJson(Map<String, dynamic> json) =
      _$SpecialSessionImpl.fromJson;

  @override
  String get title;
  @override
  List<String> get organizers;
  @override
  String get shortDescription;
  @override
  DetailedDescription get detailedDescription;
  @override
  @JsonKey(ignore: true)
  _$$SpecialSessionImplCopyWith<_$SpecialSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DetailedDescription _$DetailedDescriptionFromJson(Map<String, dynamic> json) {
  return _DetailedDescription.fromJson(json);
}

/// @nodoc
mixin _$DetailedDescription {
  String? get section1 => throw _privateConstructorUsedError;
  String? get section2 => throw _privateConstructorUsedError;
  String? get section3 => throw _privateConstructorUsedError;
  String? get conclusion => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  String? get knowledgeSharing => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailedDescriptionCopyWith<DetailedDescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedDescriptionCopyWith<$Res> {
  factory $DetailedDescriptionCopyWith(
          DetailedDescription value, $Res Function(DetailedDescription) then) =
      _$DetailedDescriptionCopyWithImpl<$Res, DetailedDescription>;
  @useResult
  $Res call(
      {String? section1,
      String? section2,
      String? section3,
      String? conclusion,
      String? overview,
      String? knowledgeSharing});
}

/// @nodoc
class _$DetailedDescriptionCopyWithImpl<$Res, $Val extends DetailedDescription>
    implements $DetailedDescriptionCopyWith<$Res> {
  _$DetailedDescriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? section1 = freezed,
    Object? section2 = freezed,
    Object? section3 = freezed,
    Object? conclusion = freezed,
    Object? overview = freezed,
    Object? knowledgeSharing = freezed,
  }) {
    return _then(_value.copyWith(
      section1: freezed == section1
          ? _value.section1
          : section1 // ignore: cast_nullable_to_non_nullable
              as String?,
      section2: freezed == section2
          ? _value.section2
          : section2 // ignore: cast_nullable_to_non_nullable
              as String?,
      section3: freezed == section3
          ? _value.section3
          : section3 // ignore: cast_nullable_to_non_nullable
              as String?,
      conclusion: freezed == conclusion
          ? _value.conclusion
          : conclusion // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      knowledgeSharing: freezed == knowledgeSharing
          ? _value.knowledgeSharing
          : knowledgeSharing // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailedDescriptionImplCopyWith<$Res>
    implements $DetailedDescriptionCopyWith<$Res> {
  factory _$$DetailedDescriptionImplCopyWith(_$DetailedDescriptionImpl value,
          $Res Function(_$DetailedDescriptionImpl) then) =
      __$$DetailedDescriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? section1,
      String? section2,
      String? section3,
      String? conclusion,
      String? overview,
      String? knowledgeSharing});
}

/// @nodoc
class __$$DetailedDescriptionImplCopyWithImpl<$Res>
    extends _$DetailedDescriptionCopyWithImpl<$Res, _$DetailedDescriptionImpl>
    implements _$$DetailedDescriptionImplCopyWith<$Res> {
  __$$DetailedDescriptionImplCopyWithImpl(_$DetailedDescriptionImpl _value,
      $Res Function(_$DetailedDescriptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? section1 = freezed,
    Object? section2 = freezed,
    Object? section3 = freezed,
    Object? conclusion = freezed,
    Object? overview = freezed,
    Object? knowledgeSharing = freezed,
  }) {
    return _then(_$DetailedDescriptionImpl(
      section1: freezed == section1
          ? _value.section1
          : section1 // ignore: cast_nullable_to_non_nullable
              as String?,
      section2: freezed == section2
          ? _value.section2
          : section2 // ignore: cast_nullable_to_non_nullable
              as String?,
      section3: freezed == section3
          ? _value.section3
          : section3 // ignore: cast_nullable_to_non_nullable
              as String?,
      conclusion: freezed == conclusion
          ? _value.conclusion
          : conclusion // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      knowledgeSharing: freezed == knowledgeSharing
          ? _value.knowledgeSharing
          : knowledgeSharing // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailedDescriptionImpl implements _DetailedDescription {
  const _$DetailedDescriptionImpl(
      {this.section1,
      this.section2,
      this.section3,
      this.conclusion,
      this.overview,
      this.knowledgeSharing});

  factory _$DetailedDescriptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailedDescriptionImplFromJson(json);

  @override
  final String? section1;
  @override
  final String? section2;
  @override
  final String? section3;
  @override
  final String? conclusion;
  @override
  final String? overview;
  @override
  final String? knowledgeSharing;

  @override
  String toString() {
    return 'DetailedDescription(section1: $section1, section2: $section2, section3: $section3, conclusion: $conclusion, overview: $overview, knowledgeSharing: $knowledgeSharing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedDescriptionImpl &&
            (identical(other.section1, section1) ||
                other.section1 == section1) &&
            (identical(other.section2, section2) ||
                other.section2 == section2) &&
            (identical(other.section3, section3) ||
                other.section3 == section3) &&
            (identical(other.conclusion, conclusion) ||
                other.conclusion == conclusion) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.knowledgeSharing, knowledgeSharing) ||
                other.knowledgeSharing == knowledgeSharing));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, section1, section2, section3,
      conclusion, overview, knowledgeSharing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailedDescriptionImplCopyWith<_$DetailedDescriptionImpl> get copyWith =>
      __$$DetailedDescriptionImplCopyWithImpl<_$DetailedDescriptionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailedDescriptionImplToJson(
      this,
    );
  }
}

abstract class _DetailedDescription implements DetailedDescription {
  const factory _DetailedDescription(
      {final String? section1,
      final String? section2,
      final String? section3,
      final String? conclusion,
      final String? overview,
      final String? knowledgeSharing}) = _$DetailedDescriptionImpl;

  factory _DetailedDescription.fromJson(Map<String, dynamic> json) =
      _$DetailedDescriptionImpl.fromJson;

  @override
  String? get section1;
  @override
  String? get section2;
  @override
  String? get section3;
  @override
  String? get conclusion;
  @override
  String? get overview;
  @override
  String? get knowledgeSharing;
  @override
  @JsonKey(ignore: true)
  _$$DetailedDescriptionImplCopyWith<_$DetailedDescriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
