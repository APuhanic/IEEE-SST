// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i5;
import 'package:supabase_flutter/supabase_flutter.dart' as _i4;

import '../data/providers/global_bloc_observer.dart' as _i8;
import '../data/repositories/supabase_auth_repository.dart' as _i13;
import '../data/repositories/supabase_event_repository.dart' as _i20;
import '../data/repositories/supabase_profile_repository.dart' as _i11;
import '../data/router/navigator_key_manager.dart' as _i6;
import '../data/router/router.dart' as _i16;
import '../data/supabase/supabase_auth_api.dart' as _i7;
import '../data/supabase/supabase_event_api.dart' as _i9;
import '../data/supabase/supabase_profile_api.dart' as _i10;
import '../domain/modules/app_module.dart' as _i23;
import '../domain/modules/navigator_key_manager_module.dart' as _i24;
import '../domain/repositories/auth/auth_repository.dart' as _i12;
import '../presentation/admin/admin_annoucments_managment_screen.dart/bloc/announcement_form_bloc.dart'
    as _i3;
import '../presentation/admin/admin_event_managment_screen/bloc/event_form_bloc.dart'
    as _i22;
import '../presentation/common/bloc/attendees_bloc/attendees_bloc.dart' as _i19;
import '../presentation/common/bloc/events_bloc/events_bloc.dart' as _i21;
import '../presentation/common/bloc/profile_bloc/profile_bloc.dart' as _i18;
import '../presentation/login/bloc/auth_bloc.dart' as _i14;
import '../presentation/login/bloc/login/login_bloc.dart' as _i17;
import '../presentation/register/bloc/registration_bloc.dart' as _i15;

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
    final navigatorKeyManagerModule = _$NavigatorKeyManagerModule();
    gh.factory<_i3.AnnouncementFormBloc>(() => _i3.AnnouncementFormBloc());
    gh.lazySingleton<_i4.SupabaseClient>(() => appModule.supabase);
    gh.lazySingleton<_i5.Logger>(() => appModule.logger);
    gh.lazySingleton<_i6.NavigatorKeyManager>(
        () => navigatorKeyManagerModule.navigatorKeyManager);
    gh.lazySingleton<_i7.SupabaseAuthApi>(() => _i7.SupabaseAuthApi());
    gh.singleton<_i8.GlobalBlocObserver>(
        () => _i8.GlobalBlocObserver(gh<_i5.Logger>()));
    gh.factory<_i9.SupabaseEventApi>(
        () => _i9.SupabaseEventApi(gh<_i4.SupabaseClient>()));
    gh.factory<_i10.SupabaseProfileApi>(
        () => _i10.SupabaseProfileApi(gh<_i4.SupabaseClient>()));
    gh.lazySingleton<_i11.SupabaseProfileRepository>(
        () => _i11.SupabaseProfileRepository(gh<_i10.SupabaseProfileApi>()));
    gh.lazySingleton<_i12.AuthenticationRepository>(
        () => _i13.SupabaseAuthRepository(
              gh<_i4.SupabaseClient>(),
              gh<_i10.SupabaseProfileApi>(),
            ));
    gh.factory<_i14.AuthBloc>(
        () => _i14.AuthBloc(gh<_i12.AuthenticationRepository>()));
    gh.factory<_i15.RegistrationBloc>(
        () => _i15.RegistrationBloc(gh<_i12.AuthenticationRepository>()));
    gh.factory<_i16.AppRouter>(() => _i16.AppRouter(
          gh<_i6.NavigatorKeyManager>(),
          gh<_i4.SupabaseClient>(),
        ));
    gh.factory<_i17.LoginBloc>(
        () => _i17.LoginBloc(gh<_i12.AuthenticationRepository>()));
    gh.factory<_i18.ProfileBloc>(
        () => _i18.ProfileBloc(gh<_i11.SupabaseProfileRepository>()));
    gh.factory<_i19.AttendeesBloc>(
        () => _i19.AttendeesBloc(gh<_i11.SupabaseProfileRepository>()));
    gh.lazySingleton<_i20.SupabaseEventRepository>(
        () => _i20.SupabaseEventRepository(gh<_i9.SupabaseEventApi>()));
    gh.factory<_i21.EventsManagmentBloc>(
        () => _i21.EventsManagmentBloc(gh<_i20.SupabaseEventRepository>()));
    gh.factory<_i22.EventFormBloc>(
        () => _i22.EventFormBloc(gh<_i20.SupabaseEventRepository>()));
    return this;
  }
}

class _$AppModule extends _i23.AppModule {}

class _$NavigatorKeyManagerModule extends _i24.NavigatorKeyManagerModule {}
