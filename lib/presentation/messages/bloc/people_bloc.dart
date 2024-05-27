import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ieee_sst/data/models/person_model/person_model.dart';

part 'people_event.dart';
part 'people_state.dart';
part 'people_bloc.freezed.dart';

class PeopleBloc extends Bloc<PeopleEvent, PeopleState> {
  PeopleBloc() : super(const _Initial()) {
    on<PeopleEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
