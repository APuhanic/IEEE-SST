import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ieee_sst/data/models/profile_model/profile_model.dart';
import 'package:ieee_sst/data/repositories/profile_repository.dart';
import 'package:injectable/injectable.dart';

part 'attendees_event.dart';
part 'attendees_state.dart';
part 'attendees_bloc.freezed.dart';

@injectable
class AttendeesBloc extends Bloc<AttendeesEvent, AttendeesState> {
  AttendeesBloc(this.supabaseProfileRepository) : super(const _Initial()) {
    on<_LoadAttendees>(_onLoadAttendees);
  }

  final ProfileRepository supabaseProfileRepository;

  Future<void> _onLoadAttendees(
      _LoadAttendees event, Emitter<AttendeesState> emit) async {
    emit(const AttendeesState.loading());
    try {
      final attendees = await supabaseProfileRepository.getProfiles();
      emit(AttendeesState.loaded(attendees));
    } catch (e) {
      emit(AttendeesState.error(e.toString()));
    }
  }
}
