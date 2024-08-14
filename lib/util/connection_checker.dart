import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

@singleton
class ConnectionChecker {
  final InternetConnection _internetConnectionChecker;

  ConnectionChecker(this._internetConnectionChecker);

  Future<bool> get hasConnection async =>
      await _internetConnectionChecker.hasInternetAccess;
}
