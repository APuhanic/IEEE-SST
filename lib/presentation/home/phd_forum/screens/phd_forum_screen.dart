import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/presentation/common/widgets/parahraph_header.dart';
import 'package:ieee_sst/presentation/home/phd_forum/screens/phd_forum_text.dart';
import 'package:url_launcher/url_launcher.dart';

class PhDForumScreen extends StatelessWidget {
  const PhDForumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            backgroundColor: AppColors.background,
            shadowColor: Colors.transparent,
            surfaceTintColor: AppColors.background,
            title: Text('PhD Forum'),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(left: 16.0, right: 16, bottom: 60),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  const Text(forumOrganization),
                  const ParagraphHeader(text: 'Steering Committee'),
                  const _CommitteeList(steeringCommittee),
                  const ParagraphHeader(text: 'Program & Organizing Committee'),
                  const _CommitteeList(programCommittee),
                  const ParagraphHeader(text: 'PhD Forum Programme'),
                  const Text(phdForumProgramme),
                  const ParagraphHeader(
                      text: 'PhD Forum - Call for Participation'),
                  const Text(callForParticipaion),
                  const _FileTempateLauncher(
                    buttonText: 'Tex template',
                    url:
                        'https://sst-conference.org/wp-content/uploads/2024/07/sst2024-phd_forum-abstract_template_tex.zip',
                  ),
                  const _FileTempateLauncher(
                    buttonText: 'MS Word template',
                    url:
                        'https://sst-conference.org/wp-content/uploads/2024/07/sst2024-phd_forum-abstract_template_doc.zip',
                  ),
                  const Text(additionalInformation),
                  const Text(finalInstructions),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FileTempateLauncher extends StatelessWidget {
  const _FileTempateLauncher({
    required this.buttonText,
    required this.url,
  });

  final String buttonText;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: TextButton(
        onPressed: () async {
          //url launcher
          final uri = Uri.parse(url);
          if (await canLaunchUrl(uri)) {
            await launchUrl(uri);
          } else {
            throw 'Could not launch $uri';
          }
        },
        child: Text(
          buttonText,
          style: const TextStyle(color: AppColors.primary),
        ),
      ),
    );
  }
}

class _CommitteeList extends StatelessWidget {
  const _CommitteeList(this.committee);

  final List<Map<String, String>> committee;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: committee.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(committee[index]['name']!,
                  style: const TextStyle(
                    fontSize: 16,
                    color: AppColors.black,
                    fontWeight: FontWeight.w600,
                  )),
              Text(committee[index]['institution']!),
            ],
          ),
        );
      },
    );
  }
}
