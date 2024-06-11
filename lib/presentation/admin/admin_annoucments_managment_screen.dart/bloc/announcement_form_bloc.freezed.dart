// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'announcement_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AnnouncementFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() createAnnouncement,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? createAnnouncement,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String description)? descriptionChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? createAnnouncement,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateAnnouncement value) createAnnouncement,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateAnnouncement value)? createAnnouncement,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateAnnouncement value)? createAnnouncement,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementFormEventCopyWith<$Res> {
  factory $AnnouncementFormEventCopyWith(AnnouncementFormEvent value,
          $Res Function(AnnouncementFormEvent) then) =
      _$AnnouncementFormEventCopyWithImpl<$Res, AnnouncementFormEvent>;
}

/// @nodoc
class _$AnnouncementFormEventCopyWithImpl<$Res,
        $Val extends AnnouncementFormEvent>
    implements $AnnouncementFormEventCopyWith<$Res> {
  _$AnnouncementFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AnnouncementFormEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AnnouncementFormEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() createAnnouncement,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? createAnnouncement,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String description)? descriptionChanged,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? createAnnouncement,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateAnnouncement value) createAnnouncement,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateAnnouncement value)? createAnnouncement,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateAnnouncement value)? createAnnouncement,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AnnouncementFormEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$CreateAnnouncementImplCopyWith<$Res> {
  factory _$$CreateAnnouncementImplCopyWith(_$CreateAnnouncementImpl value,
          $Res Function(_$CreateAnnouncementImpl) then) =
      __$$CreateAnnouncementImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateAnnouncementImplCopyWithImpl<$Res>
    extends _$AnnouncementFormEventCopyWithImpl<$Res, _$CreateAnnouncementImpl>
    implements _$$CreateAnnouncementImplCopyWith<$Res> {
  __$$CreateAnnouncementImplCopyWithImpl(_$CreateAnnouncementImpl _value,
      $Res Function(_$CreateAnnouncementImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateAnnouncementImpl implements _CreateAnnouncement {
  const _$CreateAnnouncementImpl();

  @override
  String toString() {
    return 'AnnouncementFormEvent.createAnnouncement()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreateAnnouncementImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() createAnnouncement,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
  }) {
    return createAnnouncement();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? createAnnouncement,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String description)? descriptionChanged,
  }) {
    return createAnnouncement?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? createAnnouncement,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    required TResult orElse(),
  }) {
    if (createAnnouncement != null) {
      return createAnnouncement();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateAnnouncement value) createAnnouncement,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
  }) {
    return createAnnouncement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateAnnouncement value)? createAnnouncement,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
  }) {
    return createAnnouncement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateAnnouncement value)? createAnnouncement,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    required TResult orElse(),
  }) {
    if (createAnnouncement != null) {
      return createAnnouncement(this);
    }
    return orElse();
  }
}

abstract class _CreateAnnouncement implements AnnouncementFormEvent {
  const factory _CreateAnnouncement() = _$CreateAnnouncementImpl;
}

/// @nodoc
abstract class _$$TitleChangedImplCopyWith<$Res> {
  factory _$$TitleChangedImplCopyWith(
          _$TitleChangedImpl value, $Res Function(_$TitleChangedImpl) then) =
      __$$TitleChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$TitleChangedImplCopyWithImpl<$Res>
    extends _$AnnouncementFormEventCopyWithImpl<$Res, _$TitleChangedImpl>
    implements _$$TitleChangedImplCopyWith<$Res> {
  __$$TitleChangedImplCopyWithImpl(
      _$TitleChangedImpl _value, $Res Function(_$TitleChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$TitleChangedImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TitleChangedImpl implements _TitleChanged {
  const _$TitleChangedImpl(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'AnnouncementFormEvent.titleChanged(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TitleChangedImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TitleChangedImplCopyWith<_$TitleChangedImpl> get copyWith =>
      __$$TitleChangedImplCopyWithImpl<_$TitleChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() createAnnouncement,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
  }) {
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? createAnnouncement,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String description)? descriptionChanged,
  }) {
    return titleChanged?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? createAnnouncement,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateAnnouncement value) createAnnouncement,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateAnnouncement value)? createAnnouncement,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
  }) {
    return titleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateAnnouncement value)? createAnnouncement,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements AnnouncementFormEvent {
  const factory _TitleChanged(final String title) = _$TitleChangedImpl;

  String get title;
  @JsonKey(ignore: true)
  _$$TitleChangedImplCopyWith<_$TitleChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DescriptionChangedImplCopyWith<$Res> {
  factory _$$DescriptionChangedImplCopyWith(_$DescriptionChangedImpl value,
          $Res Function(_$DescriptionChangedImpl) then) =
      __$$DescriptionChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String description});
}

