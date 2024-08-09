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
  EventsManagmentBloc(this.supabaseEventRepository) : super(const _Initial()) {
    on<_LoadEvents>(_onLoadEvents);
    on<_DeleteEvent>(_onDeleteEvent);
    on<_MarkGoing>(_onMarkGoing);
    on<_MarkNotGoing>(_onMarkNotGoing);
    on<_FilterEvents>(_onFilterEvents);
  }

  final EventRepository supabaseEventRepository;
  final List<Event> originalEvents = [];
  Future<FutureOr<void>> _onLoadEvents(
      _LoadEvents event, Emitter<EventsState> emit) async {
    emit(const _Loading());
    try {
      final events = await supabaseEventRepository.getAllEvents();
      //TODO: Implement caching instead of this
      originalEvents.clear();
      originalEvents.addAll(events);
      emit(_Loaded(events));
    } catch (e) {
      emit(_Error(e.toString()));
    }
  }

  _onDeleteEvent(_DeleteEvent event, Emitter<EventsState> emit) {
    try {
      supabaseEventRepository.deleteEvent(event.event.id!);
      if (state is _Loaded) {
        final events = (state as _Loaded).events;
        final updatedEvents =
            events.where((e) => e.id != event.event.id).toList();
        emit(_Loaded(updatedEvents));
      }
    } catch (e) {
      emit(_Error(e.toString()));
    }
  }

  Future<FutureOr<void>> _onMarkGoing(
      _MarkGoing event, Emitter<EventsState> emit) async {
    await supabaseEventRepository.markGoing(event.event.id!);
    if (state is _Loaded) {
      final events = (state as _Loaded).events;
      final updatedEvents = events.map((e) {
        if (e.id == event.event.id) {
          return e.copyWith(isGoing: true, attendeeCount: e.attendeeCount + 1);
        }
        return e;
      }).toList();
      emit(_Loaded(updatedEvents));
    }
  }

  Future<FutureOr<void>> _onMarkNotGoing(
      _MarkNotGoing event, Emitter<EventsState> emit) async {
    await supabaseEventRepository.markNotGoing(event.event.id!);
    if (state is _Loaded) {
      final events = (state as _Loaded).events;
      final updatedEvents = events.map((e) {
        if (e.id == event.event.id) {
          return e.copyWith(isGoing: false, attendeeCount: e.attendeeCount - 1);
        }
        return e;
      }).toList();
      emit(_Loaded(updatedEvents));
    }
  }

  FutureOr<void> _onFilterEvents(
      _FilterEvents event, Emitter<EventsState> emit) {
    if (state is _Loaded) {
      if (event.date == null) {
        emit(_Loaded(originalEvents));
      } else {
        final filteredEventsByDate = originalEvents
            .where((e) => e.date!.isAtSameMomentAs(event.date!))
            .toList();

        emit(_Loaded(filteredEventsByDate));
      }
    }
  }
}
