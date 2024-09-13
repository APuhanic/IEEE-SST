import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/presentation/admin/admin_sponsor_managment/widgets/admin_sponsor_card.dart';
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
            BlocBuilder<SponsorManagmentBloc, SponsorManagmentState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const SliverFillRemaining(
                    child: Center(
                      child: LoadingIndicator(),
                    ),
                  ),
                  loaded: (sponsors) {
                    return SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          return AdminSponsorCard(
                            sponsor: sponsors[index],
                          );
                        },
                        childCount: sponsors.length,
                      ),
                    );
                  },
                );
              },
            )
          ],
        ),
      ),
      drawer: const HomeScreenDrawer(),
    );
  }
}
