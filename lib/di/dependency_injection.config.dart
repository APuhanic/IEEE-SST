// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:supabase_flutter/supabase_flutter.dart' as _i3;

import '../data/repositories/supabase_auth_repository.dart' as _i5;
import '../domain/module/app_module.dart' as _i6;
import '../domain/repositories/auth/auth_repository.dart' as _i4;

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
    gh.factory<_i3.SupabaseClient>(() => appModule.supabase);
    gh.lazySingleton<_i4.AuthenticationRepository>(
        () => _i5.SupabaseAuthenticationRepository(gh<_i3.SupabaseClient>()));
    return this;
  }
}

class _$AppModule extends _i6.AppModule {}
