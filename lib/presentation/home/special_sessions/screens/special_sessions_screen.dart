import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/models/special_session_model/special_session_model.dart';
import 'package:ieee_sst/presentation/common/widgets/loading_indicator.dart';
import 'package:ieee_sst/presentation/home/special_sessions/widgets/special_session_card.dart';
import 'package:ieee_sst/util/load_json.dart';

class SpecialSessionsScreen extends StatelessWidget {
  const SpecialSessionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<SpecialSession>>(
        future: loadSpecialSessions(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: LoadingIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final specialSessions = snapshot.data!;
            return CustomScrollView(
              slivers: <Widget>[
                const SliverAppBar(
                  backgroundColor: AppColors.background,
                  shadowColor: Colors.transparent,
                  surfaceTintColor: AppColors.background,
                  title: Text('Special Sessions'),
                ),
                SliverPadding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) =>
                          SpecialSessionCard(session: specialSessions[index]),
                      childCount: specialSessions.length,
                    ),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
