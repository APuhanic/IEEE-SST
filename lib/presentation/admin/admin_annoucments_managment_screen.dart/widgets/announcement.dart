import 'package:flutter/material.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';

class Announcement extends StatelessWidget {
  const Announcement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Move padding to the screen?
    // TODO: Add announcement edit and delete?
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: SizedBox(
        height: 120,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Ime prezime • 1h', style: AppTextStyle.lightText),
                      Text('Example announcement 1',
                          style: AppTextStyle.titleSmall),
                      const Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    // TODO: Size to row height?
                    Image.asset(
                      'assets/images/ieee-sst-logo.png',
                      width: 100,
                      height: 100,
                    ),
                  ],
                ),
              ],
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
