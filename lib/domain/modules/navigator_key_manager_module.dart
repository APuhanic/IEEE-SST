import 'package:ieee_sst/data/router/navigator_key_manager.dart';
import 'package:injectable/injectable.dart';

@module
abstract class NavigatorKeyManagerModule {
  @lazySingleton
  NavigatorKeyManager get navigatorKeyManager => NavigatorKeyManager();
}
