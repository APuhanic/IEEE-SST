// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i14;
import 'package:hive_flutter/adapters.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i6;
import 'package:logger/logger.dart' as _i4;
import 'package:supabase_auth_ui/supabase_auth_ui.dart' as _i10;
import 'package:supabase_flutter/supabase_flutter.dart' as _i3;

import '../data/clients/announcement_client.dart' as _i15;
import '../data/clients/comment_client.dart' as _i16;
import '../data/clients/event_client.dart' as _i17;
import '../data/clients/post_client.dart' as _i18;
import '../data/clients/profile_client.dart' as _i9;
import '../data/clients/sponsor_client.dart' as _i19;
import '../data/local_storage/announcement_local_storage.dart' as _i20;
import '../data/local_storage/comment_local_storage.dart' as _i21;
import '../data/local_storage/event_local_storage.dart' as _i22;
import '../data/local_storage/key_value_storage.dart' as _i13;
import '../data/local_storage/profile_local_storage.dart' as _i23;
import '../data/providers/global_bloc_observer.dart' as _i8;
import '../data/repositories/announcement_repository.dart' as _i30;
import '../data/repositories/auth_repository.dart' as _i27;
import '../data/repositories/comments_repository.dart' as _i25;
import '../data/repositories/event_repository.dart' as _i36;
import '../data/repositories/post_repository.dart' as _i35;
import '../data/repositories/profile_repository.dart' as _i33;
import '../data/repositories/sponsor_repository.dart' as _i29;
import '../data/router/navigator_key_manager.dart' as _i7;
import '../data/router/router.dart' as _i12;
import '../domain/modules/app_module.dart' as _i49;
import '../domain/modules/navigator_key_manager_module.dart' as _i50;
import '../domain/repositories/auth/auth_repository.dart' as _i26;
import '../presentation/admin/admin_annoucments_managment_screen.dart/bloc/announcement_form_bloc.dart'
    as _i32;
import '../presentation/admin/admin_event_managment_screen/bloc/event_form_bloc.dart'
    as _i43;
import '../presentation/admin/admin_sponsor_managment/bloc/sponsor_form_bloc.dart'
    as _i39;
import '../presentation/admin/admin_user_managment/bloc/user_managment_bloc.dart'
    as _i40;
import '../presentation/common/bloc/announcement_bloc/announcement_bloc.dart'
    as _i34;
import '../presentation/common/bloc/attendees_bloc/attendees_bloc.dart' as _i44;
import '../presentation/common/bloc/events_bloc/events_bloc.dart' as _i48;
import '../presentation/common/bloc/profile_bloc/profile_bloc.dart' as _i45;
import '../presentation/common/bloc/sponsors_bloc/bloc/sponsor_managment_bloc.dart'
    as _i31;
import '../presentation/common/cubit/cubit/auth_session_cubit.dart' as _i11;
import '../presentation/info/question_posts/bloc/comment_form_bloc/comment_form_bloc.dart'
    as _i37;
import '../presentation/info/question_posts/bloc/comment_managment_bloc/comment_managment_bloc.dart'
    as _i38;
import '../presentation/info/question_posts/bloc/post_form_bloc.dart' as _i46;
import '../presentation/info/question_posts/bloc/post_managment_bloc/post_managment_bloc.dart'
    as _i47;
