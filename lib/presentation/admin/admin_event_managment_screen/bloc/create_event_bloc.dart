import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ieee_sst/data/repositories/supabase_event_repository.dart';
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
  }
  final SupabaseEventRepository _supabaseEventRepository;

  void _onEventNameChanged(
    _EventNameChanged event,
    Emitter<CreateEventState> emit,
  ) {
    final eventName = event.eventName;
    emit(state.copyWith(eventName: eventName));
  }

  void _onEventDescriptionChanged(
    _EventDescriptionChanged event,
    Emitter<CreateEventState> emit,
  ) {
    final eventDescription = event.eventDescription;
    emit(state.copyWith(eventDescription: eventDescription));
  }

  Future<FutureOr<void>> _onSubmitted(
    _Submitted event,
    Emitter<CreateEventState> emit,
  ) async {
    if (state.eventName.isNotEmpty && state.eventDescription.isNotEmpty) {
      emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
      try {
        await _supabaseEventRepository.addEvent(
          state.eventName,
          state.eventDescription,
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
}
