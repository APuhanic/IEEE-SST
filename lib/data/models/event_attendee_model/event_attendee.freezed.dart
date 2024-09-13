// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_attendee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EventAttendee _$EventAttendeeFromJson(Map<String, dynamic> json) {
  return _EventAttendee.fromJson(json);
}

/// @nodoc
mixin _$EventAttendee {
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get eventId => throw _privateConstructorUsedError;
  @HiveField(2)
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventAttendeeCopyWith<EventAttendee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventAttendeeCopyWith<$Res> {
  factory $EventAttendeeCopyWith(
          EventAttendee value, $Res Function(EventAttendee) then) =
      _$EventAttendeeCopyWithImpl<$Res, EventAttendee>;
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String eventId,
      @HiveField(2) String userId});
}

/// @nodoc
class _$EventAttendeeCopyWithImpl<$Res, $Val extends EventAttendee>
    implements $EventAttendeeCopyWith<$Res> {
  _$EventAttendeeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? eventId = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventAttendeeImplCopyWith<$Res>
    implements $EventAttendeeCopyWith<$Res> {
  factory _$$EventAttendeeImplCopyWith(
          _$EventAttendeeImpl value, $Res Function(_$EventAttendeeImpl) then) =
      __$$EventAttendeeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String eventId,
      @HiveField(2) String userId});
}

/// @nodoc
class __$$EventAttendeeImplCopyWithImpl<$Res>
    extends _$EventAttendeeCopyWithImpl<$Res, _$EventAttendeeImpl>
    implements _$$EventAttendeeImplCopyWith<$Res> {
  __$$EventAttendeeImplCopyWithImpl(
      _$EventAttendeeImpl _value, $Res Function(_$EventAttendeeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? eventId = null,
    Object? userId = null,
  }) {
    return _then(_$EventAttendeeImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventAttendeeImpl implements _EventAttendee {
  const _$EventAttendeeImpl(
      {@HiveField(0) this.id,
      @HiveField(1) required this.eventId,
      @HiveField(2) required this.userId});

  factory _$EventAttendeeImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventAttendeeImplFromJson(json);

  @override
  @HiveField(0)
  final int? id;
  @override
  @HiveField(1)
  final String eventId;
  @override
  @HiveField(2)
  final String userId;

  @override
  String toString() {
    return 'EventAttendee(id: $id, eventId: $eventId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventAttendeeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, eventId, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventAttendeeImplCopyWith<_$EventAttendeeImpl> get copyWith =>
      __$$EventAttendeeImplCopyWithImpl<_$EventAttendeeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventAttendeeImplToJson(
      this,
    );
  }
}

abstract class _EventAttendee implements EventAttendee {
  const factory _EventAttendee(
      {@HiveField(0) final int? id,
      @HiveField(1) required final String eventId,
      @HiveField(2) required final String userId}) = _$EventAttendeeImpl;

  factory _EventAttendee.fromJson(Map<String, dynamic> json) =
      _$EventAttendeeImpl.fromJson;

  @override
  @HiveField(0)
  int? get id;
  @override
  @HiveField(1)
  String get eventId;
  @override
  @HiveField(2)
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$EventAttendeeImplCopyWith<_$EventAttendeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
