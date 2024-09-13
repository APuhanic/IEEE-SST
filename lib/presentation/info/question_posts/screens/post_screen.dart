import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/data/models/post_model/post_model.dart';
import 'package:ieee_sst/presentation/common/widgets/loading_indicator.dart';
import 'package:ieee_sst/presentation/info/question_posts/bloc/comment_managment_bloc/comment_managment_bloc.dart';
import 'package:ieee_sst/presentation/info/question_posts/bloc/post_managment_bloc/post_managment_bloc.dart';
import 'package:ieee_sst/presentation/info/question_posts/widgets/comment_input.dart';
import 'package:ieee_sst/presentation/info/question_posts/widgets/user_comments_list.dart';
import 'package:ieee_sst/util/time_ago_util.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({
    super.key,
    required this.post,
  });

  final Post post;

  @override
  Widget build(BuildContext context) {
    context
        .read<CommentManagmentBloc>()
        .add(CommentManagmentEvent.loadComments(post.id!));
    return Scaffold(
      backgroundColor: AppColors.background,
      body: RefreshIndicator(
        onRefresh: () async => context
            .read<CommentManagmentBloc>()
            .add(CommentManagmentEvent.loadComments(post.id!)),
        child: CustomScrollView(
          slivers: <Widget>[
            const SliverAppBar(
              expandedHeight: 50,
              pinned: true,
              backgroundColor: AppColors.background,
              shadowColor: Colors.transparent,
              surfaceTintColor: AppColors.white,
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
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${post.fullName} • ${formatTimeAgo(post.timePosted)}',
                                  style: AppTextStyle.lightText,
                                ),
                                Text(post.title,
                                    style: AppTextStyle.titleLarge),
                                Text(post.content,
                                    style: AppTextStyle.lightText),
                              ],
                            ),
                            Expanded(child: Container()),
                            post.isOwner!
                                ? PopupMenuButton(
                                    color: AppColors.white,
                                    icon: const Icon(
                                      Icons.more_vert,
                                      color: AppColors.gray,
                                    ),
                                    itemBuilder: (context) {
                                      return [
                                        PopupMenuItem(
                                          onTap: () {
                                            context
                                                .read<PostManagmentBloc>()
                                                .add(PostManagmentEvent
                                                    .deletePost(post.id!));
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text('Delete'),
                                        ),
                                      ];
                                    },
                                  )
                                : const SizedBox(),
                          ],
                        ),
                        const Divider(),
                        BlocBuilder<CommentManagmentBloc,
                            CommentManagmentState>(
                          builder: (context, state) {
                            return state.maybeWhen(
                              loaded: (comments) {
                                if (comments.isEmpty) {
                                  return const Center(
                                    child: Text('No comments yet'),
                                  );
                                } else {
                                  return UserCommentsList(comments: comments);
                                }
                              },
                              loading: () => const Center(
                                child: LoadingIndicator(),
                              ),
                              //TODO: Fix this error message iterable null....
                              error: (message) => const Center(
                                child: Text('No comments yet'),
                              ),
                              orElse: () => const SizedBox.shrink(),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: CommentInput(post: post),
    );
  }
}
