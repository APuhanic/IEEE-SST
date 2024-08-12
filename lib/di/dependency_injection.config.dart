// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i12;
import 'package:hive_flutter/adapters.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i6;
import 'package:logger/logger.dart' as _i4;
import 'package:supabase_auth_ui/supabase_auth_ui.dart' as _i21;
import 'package:supabase_flutter/supabase_flutter.dart' as _i3;

import '../data/clients/announcement_client.dart' as _i13;
import '../data/clients/comment_client.dart' as _i14;
import '../data/clients/event_client.dart' as _i15;
import '../data/clients/post_client.dart' as _i16;
import '../data/clients/profile_client.dart' as _i17;
import '../data/clients/sponsor_client.dart' as _i18;
import '../data/local_storage/event_local_storage.dart' as _i19;
import '../data/local_storage/key_value_storage.dart' as _i11;
import '../data/providers/global_bloc_observer.dart' as _i8;
import '../data/repositories/announcement_repository.dart' as _i27;
import '../data/repositories/auth_repository.dart' as _i25;
import '../data/repositories/comments_repository.dart' as _i22;
import '../data/repositories/event_repository.dart' as _i20;
import '../data/repositories/post_repository.dart' as _i32;
import '../data/repositories/profile_repository.dart' as _i30;
import '../data/repositories/sponsor_repository.dart' as _i26;
import '../data/router/navigator_key_manager.dart' as _i7;
import '../data/router/router.dart' as _i10;
import '../domain/modules/app_module.dart' as _i44;
import '../domain/modules/navigator_key_manager_module.dart' as _i45;
import '../domain/repositories/auth/auth_repository.dart' as _i24;
import '../presentation/admin/admin_annoucments_managment_screen.dart/bloc/announcement_form_bloc.dart'
    as _i29;
import '../presentation/admin/admin_event_managment_screen/bloc/event_form_bloc.dart'
    as _i23;
import '../presentation/admin/admin_sponsor_managment/bloc/sponsor_form_bloc.dart'
    as _i36;
import '../presentation/common/bloc/announcement_bloc/announcement_bloc.dart'
    as _i31;
import '../presentation/common/bloc/attendees_bloc/attendees_bloc.dart' as _i39;
import '../presentation/common/bloc/events_bloc/events_bloc.dart' as _i33;
import '../presentation/common/bloc/profile_bloc/profile_bloc.dart' as _i40;
import '../presentation/common/bloc/sponsors_bloc/bloc/sponsor_managment_bloc.dart'
    as _i28;
import '../presentation/info/question_posts/bloc/comment_form_bloc/comment_form_bloc.dart'
    as _i34;
import '../presentation/info/question_posts/bloc/comment_managment_bloc/comment_managment_bloc.dart'
    as _i35;
import '../presentation/info/question_posts/bloc/post_form_bloc.dart' as _i42;
import '../presentation/info/question_posts/bloc/post_managment_bloc/post_managment_bloc.dart'
    as _i43;
