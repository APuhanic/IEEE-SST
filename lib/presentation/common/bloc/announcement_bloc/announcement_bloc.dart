import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ieee_sst/data/models/announcement_model/announcement_model.dart';
import 'package:ieee_sst/data/repositories/supabase_announcement_repository.dart';
import 'package:injectable/injectable.dart';

part 'announcement_event.dart';
part 'announcement_state.dart';
part 'announcement_bloc.freezed.dart';

@injectable
class AnnouncementBloc extends Bloc<AnnouncementEvent, AnnouncementState> {
  AnnouncementBloc(this.supabaseAnnouncementRepository)
      : super(const _Initial()) {
    on<_LoadAnnouncements>(_onLoadAnnouncements);
  }

  final SupabaseAnnouncementRepository supabaseAnnouncementRepository;

  Future<FutureOr<void>> _onLoadAnnouncements(
      _LoadAnnouncements event, Emitter<AnnouncementState> emit) async {
    emit(const _Loading());
    try {
      final announcementsResponse =
          await supabaseAnnouncementRepository.getAllAnnouncements();
      emit(_Loaded(announcementsResponse));
    } catch (e) {
      emit(_Error(e.toString()));
    }
  }
}
