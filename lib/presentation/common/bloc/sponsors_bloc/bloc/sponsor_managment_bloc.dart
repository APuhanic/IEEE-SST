import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ieee_sst/data/models/sponsor_model/sponsor_model.dart';
import 'package:ieee_sst/data/repositories/supabase_sponsor_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

part 'sponsor_managment_event.dart';
part 'sponsor_managment_state.dart';
part 'sponsor_managment_bloc.freezed.dart';

@injectable
class SponsorManagmentBloc
    extends Bloc<SponsorManagmentEvent, SponsorManagmentState> {
  SponsorManagmentBloc(this.supabaseSponsorRepository)
      : super(const _Initial()) {
    on<_LoadSponsors>(_onFetchSponsors);
    on<_DeleteSponsor>(_onDeleteSponsor);
  }

  final SupabaseSponsorRepository supabaseSponsorRepository;

  Future<FutureOr<void>> _onFetchSponsors(
      _LoadSponsors event, Emitter<SponsorManagmentState> emit) async {
    emit(const _Loading());
    try {
      final sponsors = await supabaseSponsorRepository.fetchSponsors();
      Logger().w(sponsors);
      emit(_Loaded(sponsors));
    } catch (e) {
      emit(_Error(e.toString()));
    }
  }

  FutureOr<void> _onDeleteSponsor(
      _DeleteSponsor event, Emitter<SponsorManagmentState> emit) {
    try {
      supabaseSponsorRepository.deleteSponsor(event.sponsor);
      if (state is _Loaded) {
        final sponsors = (state as _Loaded).sponsors;
        final updatedSponsors =
            sponsors.where((e) => e.id != event.sponsor.id).toList();
        emit(_Loaded(updatedSponsors));
      }
    } catch (e) {
      emit(_Error(e.toString()));
    }
  }
}