/// @nodoc
class __$$DescriptionChangedImplCopyWithImpl<$Res>
    extends _$AnnouncementFormEventCopyWithImpl<$Res, _$DescriptionChangedImpl>
    implements _$$DescriptionChangedImplCopyWith<$Res> {
  __$$DescriptionChangedImplCopyWithImpl(_$DescriptionChangedImpl _value,
      $Res Function(_$DescriptionChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_$DescriptionChangedImpl(
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DescriptionChangedImpl implements _DescriptionChanged {
  const _$DescriptionChangedImpl(this.description);

  @override
  final String description;

  @override
  String toString() {
    return 'AnnouncementFormEvent.descriptionChanged(description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DescriptionChangedImpl &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DescriptionChangedImplCopyWith<_$DescriptionChangedImpl> get copyWith =>
      __$$DescriptionChangedImplCopyWithImpl<_$DescriptionChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() createAnnouncement,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
  }) {
    return descriptionChanged(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? createAnnouncement,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String description)? descriptionChanged,
  }) {
    return descriptionChanged?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? createAnnouncement,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateAnnouncement value) createAnnouncement,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
  }) {
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateAnnouncement value)? createAnnouncement,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
  }) {
    return descriptionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateAnnouncement value)? createAnnouncement,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChanged implements AnnouncementFormEvent {
  const factory _DescriptionChanged(final String description) =
      _$DescriptionChangedImpl;

  String get description;
  @JsonKey(ignore: true)
  _$$DescriptionChangedImplCopyWith<_$DescriptionChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AnnouncementFormState {
  String? get id => throw _privateConstructorUsedError;
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnnouncementFormStateCopyWith<AnnouncementFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementFormStateCopyWith<$Res> {
  factory $AnnouncementFormStateCopyWith(AnnouncementFormState value,
          $Res Function(AnnouncementFormState) then) =
      _$AnnouncementFormStateCopyWithImpl<$Res, AnnouncementFormState>;
  @useResult
  $Res call(
      {String? id,
      FormzSubmissionStatus status,
      String title,
      String description,
      String errorMessage});
}

/// @nodoc
class _$AnnouncementFormStateCopyWithImpl<$Res,
        $Val extends AnnouncementFormState>
    implements $AnnouncementFormStateCopyWith<$Res> {
  _$AnnouncementFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = null,
    Object? title = null,
    Object? description = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnnouncementFormStateImplCopyWith<$Res>
    implements $AnnouncementFormStateCopyWith<$Res> {
  factory _$$AnnouncementFormStateImplCopyWith(
          _$AnnouncementFormStateImpl value,
          $Res Function(_$AnnouncementFormStateImpl) then) =
      __$$AnnouncementFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      FormzSubmissionStatus status,
      String title,
      String description,
      String errorMessage});
}

/// @nodoc
class __$$AnnouncementFormStateImplCopyWithImpl<$Res>
    extends _$AnnouncementFormStateCopyWithImpl<$Res,
        _$AnnouncementFormStateImpl>
    implements _$$AnnouncementFormStateImplCopyWith<$Res> {
  __$$AnnouncementFormStateImplCopyWithImpl(_$AnnouncementFormStateImpl _value,
      $Res Function(_$AnnouncementFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = null,
    Object? title = null,
    Object? description = null,
    Object? errorMessage = null,
  }) {
    return _then(_$AnnouncementFormStateImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AnnouncementFormStateImpl implements _AnnouncementFormState {
  const _$AnnouncementFormStateImpl(
      {this.id,
      this.status = FormzSubmissionStatus.initial,
      this.title = '',
      this.description = '',
      this.errorMessage = ''});

  @override
  final String? id;
  @override
  @JsonKey()
  final FormzSubmissionStatus status;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'AnnouncementFormState(id: $id, status: $status, title: $title, description: $description, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnouncementFormStateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, status, title, description, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnnouncementFormStateImplCopyWith<_$AnnouncementFormStateImpl>
      get copyWith => __$$AnnouncementFormStateImplCopyWithImpl<
          _$AnnouncementFormStateImpl>(this, _$identity);
}

abstract class _AnnouncementFormState implements AnnouncementFormState {
  const factory _AnnouncementFormState(
      {final String? id,
      final FormzSubmissionStatus status,
      final String title,
      final String description,
      final String errorMessage}) = _$AnnouncementFormStateImpl;

  @override
  String? get id;
  @override
  FormzSubmissionStatus get status;
  @override
  String get title;
  @override
  String get description;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$AnnouncementFormStateImplCopyWith<_$AnnouncementFormStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
