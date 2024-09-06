import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';

class SpecialSessionsScreen extends StatelessWidget {
  const SpecialSessionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: const Text('Special sessions'),
      ),
      body: Container(),
    );
  }
}
