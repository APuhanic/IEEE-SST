import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ieee_sst/data/models/input_models/filter_chip_types.dart';
import 'package:ieee_sst/data/repositories/event_repository.dart';
import 'package:ieee_sst/domain/models/event.dart';
import 'package:injectable/injectable.dart';

part 'events_event.dart';
part 'events_state.dart';
part 'events_bloc.freezed.dart';

@injectable
class EventsManagmentBloc extends Bloc<EventsEvent, EventsState> {
  EventsManagmentBloc(this.eventRepository) : super(const _Initial()) {
    on<_LoadEvents>(_onLoadEvents);
    on<_DeleteEvent>(_onDeleteEvent);
    on<_MarkGoing>(_onMarkGoing);
    on<_MarkNotGoing>(_onMarkNotGoing);
    on<_FilterEvents>(_onFilterEvents);
  }

  final EventRepository eventRepository;

  Future<void> _onLoadEvents(
      _LoadEvents event, Emitter<EventsState> emit) async {
    emit(const _Loading());
    try {
      final events = await eventRepository.getAllEvents();
      emit(_Loaded(sortEvents(events)));
    } catch (e) {
      emit(_Error(e.toString()));
    }
  }

  _onDeleteEvent(_DeleteEvent event, Emitter<EventsState> emit) {
    try {
      eventRepository.deleteEvent(event.event.id!);
      if (state is _Loaded) {
        final events = (state as _Loaded).events;
        final updatedEvents =
            events.where((e) => e.id != event.event.id).toList();
        emit(_Loaded(sortEvents(updatedEvents)));
      }
    } catch (e) {
      emit(_Error(e.toString()));
    }
  }

  Future<void> _onMarkGoing(_MarkGoing event, Emitter<EventsState> emit) async {
    await eventRepository.markGoing(event.event);
    if (state is _Loaded) {
      final events = (state as _Loaded).events;
      final updatedEvents = events.map((e) {
        if (e.id == event.event.id) {
          return e.copyWith(isGoing: true, attendeeCount: e.attendeeCount + 1);
        }
        return e;
      }).toList();
      emit(_Loaded(sortEvents(updatedEvents)));
    }
  }

  Future<void> _onMarkNotGoing(
      _MarkNotGoing event, Emitter<EventsState> emit) async {
    await eventRepository.markNotGoing(event.event);
    if (state is _Loaded) {
      final events = (state as _Loaded).events;
      final updatedEvents = events.map((e) {
        if (e.id == event.event.id) {
          return e.copyWith(isGoing: false, attendeeCount: e.attendeeCount - 1);
        }
        return e;
      }).toList();

      emit(_Loaded(sortEvents(updatedEvents)));
    }
  }

  Future<void> _onFilterEvents(
      _FilterEvents event, Emitter<EventsState> emit) async {
    if (state is! _Loaded) return null;

    List<Event> filteredEvents =
        await eventRepository.getEventsByDateFromCache(event.date);

    filteredEvents = await eventRepository.getEventsByFilterFromCache(
        event.filter, filteredEvents);
    emit(_Loaded(sortEvents(filteredEvents)));
  }

  //Sort by date and then by start time for eachdate
  List<Event> sortEvents(List<Event> events) {
    events.sort((a, b) {
      if (a.date!.isBefore(b.date!)) {
        return -1;
      } else if (a.date!.isAfter(b.date!)) {
        return 1;
      } else {
        return a.startTime!.compareTo(b.startTime!);
      }
    });
    return events;
  }
}
