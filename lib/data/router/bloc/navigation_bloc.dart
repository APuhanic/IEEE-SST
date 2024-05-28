import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';
part 'navigation_bloc.freezed.dart';

@injectable
class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(const NavigationState(route: '/')) {
    on<NavigationEvent>(_onNavigateTo);
  }

  _onNavigateTo(NavigationEvent event, Emitter<NavigationState> emit) =>
      emit(NavigationState(route: event.route));
}
