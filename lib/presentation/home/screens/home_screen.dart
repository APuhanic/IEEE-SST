import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                const Text('Test'),
                Expanded(child: Container()),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications),
                )
              ],
            ),
            Text(
              'IEEE SST Forum 2024',
              style: AppTextStyle.header,
            ),
            const Text(
              'Welcome to the IEEE SST Forum 2024',
            ),
            Row(
              children: [
                const Text('Ongoing'),
                Expanded(child: Container()),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'View All',
                    ))
              ],
            ),
            const Row(
              children: [
                Text('Speaker hub'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
