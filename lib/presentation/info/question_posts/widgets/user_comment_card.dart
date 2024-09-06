import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/data/models/comment_model/comment_model.dart';
import 'package:ieee_sst/presentation/info/question_posts/bloc/comment_managment_bloc/comment_managment_bloc.dart';
import 'package:ieee_sst/util/time_ago_util.dart';

class UserCommentCard extends StatelessWidget {
  const UserCommentCard({
    super.key,
    required this.comment,
  });

  final Comment comment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${comment.fullName} • ${formatTimeAgo(comment.createdAt)}',
                    style: AppTextStyle.lightText,
                  ),
                  Text(
                    comment.content,
                    style: AppTextStyle.userComment,
                    softWrap: true,
                  ),
                ],
              ),
            ),
            comment.isOwner!
                ? PopupMenuButton(
                    color: AppColors.white,
                    icon: const Icon(
                      Icons.more_vert,
                      color: AppColors.gray,
                    ),
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem(
                          onTap: () => context.read<CommentManagmentBloc>().add(
                              CommentManagmentEvent.deleteComment(comment.id!)),
                          child: const Text('Delete'),
                        ),
                      ];
                    },
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
