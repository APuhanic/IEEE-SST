import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserNameInputCubit extends Cubit<String> {
  UserNameInputCubit() : super('');
  void userNameChanged(String userName) => emit(userName);
}
