import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ieee_sst/data/repositories/supabase_announcement_repository.dart';
import 'package:injectable/injectable.dart';

part 'announcement_form_event.dart';
part 'announcement_form_state.dart';
part 'announcement_form_bloc.freezed.dart';

@injectable
class AnnouncementFormBloc
    extends Bloc<AnnouncementFormEvent, AnnouncementFormState> {
  AnnouncementFormBloc(this._supabaseAnnouncementRepository)
      : super(const _AnnouncementFormState()) {
    on<_CreateAnnouncement>(_onCreateAnnouncement);
    on<_TitleChanged>(_onTitleChanged);
    on<_DescriptionChanged>(_onDescriptionChanged);
  }

  final SupabaseAnnouncementRepository _supabaseAnnouncementRepository;

  Future<FutureOr<void>> _onCreateAnnouncement(
      _CreateAnnouncement event, Emitter<AnnouncementFormState> emit) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      await _supabaseAnnouncementRepository.postAnnouncement(
        state.title,
        state.description,
      );
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } catch (e) {
      emit(state.copyWith(
          status: FormzSubmissionStatus.failure, errorMessage: e.toString()));
    }
  }

  FutureOr<void> _onTitleChanged(
      _TitleChanged event, Emitter<AnnouncementFormState> emit) {
    emit(state.copyWith(title: event.title));
  }

  FutureOr<void> _onDescriptionChanged(
      _DescriptionChanged event, Emitter<AnnouncementFormState> emit) {
    emit(state.copyWith(description: event.description));
  }
}