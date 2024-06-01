// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_event_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateEventEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitted,
    required TResult Function(String eventName) eventNameChanged,
    required TResult Function(String eventDescription) eventDescriptionChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? submitted,
    TResult? Function(String eventName)? eventNameChanged,
    TResult? Function(String eventDescription)? eventDescriptionChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitted,
    TResult Function(String eventName)? eventNameChanged,
    TResult Function(String eventDescription)? eventDescriptionChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_EventNameChanged value) eventNameChanged,
    required TResult Function(_EventDescriptionChanged value)
        eventDescriptionChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_EventNameChanged value)? eventNameChanged,
    TResult? Function(_EventDescriptionChanged value)? eventDescriptionChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submitted value)? submitted,
    TResult Function(_EventNameChanged value)? eventNameChanged,
    TResult Function(_EventDescriptionChanged value)? eventDescriptionChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateEventEventCopyWith<$Res> {
  factory $CreateEventEventCopyWith(
          CreateEventEvent value, $Res Function(CreateEventEvent) then) =
      _$CreateEventEventCopyWithImpl<$Res, CreateEventEvent>;
}

/// @nodoc
class _$CreateEventEventCopyWithImpl<$Res, $Val extends CreateEventEvent>
    implements $CreateEventEventCopyWith<$Res> {
  _$CreateEventEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SubmittedImplCopyWith<$Res> {
  factory _$$SubmittedImplCopyWith(
          _$SubmittedImpl value, $Res Function(_$SubmittedImpl) then) =
      __$$SubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmittedImplCopyWithImpl<$Res>
    extends _$CreateEventEventCopyWithImpl<$Res, _$SubmittedImpl>
    implements _$$SubmittedImplCopyWith<$Res> {
  __$$SubmittedImplCopyWithImpl(
      _$SubmittedImpl _value, $Res Function(_$SubmittedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubmittedImpl implements _Submitted {
  const _$SubmittedImpl();

  @override
  String toString() {
    return 'CreateEventEvent.submitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitted,
    required TResult Function(String eventName) eventNameChanged,
    required TResult Function(String eventDescription) eventDescriptionChanged,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? submitted,
    TResult? Function(String eventName)? eventNameChanged,
    TResult? Function(String eventDescription)? eventDescriptionChanged,
  }) {
    return submitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitted,
    TResult Function(String eventName)? eventNameChanged,
    TResult Function(String eventDescription)? eventDescriptionChanged,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_EventNameChanged value) eventNameChanged,
    required TResult Function(_EventDescriptionChanged value)
        eventDescriptionChanged,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_EventNameChanged value)? eventNameChanged,
    TResult? Function(_EventDescriptionChanged value)? eventDescriptionChanged,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submitted value)? submitted,
    TResult Function(_EventNameChanged value)? eventNameChanged,
    TResult Function(_EventDescriptionChanged value)? eventDescriptionChanged,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements CreateEventEvent {
  const factory _Submitted() = _$SubmittedImpl;
}

/// @nodoc
abstract class _$$EventNameChangedImplCopyWith<$Res> {
  factory _$$EventNameChangedImplCopyWith(_$EventNameChangedImpl value,
          $Res Function(_$EventNameChangedImpl) then) =
      __$$EventNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String eventName});
}

/// @nodoc
class __$$EventNameChangedImplCopyWithImpl<$Res>
    extends _$CreateEventEventCopyWithImpl<$Res, _$EventNameChangedImpl>
    implements _$$EventNameChangedImplCopyWith<$Res> {
  __$$EventNameChangedImplCopyWithImpl(_$EventNameChangedImpl _value,
      $Res Function(_$EventNameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventName = null,
  }) {
    return _then(_$EventNameChangedImpl(
      null == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EventNameChangedImpl implements _EventNameChanged {
  const _$EventNameChangedImpl(this.eventName);

  @override
  final String eventName;

  @override
  String toString() {
    return 'CreateEventEvent.eventNameChanged(eventName: $eventName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventNameChangedImpl &&
            (identical(other.eventName, eventName) ||
                other.eventName == eventName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventNameChangedImplCopyWith<_$EventNameChangedImpl> get copyWith =>
      __$$EventNameChangedImplCopyWithImpl<_$EventNameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitted,
    required TResult Function(String eventName) eventNameChanged,
    required TResult Function(String eventDescription) eventDescriptionChanged,
  }) {
    return eventNameChanged(eventName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? submitted,
    TResult? Function(String eventName)? eventNameChanged,
    TResult? Function(String eventDescription)? eventDescriptionChanged,
  }) {
    return eventNameChanged?.call(eventName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitted,
    TResult Function(String eventName)? eventNameChanged,
    TResult Function(String eventDescription)? eventDescriptionChanged,
    required TResult orElse(),
  }) {
    if (eventNameChanged != null) {
      return eventNameChanged(eventName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_EventNameChanged value) eventNameChanged,
    required TResult Function(_EventDescriptionChanged value)
        eventDescriptionChanged,
  }) {
    return eventNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_EventNameChanged value)? eventNameChanged,
    TResult? Function(_EventDescriptionChanged value)? eventDescriptionChanged,
  }) {
    return eventNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submitted value)? submitted,
    TResult Function(_EventNameChanged value)? eventNameChanged,
    TResult Function(_EventDescriptionChanged value)? eventDescriptionChanged,
    required TResult orElse(),
  }) {
    if (eventNameChanged != null) {
      return eventNameChanged(this);
    }
    return orElse();
  }
}

abstract class _EventNameChanged implements CreateEventEvent {
  const factory _EventNameChanged(final String eventName) =
      _$EventNameChangedImpl;

  String get eventName;
  @JsonKey(ignore: true)
  _$$EventNameChangedImplCopyWith<_$EventNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EventDescriptionChangedImplCopyWith<$Res> {
  factory _$$EventDescriptionChangedImplCopyWith(
          _$EventDescriptionChangedImpl value,
          $Res Function(_$EventDescriptionChangedImpl) then) =
      __$$EventDescriptionChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String eventDescription});
}

