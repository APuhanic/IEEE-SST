import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/data/models/comment_model/comment_model.dart';
import 'package:ieee_sst/presentation/info/question_posts/widgets/user_comment_card.dart';

class UserCommentsList extends StatelessWidget {
  const UserCommentsList({
    super.key,
    required this.comments,
  });

  final List<Comment> comments;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            const Icon(
              Icons.comment,
              color: AppColors.gray,
            ),
            const SizedBox(width: 8),
            Text(
              '${comments.length} Comments',
              style: AppTextStyle.lightText,
            ),
          ],
        ),
      ),
      ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 16),
        itemCount: comments.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => const SizedBox(height: 16),
        itemBuilder: (context, index) =>
            UserCommentCard(comment: comments[index]),
      ),
    ]);
  }
}
