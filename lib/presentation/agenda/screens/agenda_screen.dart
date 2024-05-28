import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/presentation/common/widgets/event_card_list.dart';
import 'package:date_picker_timeline/date_picker_widget.dart';

class AgendaScreen extends StatelessWidget {
  const AgendaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 40.0,
            floating: true,
            title: Text('Agenda', style: AppTextStyle.titleSmall),
            backgroundColor: AppColors.background,
            shadowColor: Colors.transparent,
            surfaceTintColor: AppColors.background,
            actions: [
              IconButton(
                onPressed: () {
                  context.go('/agenda/search_events');
                },
                icon: const Icon(Icons.search),
              ),
            ],
            snap: true,
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: _DatePickerHeaderDelegate(
              child: Container(
                color: AppColors.background,
                child: DatePicker(
                  DateTime.now(),
                  height: 100,
                  dateTextStyle: AppTextStyle.lightText,
                  dayTextStyle: AppTextStyle.lightText,
                  initialSelectedDate: DateTime.now(),
                  selectionColor: AppColors.primary,
                  selectedTextColor: AppColors.white,
                  daysCount: 14,
                  locale: 'en',
                  onDateChange: (date) {
                    // New date selected
                  },
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const Column(
                  children: [
                    EventCardList(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _DatePickerHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  _DatePickerHeaderDelegate({required this.child});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => 90.0;

  @override
  double get minExtent => 90.0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
