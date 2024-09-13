import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ieee_sst/data/models/announcement_model/announcement_model.dart';
import 'package:ieee_sst/data/repositories/announcement_repository.dart';
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
    on<_SetInitialValues>(_onSetInitialValues);
    on<_UpdateAnnouncement>(_onUpdateAnnouncement);
    on<_ResetFrom>(_onResetForm);
  }

  final AnnouncementRepository _supabaseAnnouncementRepository;

  Future<void> _onCreateAnnouncement(
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

  FutureOr<void> _onSetInitialValues(
      _SetInitialValues event, Emitter<AnnouncementFormState> emit) {
    emit(
      state.copyWith(
          title: event.announcement.title,
          description: event.announcement.description),
    );
  }

  FutureOr<void> _onUpdateAnnouncement(
      _UpdateAnnouncement event, Emitter<AnnouncementFormState> emit) {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      final announcement = Announcement(
          id: state.id,
          title: state.title,
          description: state.description,
          timeposted: state.timeposted,
          fullName: state.fullName);
      _supabaseAnnouncementRepository.updateAnnouncement(announcement);
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } catch (e) {
      emit(state.copyWith(
          status: FormzSubmissionStatus.failure, errorMessage: e.toString()));
    }
  }

  void _onResetForm(_ResetFrom event, Emitter<AnnouncementFormState> emit) {
    emit(state.copyWith(
        title: '',
        description: '',
        status: FormzSubmissionStatus.initial,
        timeposted: '',
        errorMessage: ''));
  }
}
