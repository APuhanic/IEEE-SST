import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(15),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: AppColors.white,
            ),
          ),
        ),
        Expanded(child: Container()),
        GestureDetector(
          onTap: () {
            context.go('/login');
          },
          child: Image.asset(
            'assets/images/user-profile.png',
            height: 50,
          ),
        )
      ],
    );
  }
}
