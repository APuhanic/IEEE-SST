import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ieee_sst/data/repositories/supabase_event_repository.dart';
import 'package:ieee_sst/domain/models/event.dart';
import 'package:injectable/injectable.dart';

part 'create_event_event.dart';
part 'create_event_state.dart';
part 'create_event_bloc.freezed.dart';

@injectable
class CreateEventBloc extends Bloc<CreateEventEvent, CreateEventState> {
  CreateEventBloc(this._supabaseEventRepository)
      : super(const _CreateEventState()) {
    on<_EventNameChanged>(_onEventNameChanged);
    on<_EventDescriptionChanged>(_onEventDescriptionChanged);
    on<_Submitted>(_onSubmitted);
    on<_EventDateChanged>(_onEventDateChanged);
    on<_EventTimeChanged>(_onEventTimeChanged);
    on<_EventLocationChanged>(_onEventLocationChanged);
    on<_EventSpeakerChanged>(_onEventSpeakerChanged);
  }
  final SupabaseEventRepository _supabaseEventRepository;

  _onEventNameChanged(
          _EventNameChanged event, Emitter<CreateEventState> emit) =>
      emit(state.copyWith(eventName: event.eventName));

  _onEventDescriptionChanged(
          _EventDescriptionChanged event, Emitter<CreateEventState> emit) =>
      emit(state.copyWith(eventDescription: event.eventDescription));

  _onEventDateChanged(
          _EventDateChanged event, Emitter<CreateEventState> emit) =>
      emit(state.copyWith(eventDate: event.eventDate));

  _onEventTimeChanged(_EventTimeChanged event, Emitter<CreateEventState> emit) {
    emit(state.copyWith(eventTime: event.eventTime));
  }

  _onEventSpeakerChanged(
          _EventSpeakerChanged event, Emitter<CreateEventState> emit) =>
      emit(state.copyWith(eventSpeaker: event.eventSpeaker));

  _onEventLocationChanged(
          _EventLocationChanged event, Emitter<CreateEventState> emit) =>
      emit(state.copyWith(eventLocation: event.eventLocation));

  Future<void> _onSubmitted(
    _Submitted event,
    Emitter<CreateEventState> emit,
  ) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      await _supabaseEventRepository.addEvent(
        state.eventName,
        state.eventDescription,
        state.eventLocation,
        state.eventSpeaker,
        state.eventDate!,
        state.eventTime!.toString(),
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
}
