// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'events_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EventsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadEvents,
    required TResult Function(Event event) addEvent,
    required TResult Function(Event event) deleteEvent,
    required TResult Function(Event event) updateEvent,
    required TResult Function(Event event) markGoing,
    required TResult Function(Event event) markNotGoing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadEvents,
    TResult? Function(Event event)? addEvent,
    TResult? Function(Event event)? deleteEvent,
    TResult? Function(Event event)? updateEvent,
    TResult? Function(Event event)? markGoing,
    TResult? Function(Event event)? markNotGoing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadEvents,
    TResult Function(Event event)? addEvent,
    TResult Function(Event event)? deleteEvent,
    TResult Function(Event event)? updateEvent,
    TResult Function(Event event)? markGoing,
    TResult Function(Event event)? markNotGoing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvents value) loadEvents,
    required TResult Function(_AddEvent value) addEvent,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_UpdateEvent value) updateEvent,
    required TResult Function(_MarkGoing value) markGoing,
    required TResult Function(_MarkNotGoing value) markNotGoing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvents value)? loadEvents,
    TResult? Function(_AddEvent value)? addEvent,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_UpdateEvent value)? updateEvent,
    TResult? Function(_MarkGoing value)? markGoing,
    TResult? Function(_MarkNotGoing value)? markNotGoing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvents value)? loadEvents,
    TResult Function(_AddEvent value)? addEvent,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_UpdateEvent value)? updateEvent,
    TResult Function(_MarkGoing value)? markGoing,
    TResult Function(_MarkNotGoing value)? markNotGoing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsEventCopyWith<$Res> {
  factory $EventsEventCopyWith(
          EventsEvent value, $Res Function(EventsEvent) then) =
      _$EventsEventCopyWithImpl<$Res, EventsEvent>;
}

/// @nodoc
class _$EventsEventCopyWithImpl<$Res, $Val extends EventsEvent>
    implements $EventsEventCopyWith<$Res> {
  _$EventsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadEventsImplCopyWith<$Res> {
  factory _$$LoadEventsImplCopyWith(
          _$LoadEventsImpl value, $Res Function(_$LoadEventsImpl) then) =
      __$$LoadEventsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadEventsImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$LoadEventsImpl>
    implements _$$LoadEventsImplCopyWith<$Res> {
  __$$LoadEventsImplCopyWithImpl(
      _$LoadEventsImpl _value, $Res Function(_$LoadEventsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadEventsImpl implements _LoadEvents {
  const _$LoadEventsImpl();

  @override
  String toString() {
    return 'EventsEvent.loadEvents()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadEventsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadEvents,
    required TResult Function(Event event) addEvent,
    required TResult Function(Event event) deleteEvent,
    required TResult Function(Event event) updateEvent,
    required TResult Function(Event event) markGoing,
    required TResult Function(Event event) markNotGoing,
  }) {
    return loadEvents();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadEvents,
    TResult? Function(Event event)? addEvent,
    TResult? Function(Event event)? deleteEvent,
    TResult? Function(Event event)? updateEvent,
    TResult? Function(Event event)? markGoing,
    TResult? Function(Event event)? markNotGoing,
  }) {
    return loadEvents?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadEvents,
    TResult Function(Event event)? addEvent,
    TResult Function(Event event)? deleteEvent,
    TResult Function(Event event)? updateEvent,
    TResult Function(Event event)? markGoing,
    TResult Function(Event event)? markNotGoing,
    required TResult orElse(),
  }) {
    if (loadEvents != null) {
      return loadEvents();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvents value) loadEvents,
    required TResult Function(_AddEvent value) addEvent,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_UpdateEvent value) updateEvent,
    required TResult Function(_MarkGoing value) markGoing,
    required TResult Function(_MarkNotGoing value) markNotGoing,
  }) {
    return loadEvents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvents value)? loadEvents,
    TResult? Function(_AddEvent value)? addEvent,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_UpdateEvent value)? updateEvent,
    TResult? Function(_MarkGoing value)? markGoing,
    TResult? Function(_MarkNotGoing value)? markNotGoing,
  }) {
    return loadEvents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvents value)? loadEvents,
    TResult Function(_AddEvent value)? addEvent,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_UpdateEvent value)? updateEvent,
    TResult Function(_MarkGoing value)? markGoing,
    TResult Function(_MarkNotGoing value)? markNotGoing,
    required TResult orElse(),
  }) {
    if (loadEvents != null) {
      return loadEvents(this);
    }
    return orElse();
  }
}