import '../presentation/login/bloc/auth_bloc.dart' as _i37;
import '../presentation/login/bloc/login/login_bloc.dart' as _i41;
import '../presentation/register/bloc/registration_bloc.dart' as _i38;
import '../util/connection_checker.dart' as _i9;

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
    gh.lazySingleton<_i5.HiveInterface>(() => appModule.hive);
    gh.lazySingleton<_i6.InternetConnectionChecker>(
        () => appModule.internetConnectionChecker);
    gh.lazySingleton<_i7.NavigatorKeyManager>(
        () => navigatorKeyManagerModule.navigatorKeyManager);
    gh.singleton<_i8.GlobalBlocObserver>(
        () => _i8.GlobalBlocObserver(gh<_i4.Logger>()));
    gh.lazySingleton<_i9.ConnectionChecker>(
        () => _i9.ConnectionChecker(gh<_i6.InternetConnectionChecker>()));
    gh.factory<_i10.AppRouter>(() => _i10.AppRouter(
          gh<_i7.NavigatorKeyManager>(),
          gh<_i3.SupabaseClient>(),
        ));
    gh.lazySingleton<_i11.KeyValueStorage>(
        () => _i11.KeyValueStorage(gh<_i12.HiveInterface>()));
    gh.factory<_i13.AnnouncementClient>(
        () => _i13.AnnouncementClient(gh<_i3.SupabaseClient>()));
    gh.factory<_i14.CommentClient>(
        () => _i14.CommentClient(gh<_i3.SupabaseClient>()));
    gh.factory<_i15.EventClient>(
        () => _i15.EventClient(gh<_i3.SupabaseClient>()));
    gh.factory<_i16.PostsClient>(
        () => _i16.PostsClient(gh<_i3.SupabaseClient>()));
    gh.factory<_i17.ProfileClient>(
        () => _i17.ProfileClient(gh<_i3.SupabaseClient>()));
    gh.factory<_i18.SponsorClient>(
        () => _i18.SponsorClient(gh<_i3.SupabaseClient>()));
    gh.lazySingleton<_i19.EventLocalStorage>(
        () => _i19.EventLocalStorage(gh<_i11.KeyValueStorage>()));
    gh.lazySingleton<_i20.EventRepository>(() => _i20.EventRepository(
          gh<_i15.EventClient>(),
          gh<_i21.SupabaseClient>(),
          gh<_i19.EventLocalStorage>(),
          gh<_i9.ConnectionChecker>(),
        ));
    gh.lazySingleton<_i22.CommentsRepository>(() => _i22.CommentsRepository(
          gh<_i14.CommentClient>(),
          gh<_i3.SupabaseClient>(),
        ));
    gh.factory<_i23.EventFormBloc>(
        () => _i23.EventFormBloc(gh<_i20.EventRepository>()));
    gh.lazySingleton<_i24.AuthenticationRepository>(() => _i25.AuthRepository(
          gh<_i3.SupabaseClient>(),
          gh<_i17.ProfileClient>(),
        ));
    gh.lazySingleton<_i26.SponsorRepository>(
        () => _i26.SponsorRepository(gh<_i18.SponsorClient>()));
    gh.lazySingleton<_i27.AnnouncementRepository>(
        () => _i27.AnnouncementRepository(gh<_i13.AnnouncementClient>()));
    gh.factory<_i28.SponsorManagmentBloc>(
        () => _i28.SponsorManagmentBloc(gh<_i26.SponsorRepository>()));
    gh.factory<_i29.AnnouncementFormBloc>(
        () => _i29.AnnouncementFormBloc(gh<_i27.AnnouncementRepository>()));
    gh.lazySingleton<_i30.ProfileRepository>(
        () => _i30.ProfileRepository(gh<_i17.ProfileClient>()));
    gh.factory<_i31.AnnouncementBloc>(
        () => _i31.AnnouncementBloc(gh<_i27.AnnouncementRepository>()));
    gh.lazySingleton<_i32.PostRepository>(
        () => _i32.PostRepository(gh<_i16.PostsClient>()));
    gh.factory<_i33.EventsManagmentBloc>(
        () => _i33.EventsManagmentBloc(gh<_i20.EventRepository>()));
    gh.factory<_i34.CommentFormBloc>(
        () => _i34.CommentFormBloc(gh<_i22.CommentsRepository>()));
    gh.factory<_i35.CommentManagmentBloc>(
        () => _i35.CommentManagmentBloc(gh<_i22.CommentsRepository>()));
    gh.factory<_i36.SponsorFormBloc>(
        () => _i36.SponsorFormBloc(gh<_i26.SponsorRepository>()));
    gh.factory<_i37.AuthBloc>(
        () => _i37.AuthBloc(gh<_i24.AuthenticationRepository>()));
    gh.factory<_i38.RegistrationBloc>(
        () => _i38.RegistrationBloc(gh<_i24.AuthenticationRepository>()));
    gh.factory<_i39.AttendeesBloc>(
        () => _i39.AttendeesBloc(gh<_i30.ProfileRepository>()));
    gh.factory<_i40.ProfileBloc>(
        () => _i40.ProfileBloc(gh<_i30.ProfileRepository>()));
    gh.factory<_i41.LoginBloc>(
        () => _i41.LoginBloc(gh<_i24.AuthenticationRepository>()));
    gh.factory<_i42.PostFormBloc>(
        () => _i42.PostFormBloc(gh<_i32.PostRepository>()));
    gh.factory<_i43.PostManagmentBloc>(
        () => _i43.PostManagmentBloc(gh<_i32.PostRepository>()));
    return this;
  }
}

class _$AppModule extends _i44.AppModule {}

class _$NavigatorKeyManagerModule extends _i45.NavigatorKeyManagerModule {}
