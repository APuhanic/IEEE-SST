import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/messages/widgets/user_contact_tile.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: <Widget>[
            const SliverAppBar(
              expandedHeight: 40.0,
              floating: true,
              automaticallyImplyLeading: true,
              backgroundColor: AppColors.background,
              shadowColor: Colors.transparent,
              surfaceTintColor: AppColors.background,
              actions: [
                _SearchMessagesBar(),
              ],
              snap: true,
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text('Messages', style: AppTextStyle.titleSmall),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 45,
                    itemBuilder: (context, index) => const UserContactTile(),
                  )
                ],
              ),
            ]))
          ],
        ),
      ),
    );
  }
}

class _SearchMessagesBar extends StatelessWidget {
  const _SearchMessagesBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        height: 50,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        // TODO: Make this autocomplete
        child: const TextField(
          decoration: InputDecoration(
            hintText: 'Search messages',
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}