abstract class _LoadEvents implements EventsEvent {
  const factory _LoadEvents() = _$LoadEventsImpl;
}

/// @nodoc
abstract class _$$AddEventImplCopyWith<$Res> {
  factory _$$AddEventImplCopyWith(
          _$AddEventImpl value, $Res Function(_$AddEventImpl) then) =
      __$$AddEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Event event});

  $EventCopyWith<$Res> get event;
}

/// @nodoc
class __$$AddEventImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$AddEventImpl>
    implements _$$AddEventImplCopyWith<$Res> {
  __$$AddEventImplCopyWithImpl(
      _$AddEventImpl _value, $Res Function(_$AddEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$AddEventImpl(
      null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EventCopyWith<$Res> get event {
    return $EventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc

class _$AddEventImpl implements _AddEvent {
  const _$AddEventImpl(this.event);

  @override
  final Event event;

  @override
  String toString() {
    return 'EventsEvent.addEvent(event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddEventImpl &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddEventImplCopyWith<_$AddEventImpl> get copyWith =>
      __$$AddEventImplCopyWithImpl<_$AddEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadEvents,
    required TResult Function(Event event) addEvent,
    required TResult Function(Event event) deleteEvent,
    required TResult Function(Event event) updateEvent,
    required TResult Function(Event event) markGoing,
    required TResult Function(Event event) markNotGoing,
  }) {
    return addEvent(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadEvents,
    TResult? Function(Event event)? addEvent,
    TResult? Function(Event event)? deleteEvent,
    TResult? Function(Event event)? updateEvent,
    TResult? Function(Event event)? markGoing,
    TResult? Function(Event event)? markNotGoing,
  }) {
    return addEvent?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadEvents,
    TResult Function(Event event)? addEvent,
    TResult Function(Event event)? deleteEvent,
    TResult Function(Event event)? updateEvent,
    TResult Function(Event event)? markGoing,
    TResult Function(Event event)? markNotGoing,
    required TResult orElse(),
  }) {
    if (addEvent != null) {
      return addEvent(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvents value) loadEvents,
    required TResult Function(_AddEvent value) addEvent,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_UpdateEvent value) updateEvent,
    required TResult Function(_MarkGoing value) markGoing,
    required TResult Function(_MarkNotGoing value) markNotGoing,
  }) {
    return addEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvents value)? loadEvents,
    TResult? Function(_AddEvent value)? addEvent,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_UpdateEvent value)? updateEvent,
    TResult? Function(_MarkGoing value)? markGoing,
    TResult? Function(_MarkNotGoing value)? markNotGoing,
  }) {
    return addEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvents value)? loadEvents,
    TResult Function(_AddEvent value)? addEvent,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_UpdateEvent value)? updateEvent,
    TResult Function(_MarkGoing value)? markGoing,
    TResult Function(_MarkNotGoing value)? markNotGoing,
    required TResult orElse(),
  }) {
    if (addEvent != null) {
      return addEvent(this);
    }
    return orElse();
  }
}

abstract class _AddEvent implements EventsEvent {
  const factory _AddEvent(final Event event) = _$AddEventImpl;

  Event get event;
  @JsonKey(ignore: true)
  _$$AddEventImplCopyWith<_$AddEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteEventImplCopyWith<$Res> {
  factory _$$DeleteEventImplCopyWith(
          _$DeleteEventImpl value, $Res Function(_$DeleteEventImpl) then) =
      __$$DeleteEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Event event});

  $EventCopyWith<$Res> get event;
}

