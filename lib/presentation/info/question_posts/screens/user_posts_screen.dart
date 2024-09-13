import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/presentation/common/widgets/loading_indicator.dart';
import 'package:ieee_sst/presentation/info/question_posts/bloc/post_managment_bloc/post_managment_bloc.dart';
import 'package:ieee_sst/presentation/info/question_posts/widgets/user_post_list.dart';

class UserPostsScreen extends StatelessWidget {
  const UserPostsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context.read<PostManagmentBloc>().add(const PostManagmentEvent.loadPosts());
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 48),
        child: FloatingActionButton(
          onPressed: () =>
              context.go('/community/ask_organizers/create_question'),
          backgroundColor: AppColors.primary,
          elevation: 0,
          child: const FaIcon(
            FontAwesomeIcons.circlePlus,
            color: AppColors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: RefreshIndicator(
          backgroundColor: AppColors.white,
          color: AppColors.primary,
          onRefresh: () async {
            context
                .read<PostManagmentBloc>()
                .add(const PostManagmentEvent.loadPosts());
          },
          child: CustomScrollView(
            slivers: <Widget>[
              const SliverAppBar(
                expandedHeight: 50,
                pinned: true,
                backgroundColor: AppColors.background,
                shadowColor: Colors.transparent,
                surfaceTintColor: AppColors.background,
                title: Text('Ask Organizers'),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    BlocBuilder<PostManagmentBloc, PostManagmentState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                            loaded: (posts) => UserPostsList(posts: posts),
                            loading: () =>
                                const Center(child: LoadingIndicator()),
                            error: (message) => Center(
                                  child: Text(message),
                                ),
                            orElse: () => const SizedBox.shrink());
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
