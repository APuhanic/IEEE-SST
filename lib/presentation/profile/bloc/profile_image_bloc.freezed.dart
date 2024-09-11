// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_image_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileImageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Profile profile) addProfileImage,
    required TResult Function(XFile? image) imageChanged,
    required TResult Function() removeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Profile profile)? addProfileImage,
    TResult? Function(XFile? image)? imageChanged,
    TResult? Function()? removeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Profile profile)? addProfileImage,
    TResult Function(XFile? image)? imageChanged,
    TResult Function()? removeImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProfileImage value) addProfileImage,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_RemoveImage value) removeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddProfileImage value)? addProfileImage,
    TResult? Function(_ImageChanged value)? imageChanged,
    TResult? Function(_RemoveImage value)? removeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProfileImage value)? addProfileImage,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_RemoveImage value)? removeImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileImageEventCopyWith<$Res> {
  factory $ProfileImageEventCopyWith(
          ProfileImageEvent value, $Res Function(ProfileImageEvent) then) =
      _$ProfileImageEventCopyWithImpl<$Res, ProfileImageEvent>;
}

/// @nodoc
class _$ProfileImageEventCopyWithImpl<$Res, $Val extends ProfileImageEvent>
    implements $ProfileImageEventCopyWith<$Res> {
  _$ProfileImageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddProfileImageImplCopyWith<$Res> {
  factory _$$AddProfileImageImplCopyWith(_$AddProfileImageImpl value,
          $Res Function(_$AddProfileImageImpl) then) =
      __$$AddProfileImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Profile profile});

  $ProfileCopyWith<$Res> get profile;
}

/// @nodoc
class __$$AddProfileImageImplCopyWithImpl<$Res>
    extends _$ProfileImageEventCopyWithImpl<$Res, _$AddProfileImageImpl>
    implements _$$AddProfileImageImplCopyWith<$Res> {
  __$$AddProfileImageImplCopyWithImpl(
      _$AddProfileImageImpl _value, $Res Function(_$AddProfileImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$AddProfileImageImpl(
      null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileCopyWith<$Res> get profile {
    return $ProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc

class _$AddProfileImageImpl
    with DiagnosticableTreeMixin
    implements _AddProfileImage {
  const _$AddProfileImageImpl(this.profile);

  @override
  final Profile profile;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileImageEvent.addProfileImage(profile: $profile)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileImageEvent.addProfileImage'))
      ..add(DiagnosticsProperty('profile', profile));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProfileImageImpl &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProfileImageImplCopyWith<_$AddProfileImageImpl> get copyWith =>
      __$$AddProfileImageImplCopyWithImpl<_$AddProfileImageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Profile profile) addProfileImage,
    required TResult Function(XFile? image) imageChanged,
    required TResult Function() removeImage,
  }) {
    return addProfileImage(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Profile profile)? addProfileImage,
    TResult? Function(XFile? image)? imageChanged,
    TResult? Function()? removeImage,
  }) {
    return addProfileImage?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Profile profile)? addProfileImage,
    TResult Function(XFile? image)? imageChanged,
    TResult Function()? removeImage,
    required TResult orElse(),
  }) {
    if (addProfileImage != null) {
      return addProfileImage(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProfileImage value) addProfileImage,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_RemoveImage value) removeImage,
  }) {
    return addProfileImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddProfileImage value)? addProfileImage,
    TResult? Function(_ImageChanged value)? imageChanged,
    TResult? Function(_RemoveImage value)? removeImage,
  }) {
    return addProfileImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProfileImage value)? addProfileImage,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_RemoveImage value)? removeImage,
    required TResult orElse(),
  }) {
    if (addProfileImage != null) {
      return addProfileImage(this);
    }
    return orElse();
  }
}

abstract class _AddProfileImage implements ProfileImageEvent {
  const factory _AddProfileImage(final Profile profile) = _$AddProfileImageImpl;

