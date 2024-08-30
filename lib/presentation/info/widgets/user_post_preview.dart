import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/data/models/post_model/post_model.dart';
import 'package:ieee_sst/presentation/common/widgets/global_inkwell.dart';
import 'package:ieee_sst/util/time_ago_util.dart';

class UserPostPreview extends StatelessWidget {
  const UserPostPreview({
    super.key,
    required this.post,
  });

  final Post post;

  @override
  Widget build(BuildContext context) {
    return GlobalInkWell(
      onTap: () {
        context.go('/community/ask_organizers/user_post', extra: post);
      },
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${post.fullName} • ${formatTimeAgo(post.timePosted)}',
                  style: AppTextStyle.lightText),
              Text(post.title, style: AppTextStyle.titleLarge),
              Text(post.content, style: AppTextStyle.lightText),
            ],
          ),
          Expanded(child: Container()),
          const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.comment_outlined, color: AppColors.grayText),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