/// @nodoc
class __$$DeleteEventImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$DeleteEventImpl>
    implements _$$DeleteEventImplCopyWith<$Res> {
  __$$DeleteEventImplCopyWithImpl(
      _$DeleteEventImpl _value, $Res Function(_$DeleteEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$DeleteEventImpl(
      null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EventCopyWith<$Res> get event {
    return $EventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc

class _$DeleteEventImpl implements _DeleteEvent {
  const _$DeleteEventImpl(this.event);

  @override
  final Event event;

  @override
  String toString() {
    return 'EventsEvent.deleteEvent(event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteEventImpl &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteEventImplCopyWith<_$DeleteEventImpl> get copyWith =>
      __$$DeleteEventImplCopyWithImpl<_$DeleteEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadEvents,
    required TResult Function(Event event) addEvent,
    required TResult Function(Event event) deleteEvent,
    required TResult Function(Event event) updateEvent,
    required TResult Function(Event event) markGoing,
    required TResult Function(Event event) markNotGoing,
  }) {
    return deleteEvent(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadEvents,
    TResult? Function(Event event)? addEvent,
    TResult? Function(Event event)? deleteEvent,
    TResult? Function(Event event)? updateEvent,
    TResult? Function(Event event)? markGoing,
    TResult? Function(Event event)? markNotGoing,
  }) {
    return deleteEvent?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadEvents,
    TResult Function(Event event)? addEvent,
    TResult Function(Event event)? deleteEvent,
    TResult Function(Event event)? updateEvent,
    TResult Function(Event event)? markGoing,
    TResult Function(Event event)? markNotGoing,
    required TResult orElse(),
  }) {
    if (deleteEvent != null) {
      return deleteEvent(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvents value) loadEvents,
    required TResult Function(_AddEvent value) addEvent,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_UpdateEvent value) updateEvent,
    required TResult Function(_MarkGoing value) markGoing,
    required TResult Function(_MarkNotGoing value) markNotGoing,
  }) {
    return deleteEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvents value)? loadEvents,
    TResult? Function(_AddEvent value)? addEvent,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_UpdateEvent value)? updateEvent,
    TResult? Function(_MarkGoing value)? markGoing,
    TResult? Function(_MarkNotGoing value)? markNotGoing,
  }) {
    return deleteEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvents value)? loadEvents,
    TResult Function(_AddEvent value)? addEvent,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_UpdateEvent value)? updateEvent,
    TResult Function(_MarkGoing value)? markGoing,
    TResult Function(_MarkNotGoing value)? markNotGoing,
    required TResult orElse(),
  }) {
    if (deleteEvent != null) {
      return deleteEvent(this);
    }
    return orElse();
  }
}

abstract class _DeleteEvent implements EventsEvent {
  const factory _DeleteEvent(final Event event) = _$DeleteEventImpl;

  Event get event;
  @JsonKey(ignore: true)
  _$$DeleteEventImplCopyWith<_$DeleteEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateEventImplCopyWith<$Res> {
  factory _$$UpdateEventImplCopyWith(
          _$UpdateEventImpl value, $Res Function(_$UpdateEventImpl) then) =
      __$$UpdateEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Event event});

  $EventCopyWith<$Res> get event;
}

/// @nodoc
class __$$UpdateEventImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$UpdateEventImpl>
    implements _$$UpdateEventImplCopyWith<$Res> {
  __$$UpdateEventImplCopyWithImpl(
      _$UpdateEventImpl _value, $Res Function(_$UpdateEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$UpdateEventImpl(
      null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EventCopyWith<$Res> get event {
    return $EventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc

class _$UpdateEventImpl implements _UpdateEvent {
  const _$UpdateEventImpl(this.event);

  @override
  final Event event;

  @override
  String toString() {
    return 'EventsEvent.updateEvent(event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateEventImpl &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateEventImplCopyWith<_$UpdateEventImpl> get copyWith =>
      __$$UpdateEventImplCopyWithImpl<_$UpdateEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadEvents,
    required TResult Function(Event event) addEvent,
    required TResult Function(Event event) deleteEvent,
    required TResult Function(Event event) updateEvent,
    required TResult Function(Event event) markGoing,
    required TResult Function(Event event) markNotGoing,
  }) {
    return updateEvent(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadEvents,
    TResult? Function(Event event)? addEvent,
    TResult? Function(Event event)? deleteEvent,
    TResult? Function(Event event)? updateEvent,
    TResult? Function(Event event)? markGoing,
    TResult? Function(Event event)? markNotGoing,
  }) {
    return updateEvent?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadEvents,
    TResult Function(Event event)? addEvent,
    TResult Function(Event event)? deleteEvent,
    TResult Function(Event event)? updateEvent,
    TResult Function(Event event)? markGoing,
    TResult Function(Event event)? markNotGoing,
    required TResult orElse(),
  }) {
    if (updateEvent != null) {
      return updateEvent(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvents value) loadEvents,
    required TResult Function(_AddEvent value) addEvent,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_UpdateEvent value) updateEvent,
    required TResult Function(_MarkGoing value) markGoing,
    required TResult Function(_MarkNotGoing value) markNotGoing,
  }) {
    return updateEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvents value)? loadEvents,
    TResult? Function(_AddEvent value)? addEvent,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_UpdateEvent value)? updateEvent,
    TResult? Function(_MarkGoing value)? markGoing,
    TResult? Function(_MarkNotGoing value)? markNotGoing,
  }) {
    return updateEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvents value)? loadEvents,
    TResult Function(_AddEvent value)? addEvent,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_UpdateEvent value)? updateEvent,
    TResult Function(_MarkGoing value)? markGoing,
    TResult Function(_MarkNotGoing value)? markNotGoing,
    required TResult orElse(),
  }) {
    if (updateEvent != null) {
      return updateEvent(this);
    }
    return orElse();
  }
}

