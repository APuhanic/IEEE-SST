// ignore_for_file: prefer_single_quotes

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ieee_sst/data/repositories/supabase_event_repository.dart';
import 'package:ieee_sst/domain/models/event.dart';
import 'package:injectable/injectable.dart';

part 'event_form_event.dart';
part 'event_form_state.dart';
part 'event_form_bloc.freezed.dart';

// TODO: Replace to navbar folder?
@injectable
class EventFormBloc extends Bloc<EventFormEvent, EventFormState> {
  EventFormBloc(this._supabaseEventRepository)
      : super(const _CreateEventState()) {
    on<_CreateEvent>(_onEventCreate);
    on<_UpdateEvent>(_onUpdateEvent);
    on<_EventNameChanged>(_onEventNameChanged);
    on<_EventDescriptionChanged>(_onEventDescriptionChanged);
    on<_EventTimeChanged>(_onEventTimeChanged);
    on<_EventDateChanged>(_onEventDateChanged);
    on<_EventLocationChanged>(_onEventLocationChanged);
    on<_EventSpeakerChanged>(_onEventSpeakerChanged);
    on<_SetInitialValues>(_onSetInitialValues);
    on<_EventInfoChanged>(_onEventInfoChanged);

    // TODO: Add event info
  }
  final SupabaseEventRepository _supabaseEventRepository;

  _onEventNameChanged(_EventNameChanged event, Emitter<EventFormState> emit) =>
      emit(state.copyWith(name: event.name));

  _onEventDescriptionChanged(
          _EventDescriptionChanged event, Emitter<EventFormState> emit) =>
      emit(state.copyWith(despcription: event.eventDescription));

  /// There are 2 forms, one of DateTime and one of TimeOfDay
  /// This is a workaround to convert TimeOfDay to DateTime because it
  /// is not possible to use TimeOfDay in the form with the copywith method
  _onEventTimeChanged(_EventTimeChanged event, Emitter<EventFormState> emit) {
    try {
      // TODO: Ask user to set a date first?
      if (state.time == null) {
        emit(state.copyWith(time: DateTime.now()));
      }
      final newTime = DateTime(
        state.time!.year,
        state.time!.month,
        state.time!.day,
        event.time!.hour,
        event.time!.minute,
      );
      emit(state.copyWith(time: newTime));
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  _onEventDateChanged(_EventDateChanged event, Emitter<EventFormState> emit) {
    emit(state.copyWith(time: event.time));
  }

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
        state.despcription,
        state.time!,
        state.location,
        state.speaker,
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
        description: state.despcription,
        location: state.location,
        speaker: state.speaker,
        time: state.time,
      );
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

  //TODO: Find a synonim for Event...
  _onSetInitialValues(_SetInitialValues event, Emitter<EventFormState> emit) {
    //TODO: Refactor this
    emit(
      state.copyWith(
        id: event.event.id,
        name: event.event.name,
        despcription: event.event.description,
        location: event.event.location,
        speaker: event.event.speaker,
        time: event.event.time,
        info: event.event.info,
      ),
    );
  }
}
