import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/info/question_posts/bloc/post_form_bloc/post_form_bloc.dart';
import 'package:ieee_sst/presentation/info/question_posts/bloc/post_managment_bloc/post_managment_bloc.dart';
import 'package:ieee_sst/presentation/info/question_posts/widgets/post_description_input.dart';
import 'package:ieee_sst/presentation/info/question_posts/widgets/post_title_input.dart';

class CreatePostScreen extends StatelessWidget {
  const CreatePostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<PostFormBloc, PostFormState>(
        listener: (context, state) {
          if (state.status.isSuccess) {
            debugPrint('Post created successfully');
            Navigator.pop(context);
          }
          if (state.status.isFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.errorMessage),
                backgroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            );
          }
        },
        builder: (context, state) {
          return CustomScrollView(
            slivers: [
              const SliverAppBar(
                  expandedHeight: 40.0,
                  backgroundColor: AppColors.background,
                  shadowColor: Colors.transparent,
                  surfaceTintColor: AppColors.background,
                  title: Text('Post Question')),
              SliverList(
                delegate: SliverChildListDelegate([
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        SizedBox(height: 24),
                        PostTitleInput(),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 24.0),
                            child: PostDescriptionInput()),
                        CreatePostButton(),
                      ],
                    ),
                  ),
                ]),
              )
            ],
          );
        },
      ),
    );
  }
}

// TODO: add validation
class CreatePostButton extends StatelessWidget {
  const CreatePostButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.white,
          textStyle: AppTextStyle.button),
      onPressed: () {
        // TODO: Refactor this to not use 2 blocs
        context.read<PostFormBloc>().add(const PostFormEvent.createPost());
        context
            .read<PostManagmentBloc>()
            .add(const PostManagmentEvent.loadPosts());
      },
      child: const Text('Post'),
    );
  }
}
