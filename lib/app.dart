import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/presentation/home/screens/home_screen.dart';
import 'package:ieee_sst/presentation/login/screens/login_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: AppColors.background));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IEEE SST',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.background,
        fontFamily: 'Poppins',
      ),
      home: const LoginScreen(),
      builder: (context, child) => SafeArea(child: child!),
    );
  }
}