  Profile get profile;
  @JsonKey(ignore: true)
  _$$AddProfileImageImplCopyWith<_$AddProfileImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageChangedImplCopyWith<$Res> {
  factory _$$ImageChangedImplCopyWith(
          _$ImageChangedImpl value, $Res Function(_$ImageChangedImpl) then) =
      __$$ImageChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({XFile? image});
}

/// @nodoc
class __$$ImageChangedImplCopyWithImpl<$Res>
    extends _$ProfileImageEventCopyWithImpl<$Res, _$ImageChangedImpl>
    implements _$$ImageChangedImplCopyWith<$Res> {
  __$$ImageChangedImplCopyWithImpl(
      _$ImageChangedImpl _value, $Res Function(_$ImageChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_$ImageChangedImpl(
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$ImageChangedImpl with DiagnosticableTreeMixin implements _ImageChanged {
  const _$ImageChangedImpl(this.image);

  @override
  final XFile? image;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileImageEvent.imageChanged(image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileImageEvent.imageChanged'))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageChangedImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageChangedImplCopyWith<_$ImageChangedImpl> get copyWith =>
      __$$ImageChangedImplCopyWithImpl<_$ImageChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Profile profile) addProfileImage,
    required TResult Function(XFile? image) imageChanged,
    required TResult Function() removeImage,
  }) {
    return imageChanged(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Profile profile)? addProfileImage,
    TResult? Function(XFile? image)? imageChanged,
    TResult? Function()? removeImage,
  }) {
    return imageChanged?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Profile profile)? addProfileImage,
    TResult Function(XFile? image)? imageChanged,
    TResult Function()? removeImage,
    required TResult orElse(),
  }) {
    if (imageChanged != null) {
      return imageChanged(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProfileImage value) addProfileImage,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_RemoveImage value) removeImage,
  }) {
    return imageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddProfileImage value)? addProfileImage,
    TResult? Function(_ImageChanged value)? imageChanged,
    TResult? Function(_RemoveImage value)? removeImage,
  }) {
    return imageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProfileImage value)? addProfileImage,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_RemoveImage value)? removeImage,
    required TResult orElse(),
  }) {
    if (imageChanged != null) {
      return imageChanged(this);
    }
    return orElse();
  }
}

abstract class _ImageChanged implements ProfileImageEvent {
  const factory _ImageChanged(final XFile? image) = _$ImageChangedImpl;

  XFile? get image;
  @JsonKey(ignore: true)
  _$$ImageChangedImplCopyWith<_$ImageChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveImageImplCopyWith<$Res> {
  factory _$$RemoveImageImplCopyWith(
          _$RemoveImageImpl value, $Res Function(_$RemoveImageImpl) then) =
      __$$RemoveImageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveImageImplCopyWithImpl<$Res>
    extends _$ProfileImageEventCopyWithImpl<$Res, _$RemoveImageImpl>
    implements _$$RemoveImageImplCopyWith<$Res> {
  __$$RemoveImageImplCopyWithImpl(
      _$RemoveImageImpl _value, $Res Function(_$RemoveImageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoveImageImpl with DiagnosticableTreeMixin implements _RemoveImage {
  const _$RemoveImageImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileImageEvent.removeImage()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ProfileImageEvent.removeImage'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RemoveImageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Profile profile) addProfileImage,
    required TResult Function(XFile? image) imageChanged,
    required TResult Function() removeImage,
  }) {
    return removeImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Profile profile)? addProfileImage,
    TResult? Function(XFile? image)? imageChanged,
    TResult? Function()? removeImage,
  }) {
    return removeImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Profile profile)? addProfileImage,
    TResult Function(XFile? image)? imageChanged,
    TResult Function()? removeImage,
    required TResult orElse(),
  }) {
    if (removeImage != null) {
      return removeImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProfileImage value) addProfileImage,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_RemoveImage value) removeImage,
  }) {
    return removeImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddProfileImage value)? addProfileImage,
    TResult? Function(_ImageChanged value)? imageChanged,
    TResult? Function(_RemoveImage value)? removeImage,
  }) {
    return removeImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProfileImage value)? addProfileImage,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_RemoveImage value)? removeImage,
    required TResult orElse(),
  }) {
    if (removeImage != null) {
      return removeImage(this);
    }
    return orElse();
  }
}