abstract class _UpdateEvent implements EventsEvent {
  const factory _UpdateEvent(final Event event) = _$UpdateEventImpl;

  Event get event;
  @JsonKey(ignore: true)
  _$$UpdateEventImplCopyWith<_$UpdateEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkGoingImplCopyWith<$Res> {
  factory _$$MarkGoingImplCopyWith(
          _$MarkGoingImpl value, $Res Function(_$MarkGoingImpl) then) =
      __$$MarkGoingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Event event});

  $EventCopyWith<$Res> get event;
}

/// @nodoc
class __$$MarkGoingImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$MarkGoingImpl>
    implements _$$MarkGoingImplCopyWith<$Res> {
  __$$MarkGoingImplCopyWithImpl(
      _$MarkGoingImpl _value, $Res Function(_$MarkGoingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$MarkGoingImpl(
      null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EventCopyWith<$Res> get event {
    return $EventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc

class _$MarkGoingImpl implements _MarkGoing {
  const _$MarkGoingImpl(this.event);

  @override
  final Event event;

  @override
  String toString() {
    return 'EventsEvent.markGoing(event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkGoingImpl &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkGoingImplCopyWith<_$MarkGoingImpl> get copyWith =>
      __$$MarkGoingImplCopyWithImpl<_$MarkGoingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadEvents,
    required TResult Function(Event event) addEvent,
    required TResult Function(Event event) deleteEvent,
    required TResult Function(Event event) updateEvent,
    required TResult Function(Event event) markGoing,
    required TResult Function(Event event) markNotGoing,
  }) {
    return markGoing(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadEvents,
    TResult? Function(Event event)? addEvent,
    TResult? Function(Event event)? deleteEvent,
    TResult? Function(Event event)? updateEvent,
    TResult? Function(Event event)? markGoing,
    TResult? Function(Event event)? markNotGoing,
  }) {
    return markGoing?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadEvents,
    TResult Function(Event event)? addEvent,
    TResult Function(Event event)? deleteEvent,
    TResult Function(Event event)? updateEvent,
    TResult Function(Event event)? markGoing,
    TResult Function(Event event)? markNotGoing,
    required TResult orElse(),
  }) {
    if (markGoing != null) {
      return markGoing(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvents value) loadEvents,
    required TResult Function(_AddEvent value) addEvent,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_UpdateEvent value) updateEvent,
    required TResult Function(_MarkGoing value) markGoing,
    required TResult Function(_MarkNotGoing value) markNotGoing,
  }) {
    return markGoing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvents value)? loadEvents,
    TResult? Function(_AddEvent value)? addEvent,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_UpdateEvent value)? updateEvent,
    TResult? Function(_MarkGoing value)? markGoing,
    TResult? Function(_MarkNotGoing value)? markNotGoing,
  }) {
    return markGoing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvents value)? loadEvents,
    TResult Function(_AddEvent value)? addEvent,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_UpdateEvent value)? updateEvent,
    TResult Function(_MarkGoing value)? markGoing,
    TResult Function(_MarkNotGoing value)? markNotGoing,
    required TResult orElse(),
  }) {
    if (markGoing != null) {
      return markGoing(this);
    }
    return orElse();
  }
}

abstract class _MarkGoing implements EventsEvent {
  const factory _MarkGoing(final Event event) = _$MarkGoingImpl;

  Event get event;
  @JsonKey(ignore: true)
  _$$MarkGoingImplCopyWith<_$MarkGoingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkNotGoingImplCopyWith<$Res> {
  factory _$$MarkNotGoingImplCopyWith(
          _$MarkNotGoingImpl value, $Res Function(_$MarkNotGoingImpl) then) =
      __$$MarkNotGoingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Event event});

  $EventCopyWith<$Res> get event;
}

