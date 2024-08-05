import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/info/question_posts/bloc/post_form_bloc.dart';
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        const SizedBox(height: 24),
                        const PostTitleInput(),
                        const Padding(
                            padding: EdgeInsets.symmetric(vertical: 24.0),
                            child: PostDescriptionInput()),
                        // TODO: Extract widget and add validation
                        FilledButton(
                          style: FilledButton.styleFrom(
                              backgroundColor: AppColors.primary,
                              foregroundColor: AppColors.white,
                              textStyle: AppTextStyle.button),
                          onPressed: () {
                            context
                                .read<PostFormBloc>()
                                .add(const PostFormEvent.createPost());
                          },
                          child: const Text('Post'),
                        ),
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
