import 'package:flutter/material.dart';
import 'package:ieee_sst/data/models/post_model/post_model.dart';
import 'package:ieee_sst/presentation/info/widgets/user_post_preview.dart';

class UserPostsList extends StatelessWidget {
  const UserPostsList({
    super.key,
    required this.posts,
  });

  final List<Post> posts;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: posts.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, index) => UserPostPreview(
        post: posts[index],
      ),
    );
  }
}