/// @nodoc
class __$$MarkNotGoingImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$MarkNotGoingImpl>
    implements _$$MarkNotGoingImplCopyWith<$Res> {
  __$$MarkNotGoingImplCopyWithImpl(
      _$MarkNotGoingImpl _value, $Res Function(_$MarkNotGoingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$MarkNotGoingImpl(
      null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EventCopyWith<$Res> get event {
    return $EventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc

class _$MarkNotGoingImpl implements _MarkNotGoing {
  const _$MarkNotGoingImpl(this.event);

  @override
  final Event event;

  @override
  String toString() {
    return 'EventsEvent.markNotGoing(event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkNotGoingImpl &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkNotGoingImplCopyWith<_$MarkNotGoingImpl> get copyWith =>
      __$$MarkNotGoingImplCopyWithImpl<_$MarkNotGoingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadEvents,
    required TResult Function(Event event) addEvent,
    required TResult Function(Event event) deleteEvent,
    required TResult Function(Event event) updateEvent,
    required TResult Function(Event event) markGoing,
    required TResult Function(Event event) markNotGoing,
  }) {
    return markNotGoing(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadEvents,
    TResult? Function(Event event)? addEvent,
    TResult? Function(Event event)? deleteEvent,
    TResult? Function(Event event)? updateEvent,
    TResult? Function(Event event)? markGoing,
    TResult? Function(Event event)? markNotGoing,
  }) {
    return markNotGoing?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadEvents,
    TResult Function(Event event)? addEvent,
    TResult Function(Event event)? deleteEvent,
    TResult Function(Event event)? updateEvent,
    TResult Function(Event event)? markGoing,
    TResult Function(Event event)? markNotGoing,
    required TResult orElse(),
  }) {
    if (markNotGoing != null) {
      return markNotGoing(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvents value) loadEvents,
    required TResult Function(_AddEvent value) addEvent,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_UpdateEvent value) updateEvent,
    required TResult Function(_MarkGoing value) markGoing,
    required TResult Function(_MarkNotGoing value) markNotGoing,
  }) {
    return markNotGoing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvents value)? loadEvents,
    TResult? Function(_AddEvent value)? addEvent,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_UpdateEvent value)? updateEvent,
    TResult? Function(_MarkGoing value)? markGoing,
    TResult? Function(_MarkNotGoing value)? markNotGoing,
  }) {
    return markNotGoing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvents value)? loadEvents,
    TResult Function(_AddEvent value)? addEvent,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_UpdateEvent value)? updateEvent,
    TResult Function(_MarkGoing value)? markGoing,
    TResult Function(_MarkNotGoing value)? markNotGoing,
    required TResult orElse(),
  }) {
    if (markNotGoing != null) {
      return markNotGoing(this);
    }
    return orElse();
  }
}

abstract class _MarkNotGoing implements EventsEvent {
  const factory _MarkNotGoing(final Event event) = _$MarkNotGoingImpl;

  Event get event;
  @JsonKey(ignore: true)
  _$$MarkNotGoingImplCopyWith<_$MarkNotGoingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EventsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Event> events) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Event> events)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Event> events)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsStateCopyWith<$Res> {
  factory $EventsStateCopyWith(
          EventsState value, $Res Function(EventsState) then) =
      _$EventsStateCopyWithImpl<$Res, EventsState>;
}

/// @nodoc
class _$EventsStateCopyWithImpl<$Res, $Val extends EventsState>
    implements $EventsStateCopyWith<$Res> {
  _$EventsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$EventsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'EventsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Event> events) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Event> events)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Event> events)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EventsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$EventsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'EventsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Event> events) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Event> events)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Event> events)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements EventsState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Event> events});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$EventsStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_$LoadedImpl(
      null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Event>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<Event> events) : _events = events;

  final List<Event> _events;
  @override
  List<Event> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString() {
    return 'EventsState.loaded(events: $events)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_events));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Event> events) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(events);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Event> events)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(events);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Event> events)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(events);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements EventsState {
  const factory _Loaded(final List<Event> events) = _$LoadedImpl;

  List<Event> get events;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$EventsStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'EventsState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Event> events) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Event> events)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Event> events)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements EventsState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
