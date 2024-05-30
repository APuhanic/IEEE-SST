import 'package:flutter_bloc/flutter_bloc.dart';

class IsGoingCubit extends Cubit<bool> {
  IsGoingCubit() : super(false);

  toggleIsGoing() => emit(!state);
}
