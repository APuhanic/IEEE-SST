// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sponsor_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SponsorFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(XFile? image) imageChanged,
    required TResult Function() addSponsor,
    required TResult Function() removeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(XFile? image)? imageChanged,
    TResult? Function()? addSponsor,
    TResult? Function()? removeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(XFile? image)? imageChanged,
    TResult Function()? addSponsor,
    TResult Function()? removeImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_AddSponsor value) addSponsor,
    required TResult Function(_RemoveImage value) removeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_ImageChanged value)? imageChanged,
    TResult? Function(_AddSponsor value)? addSponsor,
    TResult? Function(_RemoveImage value)? removeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_AddSponsor value)? addSponsor,
    TResult Function(_RemoveImage value)? removeImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SponsorFormEventCopyWith<$Res> {
  factory $SponsorFormEventCopyWith(
          SponsorFormEvent value, $Res Function(SponsorFormEvent) then) =
      _$SponsorFormEventCopyWithImpl<$Res, SponsorFormEvent>;
}

/// @nodoc
class _$SponsorFormEventCopyWithImpl<$Res, $Val extends SponsorFormEvent>
    implements $SponsorFormEventCopyWith<$Res> {
  _$SponsorFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NameChangedImplCopyWith<$Res> {
  factory _$$NameChangedImplCopyWith(
          _$NameChangedImpl value, $Res Function(_$NameChangedImpl) then) =
      __$$NameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$NameChangedImplCopyWithImpl<$Res>
    extends _$SponsorFormEventCopyWithImpl<$Res, _$NameChangedImpl>
    implements _$$NameChangedImplCopyWith<$Res> {
  __$$NameChangedImplCopyWithImpl(
      _$NameChangedImpl _value, $Res Function(_$NameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$NameChangedImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChangedImpl implements _NameChanged {
  const _$NameChangedImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'SponsorFormEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameChangedImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      __$$NameChangedImplCopyWithImpl<_$NameChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(XFile? image) imageChanged,
    required TResult Function() addSponsor,
    required TResult Function() removeImage,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(XFile? image)? imageChanged,
    TResult? Function()? addSponsor,
    TResult? Function()? removeImage,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(XFile? image)? imageChanged,
    TResult Function()? addSponsor,
    TResult Function()? removeImage,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_AddSponsor value) addSponsor,
    required TResult Function(_RemoveImage value) removeImage,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_ImageChanged value)? imageChanged,
    TResult? Function(_AddSponsor value)? addSponsor,
    TResult? Function(_RemoveImage value)? removeImage,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_AddSponsor value)? addSponsor,
    TResult Function(_RemoveImage value)? removeImage,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements SponsorFormEvent {
  const factory _NameChanged(final String name) = _$NameChangedImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
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
    extends _$SponsorFormEventCopyWithImpl<$Res, _$ImageChangedImpl>
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

class _$ImageChangedImpl implements _ImageChanged {
  const _$ImageChangedImpl(this.image);

  @override
  final XFile? image;

  @override
  String toString() {
    return 'SponsorFormEvent.imageChanged(image: $image)';
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
    required TResult Function(String name) nameChanged,
    required TResult Function(XFile? image) imageChanged,
    required TResult Function() addSponsor,
    required TResult Function() removeImage,
  }) {
    return imageChanged(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(XFile? image)? imageChanged,
    TResult? Function()? addSponsor,
    TResult? Function()? removeImage,
  }) {
    return imageChanged?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(XFile? image)? imageChanged,
    TResult Function()? addSponsor,
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
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_AddSponsor value) addSponsor,
    required TResult Function(_RemoveImage value) removeImage,
  }) {
    return imageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_ImageChanged value)? imageChanged,
    TResult? Function(_AddSponsor value)? addSponsor,
    TResult? Function(_RemoveImage value)? removeImage,
  }) {
    return imageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_AddSponsor value)? addSponsor,
    TResult Function(_RemoveImage value)? removeImage,
    required TResult orElse(),
  }) {
    if (imageChanged != null) {
      return imageChanged(this);
    }
    return orElse();
  }
}

abstract class _ImageChanged implements SponsorFormEvent {
  const factory _ImageChanged(final XFile? image) = _$ImageChangedImpl;

  XFile? get image;
  @JsonKey(ignore: true)
  _$$ImageChangedImplCopyWith<_$ImageChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddSponsorImplCopyWith<$Res> {
  factory _$$AddSponsorImplCopyWith(
          _$AddSponsorImpl value, $Res Function(_$AddSponsorImpl) then) =
      __$$AddSponsorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddSponsorImplCopyWithImpl<$Res>
    extends _$SponsorFormEventCopyWithImpl<$Res, _$AddSponsorImpl>
    implements _$$AddSponsorImplCopyWith<$Res> {
  __$$AddSponsorImplCopyWithImpl(
      _$AddSponsorImpl _value, $Res Function(_$AddSponsorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddSponsorImpl implements _AddSponsor {
  const _$AddSponsorImpl();

  @override
  String toString() {
    return 'SponsorFormEvent.addSponsor()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddSponsorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(XFile? image) imageChanged,
    required TResult Function() addSponsor,
    required TResult Function() removeImage,
  }) {
    return addSponsor();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(XFile? image)? imageChanged,
    TResult? Function()? addSponsor,
    TResult? Function()? removeImage,
  }) {
    return addSponsor?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(XFile? image)? imageChanged,
    TResult Function()? addSponsor,
    TResult Function()? removeImage,
    required TResult orElse(),
  }) {
    if (addSponsor != null) {
      return addSponsor();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_AddSponsor value) addSponsor,
    required TResult Function(_RemoveImage value) removeImage,
  }) {
    return addSponsor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_ImageChanged value)? imageChanged,
    TResult? Function(_AddSponsor value)? addSponsor,
    TResult? Function(_RemoveImage value)? removeImage,
  }) {
    return addSponsor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_AddSponsor value)? addSponsor,
    TResult Function(_RemoveImage value)? removeImage,
    required TResult orElse(),
  }) {
    if (addSponsor != null) {
      return addSponsor(this);
    }
    return orElse();
  }
}

