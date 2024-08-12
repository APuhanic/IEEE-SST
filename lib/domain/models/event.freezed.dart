// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Event _$EventFromJson(Map<String, dynamic> json) {
  return _Event.fromJson(json);
}

/// @nodoc
mixin _$Event {
  @HiveField(0)
  String? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String get description => throw _privateConstructorUsedError;
  @HiveField(3)
  String get location => throw _privateConstructorUsedError;
  @HiveField(4)
  String get speaker => throw _privateConstructorUsedError;
  @HiveField(5)
  DateTime? get startTime => throw _privateConstructorUsedError;
  @HiveField(6)
  DateTime? get endTime => throw _privateConstructorUsedError;
  @HiveField(7)
  DateTime? get date => throw _privateConstructorUsedError;
  @HiveField(8)
  String? get info => throw _privateConstructorUsedError;
  @HiveField(9)
  bool get isGoing => throw _privateConstructorUsedError;
  @HiveField(10)
  int get attendeeCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventCopyWith<Event> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCopyWith<$Res> {
  factory $EventCopyWith(Event value, $Res Function(Event) then) =
      _$EventCopyWithImpl<$Res, Event>;
  @useResult
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String name,
      @HiveField(2) String description,
      @HiveField(3) String location,
      @HiveField(4) String speaker,
      @HiveField(5) DateTime? startTime,
      @HiveField(6) DateTime? endTime,
      @HiveField(7) DateTime? date,
      @HiveField(8) String? info,
      @HiveField(9) bool isGoing,
      @HiveField(10) int attendeeCount});
}

/// @nodoc
class _$EventCopyWithImpl<$Res, $Val extends Event>
    implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = null,
    Object? location = null,
    Object? speaker = null,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? date = freezed,
    Object? info = freezed,
    Object? isGoing = null,
    Object? attendeeCount = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      speaker: null == speaker
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String?,
      isGoing: null == isGoing
          ? _value.isGoing
          : isGoing // ignore: cast_nullable_to_non_nullable
              as bool,
      attendeeCount: null == attendeeCount
          ? _value.attendeeCount
          : attendeeCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventImplCopyWith<$Res> implements $EventCopyWith<$Res> {
  factory _$$EventImplCopyWith(
          _$EventImpl value, $Res Function(_$EventImpl) then) =
      __$$EventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String name,
      @HiveField(2) String description,
      @HiveField(3) String location,
      @HiveField(4) String speaker,
      @HiveField(5) DateTime? startTime,
      @HiveField(6) DateTime? endTime,
      @HiveField(7) DateTime? date,
      @HiveField(8) String? info,
      @HiveField(9) bool isGoing,
      @HiveField(10) int attendeeCount});
}

/// @nodoc
class __$$EventImplCopyWithImpl<$Res>
    extends _$EventCopyWithImpl<$Res, _$EventImpl>
    implements _$$EventImplCopyWith<$Res> {
  __$$EventImplCopyWithImpl(
      _$EventImpl _value, $Res Function(_$EventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = null,
    Object? location = null,
    Object? speaker = null,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? date = freezed,
    Object? info = freezed,
    Object? isGoing = null,
    Object? attendeeCount = null,
  }) {
    return _then(_$EventImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      speaker: null == speaker
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String?,
      isGoing: null == isGoing
          ? _value.isGoing
          : isGoing // ignore: cast_nullable_to_non_nullable
              as bool,
      attendeeCount: null == attendeeCount
          ? _value.attendeeCount
          : attendeeCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventImpl implements _Event {
  const _$EventImpl(
      {@HiveField(0) this.id,
      @HiveField(1) this.name = '',
      @HiveField(2) this.description = '',
      @HiveField(3) this.location = '',
      @HiveField(4) this.speaker = '',
      @HiveField(5) this.startTime,
      @HiveField(6) this.endTime,
      @HiveField(7) this.date,
      @HiveField(8) this.info,
      @HiveField(9) this.isGoing = false,
      @HiveField(10) this.attendeeCount = 0});

  factory _$EventImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventImplFromJson(json);

  @override
  @HiveField(0)
  final String? id;
  @override
  @JsonKey()
  @HiveField(1)
  final String name;
  @override
  @JsonKey()
  @HiveField(2)
  final String description;
  @override
  @JsonKey()
  @HiveField(3)
  final String location;
  @override
  @JsonKey()
  @HiveField(4)
  final String speaker;
  @override
  @HiveField(5)
  final DateTime? startTime;
  @override
  @HiveField(6)
  final DateTime? endTime;
  @override
  @HiveField(7)
  final DateTime? date;
  @override
  @HiveField(8)
  final String? info;
  @override
  @JsonKey()
  @HiveField(9)
  final bool isGoing;
  @override
  @JsonKey()
  @HiveField(10)
  final int attendeeCount;

  @override
  String toString() {
    return 'Event(id: $id, name: $name, description: $description, location: $location, speaker: $speaker, startTime: $startTime, endTime: $endTime, date: $date, info: $info, isGoing: $isGoing, attendeeCount: $attendeeCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.speaker, speaker) || other.speaker == speaker) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.isGoing, isGoing) || other.isGoing == isGoing) &&
            (identical(other.attendeeCount, attendeeCount) ||
                other.attendeeCount == attendeeCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, location,
      speaker, startTime, endTime, date, info, isGoing, attendeeCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventImplCopyWith<_$EventImpl> get copyWith =>
      __$$EventImplCopyWithImpl<_$EventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventImplToJson(
      this,
    );
  }
}

abstract class _Event implements Event {
  const factory _Event(
      {@HiveField(0) final String? id,
      @HiveField(1) final String name,
      @HiveField(2) final String description,
      @HiveField(3) final String location,
      @HiveField(4) final String speaker,
      @HiveField(5) final DateTime? startTime,
      @HiveField(6) final DateTime? endTime,
      @HiveField(7) final DateTime? date,
      @HiveField(8) final String? info,
      @HiveField(9) final bool isGoing,
      @HiveField(10) final int attendeeCount}) = _$EventImpl;

  factory _Event.fromJson(Map<String, dynamic> json) = _$EventImpl.fromJson;

  @override
  @HiveField(0)
  String? get id;
  @override
  @HiveField(1)
  String get name;
  @override
  @HiveField(2)
  String get description;
  @override
  @HiveField(3)
  String get location;
  @override
  @HiveField(4)
  String get speaker;
  @override
  @HiveField(5)
  DateTime? get startTime;
  @override
  @HiveField(6)
  DateTime? get endTime;
  @override
  @HiveField(7)
  DateTime? get date;
  @override
  @HiveField(8)
  String? get info;
  @override
  @HiveField(9)
  bool get isGoing;
  @override
  @HiveField(10)
  int get attendeeCount;
  @override
  @JsonKey(ignore: true)
  _$$EventImplCopyWith<_$EventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
