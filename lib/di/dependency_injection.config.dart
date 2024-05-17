// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i4;
import 'package:supabase_flutter/supabase_flutter.dart' as _i3;

import '../data/providers/global_bloc_observer.dart' as _i5;
import '../data/repositories/supabase_auth_repository.dart' as _i7;
import '../domain/module/app_module.dart' as _i9;
import '../domain/repositories/auth/auth_repository.dart' as _i6;
import '../presentation/register/bloc/registration_bloc.dart' as _i8;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.lazySingleton<_i3.SupabaseClient>(() => appModule.supabase);
    gh.lazySingleton<_i4.Logger>(() => appModule.logger);
    gh.singleton<_i5.GlobalBlocObserver>(
        () => _i5.GlobalBlocObserver(gh<_i4.Logger>()));
    gh.lazySingleton<_i6.AuthenticationRepository>(
        () => _i7.SupabaseAuthenticationRepository(gh<_i3.SupabaseClient>()));
    gh.factory<_i8.RegistrationBloc>(
        () => _i8.RegistrationBloc(gh<_i6.AuthenticationRepository>()));
    return this;
  }
}

class _$AppModule extends _i9.AppModule {}
