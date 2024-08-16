// ignore_for_file: prefer_single_quotes

import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ieee_sst/data/repositories/event_repository.dart';
import 'package:ieee_sst/domain/models/event.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

part 'event_form_event.dart';
part 'event_form_state.dart';
part 'event_form_bloc.freezed.dart';

@injectable
class EventFormBloc extends Bloc<EventFormEvent, EventFormState> {
  EventFormBloc(this._supabaseEventRepository)
      : super(const _CreateEventState()) {
    on<_CreateEvent>(_onEventCreate);
    on<_UpdateEvent>(_onUpdateEvent);
    on<_EventNameChanged>(_onEventNameChanged);
    on<_EventDescriptionChanged>(_onEventDescriptionChanged);
    on<_EventDateChanged>(_onEventDateChanged);
    on<_EventStartTimeChanged>(_onEventStartTimeChanged);
    on<_EventEndTimeChanged>(_onEventEndTimeChanged);
    on<_EventLocationChanged>(_onEventLocationChanged);
    on<_EventSpeakerChanged>(_onEventSpeakerChanged);
    on<_SetInitialValues>(_onSetInitialValues);
    on<_EventInfoChanged>(_onEventInfoChanged);
  }
  final EventRepository _supabaseEventRepository;

  void _onEventNameChanged(
      _EventNameChanged event, Emitter<EventFormState> emit) {
    emit(state.copyWith(name: event.name));
  }

  _onEventDescriptionChanged(
          _EventDescriptionChanged event, Emitter<EventFormState> emit) =>
      emit(state.copyWith(description: event.eventDescription));

  _onEventDateChanged(_EventDateChanged event, Emitter<EventFormState> emit) =>
      emit(state.copyWith(date: event.date));

  _onEventStartTimeChanged(
          _EventStartTimeChanged event, Emitter<EventFormState> emit) =>
      emit(state.copyWith(startTime: event.startTime));

  _onEventEndTimeChanged(
          _EventEndTimeChanged event, Emitter<EventFormState> emit) =>
      emit(state.copyWith(endTime: event.endTime));

  _onEventSpeakerChanged(
          _EventSpeakerChanged event, Emitter<EventFormState> emit) =>
      emit(state.copyWith(speaker: event.speaker));

  _onEventLocationChanged(
          _EventLocationChanged event, Emitter<EventFormState> emit) =>
      emit(state.copyWith(location: event.location));

  _onEventInfoChanged(_EventInfoChanged event, Emitter<EventFormState> emit) {
    emit(state.copyWith(info: event.info));
  }

  Future<void> _onEventCreate(
      _CreateEvent event, Emitter<EventFormState> emit) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      //TODO: Refactor this

      await _supabaseEventRepository.addEvent(
        state.name,
        state.description,
        state.startTime!,
        state.endTime!,
        state.location,
        state.speaker,
        state.info ?? '',
        state.date!,
      );
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } catch (e) {
      emit(
        state.copyWith(
          status: FormzSubmissionStatus.failure,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  _onUpdateEvent(_UpdateEvent event, Emitter<EventFormState> emit) {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      final event = Event(
        id: state.id,
        name: state.name,
        description: state.description,
        location: state.location,
        speaker: state.speaker,
        startTime: state.startTime,
        endTime: state.endTime,
        info: state.info,
        date: state.date,
      );
      Logger().w(event);
      _supabaseEventRepository.updateEvent(event);
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } catch (e) {
      emit(
        state.copyWith(
          status: FormzSubmissionStatus.failure,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  _onSetInitialValues(_SetInitialValues event, Emitter<EventFormState> emit) {
    Logger().w(event.event);

    emit(
      state.copyWith(
        id: event.event.id,
        name: event.event.name,
        description: event.event.description,
        location: event.event.location,
        speaker: event.event.speaker,
        startTime: event.event.startTime,
        endTime: event.event.endTime,
        info: event.event.info,
        date: event.event.date,
      ),
    );
  }
}
