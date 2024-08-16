import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/presentation/home/widgets/home_screen_drawer.dart';

class DocumentsScreen extends StatelessWidget {
  const DocumentsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 56.0),
        child: FloatingActionButton(
          onPressed: () => context.go('/documents/upload_document'),
          backgroundColor: AppColors.primary,
          child: const Icon(
            FontAwesomeIcons.plus,
            color: AppColors.white,
          ),
        ),
      ),
      body: RefreshIndicator(
        backgroundColor: AppColors.white,
        color: AppColors.primary,
        onRefresh: () async {},
        child: CustomScrollView(
          slivers: [
            const SliverAppBar(
              expandedHeight: 40.0,
              backgroundColor: AppColors.background,
              shadowColor: Colors.transparent,
              surfaceTintColor: AppColors.background,
              title: Text('Documents'),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Documents',
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      drawer: const HomeScreenDrawer(),
    );
  }
}
