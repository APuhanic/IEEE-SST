import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/home/widgets/event_card_list.dart';
import 'package:ieee_sst/presentation/home/widgets/header.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back,
                    )),
                Text(
                  'Community',
                  style: AppTextStyle.header,
                ),
              ],
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Text('Ongoing', style: AppTextStyle.titleLarge),
                  Expanded(child: Container()),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'View All',
                    ),
                  )
                ],
              ),
            ),
            const EventCardList(),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
