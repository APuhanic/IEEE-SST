import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/presentation/bottom_nav_bar/cubit/screen_index_cubit.dart';

/// Bottom Navigation Bar
class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key, required this.onDestinationSelected});

  final void Function(int) onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ScreenIndexCubit(),
      child: BlocBuilder<ScreenIndexCubit, int>(
        builder: (context, state) {
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: AppColors.white,
            useLegacyColorScheme: false,
            unselectedItemColor: AppColors.gray,
            selectedLabelStyle: const TextStyle(
              color: AppColors.grayText,
            ),
            unselectedLabelStyle: const TextStyle(
              color: AppColors.gray,
            ),
            fixedColor: AppColors.gray,
            showUnselectedLabels: true,
            currentIndex: state,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.message),
                label: 'Messages',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Community',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.monitor_rounded),
                label: 'Attendees',
              )
            ],
            onTap: (index) {
              BlocProvider.of<ScreenIndexCubit>(context).setIndex(index);
              onDestinationSelected(index);
            },
          );
        },
      ),
    );
  }
}
