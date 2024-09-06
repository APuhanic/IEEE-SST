import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/info/question_posts/bloc/post_form_bloc/post_form_bloc.dart';

class PostDescriptionInput extends StatelessWidget {
  const PostDescriptionInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostFormBloc, PostFormState>(
      builder: (context, state) {
        return TextFormField(
          onChanged: (description) => context
              .read<PostFormBloc>()
              .add(PostFormEvent.contentChanged(description)),
          initialValue: state.content,
          minLines: 1,
          maxLines: 10,
          decoration: InputDecoration(
            label: Text('Post description', style: AppTextStyle.textForm),
            hintText: 'Post description',
            hintStyle: AppTextStyle.textForm,
            prefixIcon: const Icon(Icons.description_outlined,
                color: AppColors.grayText),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: AppColors.grayText,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide:
                  const BorderSide(color: AppColors.primary, width: 2.0),
            ),
          ),
        );
      },
    );
  }
}
