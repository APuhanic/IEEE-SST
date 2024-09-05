import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/presentation/common/bloc/sponsors_bloc/bloc/sponsor_managment_bloc.dart';
import 'package:ieee_sst/presentation/sponsors/widgets/sponsor_card_list.dart';

class SponsorsScreen extends StatelessWidget {
  const SponsorsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context
        .read<SponsorManagmentBloc>()
        .add(const SponsorManagmentEvent.loadSponsors());

    return Scaffold(
      backgroundColor: AppColors.white,
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
              title: Text('Sponsors'),
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
                          initial: (_) => const Center(
                            child: CircularProgressIndicator(),
                          ),
                          loading: (_) => const Center(
                            child: CircularProgressIndicator(),
                          ),
                          loaded: (state) =>
                              SponsorList(sponsors: state.sponsors),
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
    );
  }
}
