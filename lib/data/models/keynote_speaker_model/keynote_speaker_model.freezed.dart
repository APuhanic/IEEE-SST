// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keynote_speaker_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KeynoteSpeaker _$KeynoteSpeakerFromJson(Map<String, dynamic> json) {
  return _KeynoteSpeaker.fromJson(json);
}

/// @nodoc
mixin _$KeynoteSpeaker {
  String get name => throw _privateConstructorUsedError;
  String get institution => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get abstract => throw _privateConstructorUsedError;
  String get cv => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KeynoteSpeakerCopyWith<KeynoteSpeaker> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeynoteSpeakerCopyWith<$Res> {
  factory $KeynoteSpeakerCopyWith(
          KeynoteSpeaker value, $Res Function(KeynoteSpeaker) then) =
      _$KeynoteSpeakerCopyWithImpl<$Res, KeynoteSpeaker>;
  @useResult
  $Res call(
      {String name,
      String institution,
      String title,
      String abstract,
      String cv,
      String image});
}

/// @nodoc
class _$KeynoteSpeakerCopyWithImpl<$Res, $Val extends KeynoteSpeaker>
    implements $KeynoteSpeakerCopyWith<$Res> {
  _$KeynoteSpeakerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? institution = null,
    Object? title = null,
    Object? abstract = null,
    Object? cv = null,
    Object? image = null,
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      abstract: null == abstract
          ? _value.abstract
          : abstract // ignore: cast_nullable_to_non_nullable
              as String,
      cv: null == cv
          ? _value.cv
          : cv // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KeynoteSpeakerImplCopyWith<$Res>
    implements $KeynoteSpeakerCopyWith<$Res> {
  factory _$$KeynoteSpeakerImplCopyWith(_$KeynoteSpeakerImpl value,
          $Res Function(_$KeynoteSpeakerImpl) then) =
      __$$KeynoteSpeakerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String institution,
      String title,
      String abstract,
      String cv,
      String image});
}

/// @nodoc
class __$$KeynoteSpeakerImplCopyWithImpl<$Res>
    extends _$KeynoteSpeakerCopyWithImpl<$Res, _$KeynoteSpeakerImpl>
    implements _$$KeynoteSpeakerImplCopyWith<$Res> {
  __$$KeynoteSpeakerImplCopyWithImpl(
      _$KeynoteSpeakerImpl _value, $Res Function(_$KeynoteSpeakerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? institution = null,
    Object? title = null,
    Object? abstract = null,
    Object? cv = null,
    Object? image = null,
  }) {
    return _then(_$KeynoteSpeakerImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      institution: null == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      abstract: null == abstract
          ? _value.abstract
          : abstract // ignore: cast_nullable_to_non_nullable
              as String,
      cv: null == cv
          ? _value.cv
          : cv // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KeynoteSpeakerImpl implements _KeynoteSpeaker {
  const _$KeynoteSpeakerImpl(
      {required this.name,
      required this.institution,
      required this.title,
      required this.abstract,
      required this.cv,
      required this.image});

  factory _$KeynoteSpeakerImpl.fromJson(Map<String, dynamic> json) =>
      _$$KeynoteSpeakerImplFromJson(json);

  @override
  final String name;
  @override
  final String institution;
  @override
  final String title;
  @override
  final String abstract;
  @override
  final String cv;
  @override
  final String image;

  @override
  String toString() {
    return 'KeynoteSpeaker(name: $name, institution: $institution, title: $title, abstract: $abstract, cv: $cv, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeynoteSpeakerImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.institution, institution) ||
                other.institution == institution) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.abstract, abstract) ||
                other.abstract == abstract) &&
            (identical(other.cv, cv) || other.cv == cv) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, institution, title, abstract, cv, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KeynoteSpeakerImplCopyWith<_$KeynoteSpeakerImpl> get copyWith =>
      __$$KeynoteSpeakerImplCopyWithImpl<_$KeynoteSpeakerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeynoteSpeakerImplToJson(
      this,
    );
  }
}

abstract class _KeynoteSpeaker implements KeynoteSpeaker {
  const factory _KeynoteSpeaker(
      {required final String name,
      required final String institution,
      required final String title,
      required final String abstract,
      required final String cv,
      required final String image}) = _$KeynoteSpeakerImpl;

  factory _KeynoteSpeaker.fromJson(Map<String, dynamic> json) =
      _$KeynoteSpeakerImpl.fromJson;

  @override
  String get name;
  @override
  String get institution;
  @override
  String get title;
  @override
  String get abstract;
  @override
  String get cv;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$KeynoteSpeakerImplCopyWith<_$KeynoteSpeakerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
