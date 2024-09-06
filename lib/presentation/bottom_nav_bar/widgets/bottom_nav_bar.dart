import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/presentation/bottom_nav_bar/cubit/screen_index_cubit.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.onDestinationSelected,
    required this.tabs,
    required this.icons,
  });

  final void Function(int) onDestinationSelected;
  final List<String> tabs;
  final List<IconData> icons;

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
            selectedItemColor: AppColors.primary,
            unselectedItemColor: AppColors.gray,
            enableFeedback: true,
            selectedLabelStyle: const TextStyle(
              color: AppColors.primary,
              fontSize: 10,
            ),
            unselectedLabelStyle: const TextStyle(
              color: AppColors.gray,
              fontSize: 10,
            ),
            currentIndex: state,
            items: List.generate(
              tabs.length,
              (index) => BottomNavigationBarItem(
                icon: Icon(icons[index]),
                label: tabs[index],
              ),
            ),
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
