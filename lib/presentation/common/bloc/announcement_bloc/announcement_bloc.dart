import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ieee_sst/data/models/announcement_model/announcement_model.dart';
import 'package:ieee_sst/data/repositories/announcement_repository.dart';
import 'package:injectable/injectable.dart';

part 'announcement_event.dart';
part 'announcement_state.dart';
part 'announcement_bloc.freezed.dart';

@injectable
class AnnouncementBloc extends Bloc<AnnouncementEvent, AnnouncementState> {
  AnnouncementBloc(this.announcementRepository) : super(const _Initial()) {
    on<_LoadAnnouncements>(_onLoadAnnouncements);
    on<_DeleteAnnouncement>(_onDeleteAnnouncement);
  }

  final AnnouncementRepository announcementRepository;

  Future<void> _onLoadAnnouncements(
      _LoadAnnouncements event, Emitter<AnnouncementState> emit) async {
    emit(const _Loading());
    try {
      final announcementsResponse =
          await announcementRepository.getAllAnnouncements();
      emit(_Loaded(announcementsResponse));
    } catch (e) {
      emit(_Error(e.toString()));
    }
  }

  void _onDeleteAnnouncement(
      _DeleteAnnouncement event, Emitter<AnnouncementState> emit) {
    try {
      announcementRepository.deleteAnnouncement(event.announcementId);
      if (state is _Loaded) {
        final announcements = (state as _Loaded).announcements;
        final updatedAnnouncements =
            announcements.where((e) => e.id != event.announcementId).toList();
        emit(_Loaded(updatedAnnouncements));
      }
    } catch (e) {
      emit(_Error(e.toString()));
    }
  }
}
