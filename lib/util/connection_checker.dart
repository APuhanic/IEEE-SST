import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

@LazySingleton()
class ConnectionChecker {
  final InternetConnectionChecker _internetConnectionChecker;

  ConnectionChecker(this._internetConnectionChecker);

  Future<bool> get hasConnection async =>
      await _internetConnectionChecker.hasConnection;
}
