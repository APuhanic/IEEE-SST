import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/router/router.dart';
import 'package:ieee_sst/di/dependency_injection.dart';
import 'package:ieee_sst/presentation/admin/admin_annoucments_managment_screen.dart/bloc/announcement_form_bloc.dart';
import 'package:ieee_sst/presentation/admin/admin_sponsor_managment/bloc/sponsor_form_bloc.dart';
import 'package:ieee_sst/presentation/common/bloc/announcement_bloc/announcement_bloc.dart';
import 'package:ieee_sst/presentation/common/bloc/events_bloc/events_bloc.dart';
import 'package:ieee_sst/presentation/common/bloc/profile_bloc/profile_bloc.dart';
import 'package:ieee_sst/presentation/common/bloc/sponsors_bloc/bloc/sponsor_managment_bloc.dart';
import 'package:ieee_sst/presentation/info/question_posts/bloc/post_form_bloc.dart';
import 'package:ieee_sst/presentation/info/question_posts/bloc/post_managment_bloc/post_managment_bloc.dart';
import 'package:ieee_sst/presentation/login/bloc/auth_bloc.dart';
import 'package:ieee_sst/presentation/register/bloc/registration_bloc.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppColors.background,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: AppColors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: AppColors.white,
    ));
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<AuthBloc>()),
        BlocProvider(create: (context) => getIt<RegistrationBloc>()),
        BlocProvider(create: (context) => getIt<EventsManagmentBloc>()),
        BlocProvider(create: (context) => getIt<ProfileBloc>()),
        BlocProvider(create: (context) => getIt<AnnouncementFormBloc>()),
        //TODO: Rename to AnnouncementManagmentBloc?
        BlocProvider(create: (context) => getIt<AnnouncementBloc>()),
        BlocProvider(create: (context) => getIt<SponsorFormBloc>()),
        BlocProvider(create: (context) => getIt<SponsorManagmentBloc>()),
        BlocProvider(create: (context) => getIt<PostFormBloc>()),
        BlocProvider(create: (context) => getIt<PostManagmentBloc>())
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'IEEE SST',
        theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: AppColors.background,
          fontFamily: 'Poppins',
        ),
        routerConfig: getIt<AppRouter>().router,
        builder: (context, child) => SafeArea(child: child!),
      ),
    );
  }
}
