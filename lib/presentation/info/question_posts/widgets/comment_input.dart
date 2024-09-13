import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/data/models/post_model/post_model.dart';
import 'package:ieee_sst/presentation/info/question_posts/bloc/comment_form_bloc/comment_form_bloc.dart';
import 'package:ieee_sst/presentation/info/question_posts/bloc/comment_managment_bloc/comment_managment_bloc.dart';

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
                      await Future.delayed(const Duration(milliseconds: 300));
                      if (!context.mounted) return;
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