import '../presentation/login/bloc/auth_bloc.dart' as _i41;
import '../presentation/login/bloc/login/login_bloc.dart' as _i28;
import '../presentation/register/bloc/registration_bloc.dart' as _i42;
import '../util/connection_checker.dart' as _i24;

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
    gh.lazySingleton<_i6.InternetConnection>(
        () => appModule.internetConnectionChecker);
    gh.lazySingleton<_i7.NavigatorKeyManager>(
        () => navigatorKeyManagerModule.navigatorKeyManager);
    gh.singleton<_i8.GlobalBlocObserver>(
        () => _i8.GlobalBlocObserver(gh<_i4.Logger>()));
    gh.factory<_i9.ProfileClient>(
        () => _i9.ProfileClient(gh<_i10.SupabaseClient>()));
    gh.factory<_i11.AuthSessionCubit>(
        () => _i11.AuthSessionCubit(gh<_i10.SupabaseClient>()));
    gh.factory<_i12.AppRouter>(() => _i12.AppRouter(
          gh<_i7.NavigatorKeyManager>(),
          gh<_i3.SupabaseClient>(),
        ));
    gh.lazySingleton<_i13.KeyValueStorage>(
        () => _i13.KeyValueStorage(gh<_i14.HiveInterface>()));
    gh.factory<_i15.AnnouncementClient>(
        () => _i15.AnnouncementClient(gh<_i3.SupabaseClient>()));
    gh.factory<_i16.CommentClient>(
        () => _i16.CommentClient(gh<_i3.SupabaseClient>()));
    gh.factory<_i17.EventClient>(
        () => _i17.EventClient(gh<_i3.SupabaseClient>()));
    gh.factory<_i18.PostsClient>(
        () => _i18.PostsClient(gh<_i3.SupabaseClient>()));
    gh.factory<_i19.SponsorClient>(
        () => _i19.SponsorClient(gh<_i3.SupabaseClient>()));
    gh.lazySingleton<_i20.AnnouncementLocalStorage>(
        () => _i20.AnnouncementLocalStorage(gh<_i13.KeyValueStorage>()));
    gh.lazySingleton<_i21.CommentLocalStorage>(
        () => _i21.CommentLocalStorage(gh<_i13.KeyValueStorage>()));
    gh.lazySingleton<_i22.EventLocalStorage>(
        () => _i22.EventLocalStorage(gh<_i13.KeyValueStorage>()));
    gh.lazySingleton<_i23.ProfileLocalStorage>(
        () => _i23.ProfileLocalStorage(gh<_i13.KeyValueStorage>()));
    gh.singleton<_i24.ConnectionChecker>(
        () => _i24.ConnectionChecker(gh<_i6.InternetConnection>()));
    gh.lazySingleton<_i25.CommentsRepository>(() => _i25.CommentsRepository(
          gh<_i16.CommentClient>(),
          gh<_i3.SupabaseClient>(),
        ));
    gh.lazySingleton<_i26.AuthenticationRepository>(() => _i27.AuthRepository(
          gh<_i3.SupabaseClient>(),
          gh<_i9.ProfileClient>(),
        ));
    gh.factory<_i28.LoginBloc>(
        () => _i28.LoginBloc(gh<_i26.AuthenticationRepository>()));
    gh.lazySingleton<_i29.SponsorRepository>(
        () => _i29.SponsorRepository(gh<_i19.SponsorClient>()));
    gh.lazySingleton<_i30.AnnouncementRepository>(
        () => _i30.AnnouncementRepository(gh<_i15.AnnouncementClient>()));
    gh.factory<_i31.SponsorManagmentBloc>(
        () => _i31.SponsorManagmentBloc(gh<_i29.SponsorRepository>()));
    gh.factory<_i32.AnnouncementFormBloc>(
        () => _i32.AnnouncementFormBloc(gh<_i30.AnnouncementRepository>()));
    gh.lazySingleton<_i33.ProfileRepository>(
        () => _i33.ProfileRepository(gh<_i9.ProfileClient>()));
    gh.factory<_i34.AnnouncementBloc>(
        () => _i34.AnnouncementBloc(gh<_i30.AnnouncementRepository>()));
    gh.lazySingleton<_i35.PostRepository>(
        () => _i35.PostRepository(gh<_i18.PostsClient>()));
    gh.lazySingleton<_i36.EventRepository>(() => _i36.EventRepository(
          gh<_i17.EventClient>(),
          gh<_i10.SupabaseClient>(),
          gh<_i22.EventLocalStorage>(),
          gh<_i24.ConnectionChecker>(),
        ));
    gh.factory<_i37.CommentFormBloc>(
        () => _i37.CommentFormBloc(gh<_i25.CommentsRepository>()));
    gh.factory<_i38.CommentManagmentBloc>(
        () => _i38.CommentManagmentBloc(gh<_i25.CommentsRepository>()));
    gh.factory<_i39.SponsorFormBloc>(
        () => _i39.SponsorFormBloc(gh<_i29.SponsorRepository>()));
    gh.factory<_i40.UserManagmentBloc>(
        () => _i40.UserManagmentBloc(gh<_i33.ProfileRepository>()));
    gh.factory<_i41.AuthBloc>(
        () => _i41.AuthBloc(gh<_i26.AuthenticationRepository>()));
    gh.factory<_i42.RegistrationBloc>(
        () => _i42.RegistrationBloc(gh<_i26.AuthenticationRepository>()));
    gh.factory<_i43.EventFormBloc>(
        () => _i43.EventFormBloc(gh<_i36.EventRepository>()));
    gh.factory<_i44.AttendeesBloc>(
        () => _i44.AttendeesBloc(gh<_i33.ProfileRepository>()));
    gh.factory<_i45.ProfileBloc>(
        () => _i45.ProfileBloc(gh<_i33.ProfileRepository>()));
    gh.factory<_i46.PostFormBloc>(
        () => _i46.PostFormBloc(gh<_i35.PostRepository>()));
    gh.factory<_i47.PostManagmentBloc>(
        () => _i47.PostManagmentBloc(gh<_i35.PostRepository>()));
    gh.factory<_i48.EventsManagmentBloc>(
        () => _i48.EventsManagmentBloc(gh<_i36.EventRepository>()));
    return this;
  }
}

class _$AppModule extends _i49.AppModule {}

class _$NavigatorKeyManagerModule extends _i50.NavigatorKeyManagerModule {}
