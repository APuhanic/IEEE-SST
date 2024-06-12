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

import '../data/providers/global_bloc_observer.dart' as _i7;
import '../data/repositories/supabase_announcement_repository.dart' as _i20;
import '../data/repositories/supabase_auth_repository.dart' as _i13;
import '../data/repositories/supabase_event_repository.dart' as _i21;
import '../data/repositories/supabase_profile_repository.dart' as _i11;
import '../data/router/navigator_key_manager.dart' as _i5;
import '../data/router/router.dart' as _i16;
import '../data/supabase/supabase_announcement_api.dart' as _i10;
import '../data/supabase/supabase_auth_api.dart' as _i6;
import '../data/supabase/supabase_event_api.dart' as _i8;
import '../data/supabase/supabase_profile_api.dart' as _i9;
import '../domain/modules/app_module.dart' as _i26;
import '../domain/modules/navigator_key_manager_module.dart' as _i27;
import '../domain/repositories/auth/auth_repository.dart' as _i12;
import '../presentation/admin/admin_annoucments_managment_screen.dart/bloc/announcement_form_bloc.dart'
    as _i22;
import '../presentation/admin/admin_event_managment_screen/bloc/event_form_bloc.dart'
    as _i24;
import '../presentation/common/bloc/announcement_bloc/announcement_bloc.dart'
    as _i25;
import '../presentation/common/bloc/attendees_bloc/attendees_bloc.dart' as _i19;
import '../presentation/common/bloc/events_bloc/events_bloc.dart' as _i23;
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
    gh.lazySingleton<_i3.SupabaseClient>(() => appModule.supabase);
    gh.lazySingleton<_i4.Logger>(() => appModule.logger);
    gh.lazySingleton<_i5.NavigatorKeyManager>(
        () => navigatorKeyManagerModule.navigatorKeyManager);
    gh.lazySingleton<_i6.SupabaseAuthApi>(() => _i6.SupabaseAuthApi());
    gh.singleton<_i7.GlobalBlocObserver>(
        () => _i7.GlobalBlocObserver(gh<_i4.Logger>()));
    gh.factory<_i8.SupabaseEventApi>(
        () => _i8.SupabaseEventApi(gh<_i3.SupabaseClient>()));
    gh.factory<_i9.SupabaseProfileApi>(
        () => _i9.SupabaseProfileApi(gh<_i3.SupabaseClient>()));
    gh.factory<_i10.SupabaseAnnouncementApi>(
        () => _i10.SupabaseAnnouncementApi(gh<_i3.SupabaseClient>()));
    gh.lazySingleton<_i11.SupabaseProfileRepository>(
        () => _i11.SupabaseProfileRepository(gh<_i9.SupabaseProfileApi>()));
    gh.lazySingleton<_i12.AuthenticationRepository>(
        () => _i13.SupabaseAuthRepository(
              gh<_i3.SupabaseClient>(),
              gh<_i9.SupabaseProfileApi>(),
            ));
    gh.factory<_i14.AuthBloc>(
        () => _i14.AuthBloc(gh<_i12.AuthenticationRepository>()));
    gh.factory<_i15.RegistrationBloc>(
        () => _i15.RegistrationBloc(gh<_i12.AuthenticationRepository>()));
    gh.factory<_i16.AppRouter>(() => _i16.AppRouter(
          gh<_i5.NavigatorKeyManager>(),
          gh<_i3.SupabaseClient>(),
        ));
    gh.factory<_i17.LoginBloc>(
        () => _i17.LoginBloc(gh<_i12.AuthenticationRepository>()));
    gh.factory<_i18.ProfileBloc>(
        () => _i18.ProfileBloc(gh<_i11.SupabaseProfileRepository>()));
    gh.factory<_i19.AttendeesBloc>(
        () => _i19.AttendeesBloc(gh<_i11.SupabaseProfileRepository>()));
    gh.lazySingleton<_i20.SupabaseAnnouncementRepository>(() =>
        _i20.SupabaseAnnouncementRepository(
            gh<_i10.SupabaseAnnouncementApi>()));
    gh.lazySingleton<_i21.SupabaseEventRepository>(
        () => _i21.SupabaseEventRepository(gh<_i8.SupabaseEventApi>()));
    gh.factory<_i22.AnnouncementFormBloc>(() =>
        _i22.AnnouncementFormBloc(gh<_i20.SupabaseAnnouncementRepository>()));
    gh.factory<_i23.EventsManagmentBloc>(
        () => _i23.EventsManagmentBloc(gh<_i21.SupabaseEventRepository>()));
    gh.factory<_i24.EventFormBloc>(
        () => _i24.EventFormBloc(gh<_i21.SupabaseEventRepository>()));
    gh.factory<_i25.AnnouncementBloc>(
        () => _i25.AnnouncementBloc(gh<_i20.SupabaseAnnouncementRepository>()));
    return this;
  }
}

class _$AppModule extends _i26.AppModule {}

class _$NavigatorKeyManagerModule extends _i27.NavigatorKeyManagerModule {}