/// @nodoc
class __$$EventDescriptionChangedImplCopyWithImpl<$Res>
    extends _$CreateEventEventCopyWithImpl<$Res, _$EventDescriptionChangedImpl>
    implements _$$EventDescriptionChangedImplCopyWith<$Res> {
  __$$EventDescriptionChangedImplCopyWithImpl(
      _$EventDescriptionChangedImpl _value,
      $Res Function(_$EventDescriptionChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventDescription = null,
  }) {
    return _then(_$EventDescriptionChangedImpl(
      null == eventDescription
          ? _value.eventDescription
          : eventDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EventDescriptionChangedImpl implements _EventDescriptionChanged {
  const _$EventDescriptionChangedImpl(this.eventDescription);

  @override
  final String eventDescription;

  @override
  String toString() {
    return 'CreateEventEvent.eventDescriptionChanged(eventDescription: $eventDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventDescriptionChangedImpl &&
            (identical(other.eventDescription, eventDescription) ||
                other.eventDescription == eventDescription));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventDescriptionChangedImplCopyWith<_$EventDescriptionChangedImpl>
      get copyWith => __$$EventDescriptionChangedImplCopyWithImpl<
          _$EventDescriptionChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitted,
    required TResult Function(String eventName) eventNameChanged,
    required TResult Function(String eventDescription) eventDescriptionChanged,
  }) {
    return eventDescriptionChanged(eventDescription);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? submitted,
    TResult? Function(String eventName)? eventNameChanged,
    TResult? Function(String eventDescription)? eventDescriptionChanged,
  }) {
    return eventDescriptionChanged?.call(eventDescription);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitted,
    TResult Function(String eventName)? eventNameChanged,
    TResult Function(String eventDescription)? eventDescriptionChanged,
    required TResult orElse(),
  }) {
    if (eventDescriptionChanged != null) {
      return eventDescriptionChanged(eventDescription);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_EventNameChanged value) eventNameChanged,
    required TResult Function(_EventDescriptionChanged value)
        eventDescriptionChanged,
  }) {
    return eventDescriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_EventNameChanged value)? eventNameChanged,
    TResult? Function(_EventDescriptionChanged value)? eventDescriptionChanged,
  }) {
    return eventDescriptionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submitted value)? submitted,
    TResult Function(_EventNameChanged value)? eventNameChanged,
    TResult Function(_EventDescriptionChanged value)? eventDescriptionChanged,
    required TResult orElse(),
  }) {
    if (eventDescriptionChanged != null) {
      return eventDescriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _EventDescriptionChanged implements CreateEventEvent {
  const factory _EventDescriptionChanged(final String eventDescription) =
      _$EventDescriptionChangedImpl;

  String get eventDescription;
  @JsonKey(ignore: true)
  _$$EventDescriptionChangedImplCopyWith<_$EventDescriptionChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateEventState {
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;
  String get eventName => throw _privateConstructorUsedError;
  String get eventDescription => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateEventStateCopyWith<CreateEventState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateEventStateCopyWith<$Res> {
  factory $CreateEventStateCopyWith(
          CreateEventState value, $Res Function(CreateEventState) then) =
      _$CreateEventStateCopyWithImpl<$Res, CreateEventState>;
  @useResult
  $Res call(
      {FormzSubmissionStatus status,
      String eventName,
      String eventDescription,
      String errorMessage});
}

/// @nodoc
class _$CreateEventStateCopyWithImpl<$Res, $Val extends CreateEventState>
    implements $CreateEventStateCopyWith<$Res> {
  _$CreateEventStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? eventName = null,
    Object? eventDescription = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      eventName: null == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      eventDescription: null == eventDescription
          ? _value.eventDescription
          : eventDescription // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateEventStateImplCopyWith<$Res>
    implements $CreateEventStateCopyWith<$Res> {
  factory _$$CreateEventStateImplCopyWith(_$CreateEventStateImpl value,
          $Res Function(_$CreateEventStateImpl) then) =
      __$$CreateEventStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FormzSubmissionStatus status,
      String eventName,
      String eventDescription,
      String errorMessage});
}

/// @nodoc
class __$$CreateEventStateImplCopyWithImpl<$Res>
    extends _$CreateEventStateCopyWithImpl<$Res, _$CreateEventStateImpl>
    implements _$$CreateEventStateImplCopyWith<$Res> {
  __$$CreateEventStateImplCopyWithImpl(_$CreateEventStateImpl _value,
      $Res Function(_$CreateEventStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? eventName = null,
    Object? eventDescription = null,
    Object? errorMessage = null,
  }) {
    return _then(_$CreateEventStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      eventName: null == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      eventDescription: null == eventDescription
          ? _value.eventDescription
          : eventDescription // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateEventStateImpl implements _CreateEventState {
  const _$CreateEventStateImpl(
      {this.status = FormzSubmissionStatus.initial,
      this.eventName = '',
      this.eventDescription = '',
      this.errorMessage = ''});

  @override
  @JsonKey()
  final FormzSubmissionStatus status;
  @override
  @JsonKey()
  final String eventName;
  @override
  @JsonKey()
  final String eventDescription;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'CreateEventState(status: $status, eventName: $eventName, eventDescription: $eventDescription, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateEventStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.eventName, eventName) ||
                other.eventName == eventName) &&
            (identical(other.eventDescription, eventDescription) ||
                other.eventDescription == eventDescription) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, eventName, eventDescription, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateEventStateImplCopyWith<_$CreateEventStateImpl> get copyWith =>
      __$$CreateEventStateImplCopyWithImpl<_$CreateEventStateImpl>(
          this, _$identity);
}

abstract class _CreateEventState implements CreateEventState {
  const factory _CreateEventState(
      {final FormzSubmissionStatus status,
      final String eventName,
      final String eventDescription,
      final String errorMessage}) = _$CreateEventStateImpl;

  @override
  FormzSubmissionStatus get status;
  @override
  String get eventName;
  @override
  String get eventDescription;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$CreateEventStateImplCopyWith<_$CreateEventStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
