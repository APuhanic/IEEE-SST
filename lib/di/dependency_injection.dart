import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:ieee_sst/di/dependency_injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  asExtension: true,
  initializerName: 'init',
  preferRelativeImports: true,
)
void configureDependencies(String enviroment) =>
    getIt.init(environment: enviroment);
