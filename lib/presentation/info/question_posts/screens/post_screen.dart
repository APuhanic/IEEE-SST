import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/data/models/post_model/post_model.dart';
import 'package:ieee_sst/util/time_ago_util.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({
    super.key,
    required this.post,
  });

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            expandedHeight: 50,
            pinned: true,
            backgroundColor: AppColors.background,
            shadowColor: Colors.transparent,
            surfaceTintColor: AppColors.background,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${post.fullName} • ${formatTimeAgo(post.timePosted)}',
                        style: AppTextStyle.lightText,
                      ),
                      Text(post.title, style: AppTextStyle.titleLarge),
                      Text(post.content, style: AppTextStyle.lightText),
                      const Divider(),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