abstract class _RemoveImage implements ProfileImageEvent {
  const factory _RemoveImage() = _$RemoveImageImpl;
}

/// @nodoc
mixin _$ProfileImageState {
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  XFile? get image => throw _privateConstructorUsedError;
  bool get isChoosing => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileImageStateCopyWith<ProfileImageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileImageStateCopyWith<$Res> {
  factory $ProfileImageStateCopyWith(
          ProfileImageState value, $Res Function(ProfileImageState) then) =
      _$ProfileImageStateCopyWithImpl<$Res, ProfileImageState>;
  @useResult
  $Res call(
      {FormzSubmissionStatus status,
      String errorMessage,
      XFile? image,
      bool isChoosing});
}

/// @nodoc
class _$ProfileImageStateCopyWithImpl<$Res, $Val extends ProfileImageState>
    implements $ProfileImageStateCopyWith<$Res> {
  _$ProfileImageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = null,
    Object? image = freezed,
    Object? isChoosing = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
      isChoosing: null == isChoosing
          ? _value.isChoosing
          : isChoosing // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileImageStateImplCopyWith<$Res>
    implements $ProfileImageStateCopyWith<$Res> {
  factory _$$ProfileImageStateImplCopyWith(_$ProfileImageStateImpl value,
          $Res Function(_$ProfileImageStateImpl) then) =
      __$$ProfileImageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FormzSubmissionStatus status,
      String errorMessage,
      XFile? image,
      bool isChoosing});
}

/// @nodoc
class __$$ProfileImageStateImplCopyWithImpl<$Res>
    extends _$ProfileImageStateCopyWithImpl<$Res, _$ProfileImageStateImpl>
    implements _$$ProfileImageStateImplCopyWith<$Res> {
  __$$ProfileImageStateImplCopyWithImpl(_$ProfileImageStateImpl _value,
      $Res Function(_$ProfileImageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = null,
    Object? image = freezed,
    Object? isChoosing = null,
  }) {
    return _then(_$ProfileImageStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
      isChoosing: null == isChoosing
          ? _value.isChoosing
          : isChoosing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ProfileImageStateImpl
    with DiagnosticableTreeMixin
    implements _ProfileImageState {
  const _$ProfileImageStateImpl(
      {this.status = FormzSubmissionStatus.initial,
      this.errorMessage = '',
      this.image,
      this.isChoosing = false});

  @override
  @JsonKey()
  final FormzSubmissionStatus status;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  final XFile? image;
  @override
  @JsonKey()
  final bool isChoosing;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileImageState(status: $status, errorMessage: $errorMessage, image: $image, isChoosing: $isChoosing)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileImageState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('errorMessage', errorMessage))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('isChoosing', isChoosing));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileImageStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.isChoosing, isChoosing) ||
                other.isChoosing == isChoosing));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, errorMessage, image, isChoosing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileImageStateImplCopyWith<_$ProfileImageStateImpl> get copyWith =>
      __$$ProfileImageStateImplCopyWithImpl<_$ProfileImageStateImpl>(
          this, _$identity);
}

abstract class _ProfileImageState implements ProfileImageState {
  const factory _ProfileImageState(
      {final FormzSubmissionStatus status,
      final String errorMessage,
      final XFile? image,
      final bool isChoosing}) = _$ProfileImageStateImpl;

  @override
  FormzSubmissionStatus get status;
  @override
  String get errorMessage;
  @override
  XFile? get image;
  @override
  bool get isChoosing;
  @override
  @JsonKey(ignore: true)
  _$$ProfileImageStateImplCopyWith<_$ProfileImageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
