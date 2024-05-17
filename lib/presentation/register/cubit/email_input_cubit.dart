import 'package:flutter_bloc/flutter_bloc.dart';

class EmailInputCubit extends Cubit<String> {
  EmailInputCubit() : super('');
  void emailChanged(String email) => emit(email);
}
