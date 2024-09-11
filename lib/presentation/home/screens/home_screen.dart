import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/route_paths.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/admin/admin_home_screen/widgets/my_profile_screen_button.dart';
import 'package:ieee_sst/presentation/common/bloc/profile_bloc/profile_bloc.dart';
import 'package:ieee_sst/presentation/common/widgets/loading_indicator.dart';
import 'package:ieee_sst/presentation/home/widgets/home_screen_drawer.dart';
import 'package:ieee_sst/presentation/home/widgets/new_screen_button.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context.read<ProfileBloc>().add(const ProfileEvent.loadProfile());
    return Scaffold(
      body: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        scrollBehavior: const MaterialScrollBehavior(),
        slivers: <Widget>[
          BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              return SliverAppBar(
                expandedHeight: 40.0,
                floating: true,
                snap: true,
                backgroundColor: AppColors.background,
                shadowColor: Colors.transparent,
                surfaceTintColor: AppColors.background,
                title: Text('IEEE SST 2024', style: AppTextStyle.titleSmall),
                leading: const _BlueHomeScreenDrawer(),
                actions: [
                  GestureDetector(
                    onTap: () => context.push(RoutePaths.profile),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: state.maybeWhen(
                        loadedProfile: (profile) {
                          return MyProfileScreenButton(profile: profile);
                        },
                        error: (message) => const Icon(Icons.error),
                        orElse: () => const LoadingIndicator(),
                      ),
                    ),
                  )
                ],
              );
            },
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Column(
                children: [
                  const _IEEESSTHeader(),
                  Row(
                    children: [
                      const _ConferenceEmail(),
                      Expanded(child: Container()),
                      const _FacebookPageLink(),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                ],
              ),
            ]),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  final titles = [
                    'Conference Chairs',
                    'Steering Committee',
                    'Program Comittee',
                    'Keynote Speaker',
                    'Special Sessions',
                    'PhD Forum'
                  ];
                  // TODO: Extract these routes to a constants file
                  final routes = [
                    '/home/conference_chairs',
                    '/home/steering_committee',
                    '/home/program_committee',
                    '/home/keynote_speaker',
                    '/home/special_sessions',
                    '/home/phd_forum'
                  ];

                  return NewScreenButton(
                    title: titles[index],
                    onPressed: () => context.go(routes[index]),
                    routePath: routes[index],
                  );
                },
                childCount: 6,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
                childAspectRatio: 3,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(
                top: 16.0, bottom: 60, left: 16.0, right: 16.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  Text(
                    'Additional resources',
                    style: AppTextStyle.titleSmall,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: SizedBox(
                      height: 50,
                      child: Row(
                        children: [
                          Expanded(
                            child: NewScreenButton(
                              title: 'Sponsors',
                              onPressed: () => context.go('/home/sponsors'),
                              routePath: RoutePaths.sponsors,
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          Expanded(
                            child: NewScreenButton(
                              title: 'Documents',
                              onPressed: () => context.go('/home/documents'),
                              routePath: RoutePaths.documents,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //TODO: COMMON WIDGET
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      children: [
                        Text(
                          'SST 2024',
                          style: AppTextStyle.titleSmall,
                        ),
                        const Expanded(
                          child: Divider(
                            color: AppColors.black,
                            thickness: 1,
                            indent: 8,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'International Conference on Smart Systems and Technologies (SST) is a conference organized and hosted by the Faculty of Electrical Engineering, Computer Science and Information Technology Osijek, Josip Juraj Strossmayer University of Osijek. The conference will provide a platform for researchers and practitioners interested in the theory and practice of smart systems and technologies related to electrical engineering, communications, computer science and engineering, control systems, robotics, as well as interdisciplinary research and applications.',
                    style: AppTextStyle.lightText,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      drawer: const HomeScreenDrawer(),
    );
  }
}

class _IEEESSTHeader extends StatelessWidget {
  const _IEEESSTHeader();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final ieeeUrl = Uri.parse('https://sst-conference.org/');
        launchUrl(ieeeUrl);
      },
      child: const Image(
        image: AssetImage(
          'assets/images/ieee_header.jpg',
        ),
      ),
    );
  }
}

class _FacebookPageLink extends StatelessWidget {
  const _FacebookPageLink();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        //TODO: Refactor this
        final facebookUrl = Uri.parse(
            'https://web.facebook.com/SSTInternationalConference/?_rdc=1&_rdr');
        final facebookFallbackUrl = Uri.parse(
            'https://web.facebook.com/SSTInternationalConference/?_rdc=1&_rdr');

        // Attempt to open the Facebook app
        if (await canLaunchUrl(facebookUrl)) {
          await launchUrl(facebookUrl);
        } else {
          // If the Facebook app is not available, open in a web browser
          if (await canLaunchUrl(facebookFallbackUrl)) {
            await launchUrl(facebookFallbackUrl);
          } else {
            throw 'Could not launch $facebookFallbackUrl';
          }
        }
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Image.asset(
          'assets/images/facebook-logo.png',
          width: 40,
        ),
      ),
    );
  }
}

class _ConferenceEmail extends StatelessWidget {
  const _ConferenceEmail();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Clipboard.setData(
          const ClipboardData(
            text: 'sst-conference@ferit.hr',
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 16.0,
        ),
        child: Row(
          children: [
            Text(
              'sst-conference@ferit.hr',
              style: AppTextStyle.lightText,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Icon(
                Icons.copy,
                color: AppColors.grayText,
                applyTextScaling: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BlueHomeScreenDrawer extends StatelessWidget {
  const _BlueHomeScreenDrawer();

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(15),
          ),
          child: IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: const Icon(
              Icons.menu,
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
