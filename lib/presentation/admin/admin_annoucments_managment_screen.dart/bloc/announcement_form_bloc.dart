import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'announcement_form_event.dart';
part 'announcement_form_state.dart';
part 'announcement_form_bloc.freezed.dart';

@injectable
class AnnouncementFormBloc
    extends Bloc<AnnouncementFormEvent, AnnouncementFormState> {
  AnnouncementFormBloc() : super(const _AnnouncementFormState()) {
    on<AnnouncementFormEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
