import 'package:flutter_bloc/flutter_bloc.dart';

class UserNameInputCubit extends Cubit<String> {
  UserNameInputCubit() : super('');
  void userNameChanged(String userName) => emit(userName);
}