abstract class _AddSponsor implements SponsorFormEvent {
  const factory _AddSponsor() = _$AddSponsorImpl;
}

/// @nodoc
abstract class _$$RemoveImageImplCopyWith<$Res> {
  factory _$$RemoveImageImplCopyWith(
          _$RemoveImageImpl value, $Res Function(_$RemoveImageImpl) then) =
      __$$RemoveImageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveImageImplCopyWithImpl<$Res>
    extends _$SponsorFormEventCopyWithImpl<$Res, _$RemoveImageImpl>
    implements _$$RemoveImageImplCopyWith<$Res> {
  __$$RemoveImageImplCopyWithImpl(
      _$RemoveImageImpl _value, $Res Function(_$RemoveImageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoveImageImpl implements _RemoveImage {
  const _$RemoveImageImpl();

  @override
  String toString() {
    return 'SponsorFormEvent.removeImage()';
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
    required TResult Function(String name) nameChanged,
    required TResult Function(XFile? image) imageChanged,
    required TResult Function() addSponsor,
    required TResult Function() removeImage,
  }) {
    return removeImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(XFile? image)? imageChanged,
    TResult? Function()? addSponsor,
    TResult? Function()? removeImage,
  }) {
    return removeImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(XFile? image)? imageChanged,
    TResult Function()? addSponsor,
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
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_AddSponsor value) addSponsor,
    required TResult Function(_RemoveImage value) removeImage,
  }) {
    return removeImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_ImageChanged value)? imageChanged,
    TResult? Function(_AddSponsor value)? addSponsor,
    TResult? Function(_RemoveImage value)? removeImage,
  }) {
    return removeImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_AddSponsor value)? addSponsor,
    TResult Function(_RemoveImage value)? removeImage,
    required TResult orElse(),
  }) {
    if (removeImage != null) {
      return removeImage(this);
    }
    return orElse();
  }
}

abstract class _RemoveImage implements SponsorFormEvent {
  const factory _RemoveImage() = _$RemoveImageImpl;
}

/// @nodoc
mixin _$SponsorFormState {
  String get name => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;
  XFile? get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SponsorFormStateCopyWith<SponsorFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SponsorFormStateCopyWith<$Res> {
  factory $SponsorFormStateCopyWith(
          SponsorFormState value, $Res Function(SponsorFormState) then) =
      _$SponsorFormStateCopyWithImpl<$Res, SponsorFormState>;
  @useResult
  $Res call(
      {String name,
      String errorMessage,
      FormzSubmissionStatus status,
      XFile? image});
}

/// @nodoc
class _$SponsorFormStateCopyWithImpl<$Res, $Val extends SponsorFormState>
    implements $SponsorFormStateCopyWith<$Res> {
  _$SponsorFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? errorMessage = null,
    Object? status = null,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddSponsorStateImplCopyWith<$Res>
    implements $SponsorFormStateCopyWith<$Res> {
  factory _$$AddSponsorStateImplCopyWith(_$AddSponsorStateImpl value,
          $Res Function(_$AddSponsorStateImpl) then) =
      __$$AddSponsorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String errorMessage,
      FormzSubmissionStatus status,
      XFile? image});
}

/// @nodoc
class __$$AddSponsorStateImplCopyWithImpl<$Res>
    extends _$SponsorFormStateCopyWithImpl<$Res, _$AddSponsorStateImpl>
    implements _$$AddSponsorStateImplCopyWith<$Res> {
  __$$AddSponsorStateImplCopyWithImpl(
      _$AddSponsorStateImpl _value, $Res Function(_$AddSponsorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? errorMessage = null,
    Object? status = null,
    Object? image = freezed,
  }) {
    return _then(_$AddSponsorStateImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$AddSponsorStateImpl implements _AddSponsorState {
  const _$AddSponsorStateImpl(
      {this.name = '',
      this.errorMessage = '',
      this.status = FormzSubmissionStatus.initial,
      this.image});

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final FormzSubmissionStatus status;
  @override
  final XFile? image;

  @override
  String toString() {
    return 'SponsorFormState(name: $name, errorMessage: $errorMessage, status: $status, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddSponsorStateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, errorMessage, status, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddSponsorStateImplCopyWith<_$AddSponsorStateImpl> get copyWith =>
      __$$AddSponsorStateImplCopyWithImpl<_$AddSponsorStateImpl>(
          this, _$identity);
}

abstract class _AddSponsorState implements SponsorFormState {
  const factory _AddSponsorState(
      {final String name,
      final String errorMessage,
      final FormzSubmissionStatus status,
      final XFile? image}) = _$AddSponsorStateImpl;

  @override
  String get name;
  @override
  String get errorMessage;
  @override
  FormzSubmissionStatus get status;
  @override
  XFile? get image;
  @override
  @JsonKey(ignore: true)
  _$$AddSponsorStateImplCopyWith<_$AddSponsorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
