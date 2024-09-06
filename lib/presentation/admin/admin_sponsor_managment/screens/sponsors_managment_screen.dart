import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/presentation/admin/admin_sponsor_managment/widgets/admin_sponsor_list.dart';
import 'package:ieee_sst/presentation/common/bloc/sponsors_bloc/bloc/sponsor_managment_bloc.dart';
import 'package:ieee_sst/presentation/common/widgets/loading_indicator.dart';
import 'package:ieee_sst/presentation/home/widgets/home_screen_drawer.dart';

class SponsorManagmentScreen extends StatelessWidget {
  const SponsorManagmentScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context
        .read<SponsorManagmentBloc>()
        .add(const SponsorManagmentEvent.loadSponsors());

    return Scaffold(
      backgroundColor: AppColors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.go('/admin_sponsors/add_sponsor'),
        backgroundColor: AppColors.primary,
        elevation: 0,
        child: const Icon(
          Icons.add,
          color: AppColors.white,
        ),
      ),
      body: RefreshIndicator(
        backgroundColor: AppColors.white,
        color: AppColors.primary,
        onRefresh: () async {
          context
              .read<SponsorManagmentBloc>()
              .add(const SponsorManagmentEvent.loadSponsors());
        },
        child: CustomScrollView(
          slivers: [
            const SliverAppBar(
              expandedHeight: 40.0,
              backgroundColor: AppColors.white,
              shadowColor: Colors.transparent,
              surfaceTintColor: AppColors.white,
              title: Text('Sponsor Managment'),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: BlocBuilder<SponsorManagmentBloc,
                        SponsorManagmentState>(
                      builder: (context, state) {
                        return state.map(
                          initial: (_) =>
                              const Center(child: LoadingIndicator()),
                          loading: (_) =>
                              const Center(child: LoadingIndicator()),
                          loaded: (state) =>
                              AdminSponsorList(sponsors: state.sponsors),
                          error: (state) => Center(
                            child: Text(state.message),
                          ),
                        );
                      },
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
