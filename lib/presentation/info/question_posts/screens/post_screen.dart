import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/data/models/post_model/post_model.dart';
import 'package:ieee_sst/presentation/common/widgets/loading_indicator.dart';
import 'package:ieee_sst/presentation/info/question_posts/bloc/comment_form_bloc/comment_form_bloc.dart';
import 'package:ieee_sst/presentation/info/question_posts/bloc/comment_managment_bloc/comment_managment_bloc.dart';
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
                        Text(
                          '${post.fullName} • ${formatTimeAgo(post.timePosted)}',
                          style: AppTextStyle.lightText,
                        ),
                        Text(post.title, style: AppTextStyle.titleLarge),
                        Text(post.content, style: AppTextStyle.lightText),
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

class CommentInput extends StatefulWidget {
  const CommentInput({
    super.key,
    required this.post,
  });

  final Post post;

  @override
  State<CommentInput> createState() => _CommentInputState();
}

class _CommentInputState extends State<CommentInput> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CommentFormBloc, CommentFormState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Container(
            color: AppColors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                onChanged: (value) {
                  context.read<CommentFormBloc>().add(
                        CommentFormEvent.commentChanged(value),
                      );
                },
                controller: _controller,
                focusNode: _focusNode,
                decoration: InputDecoration(
                  hintText: 'Add a comment',
                  hintStyle: AppTextStyle.textForm,
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: () async {
                      context.read<CommentFormBloc>().add(
                            CommentFormEvent.postComment(widget.post.id!),
                          );
                      context.read<CommentManagmentBloc>().add(
                            CommentManagmentEvent.loadComments(widget.post.id!),
                          );
                      _controller.clear();
                      _focusNode.unfocus();
                    },
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
