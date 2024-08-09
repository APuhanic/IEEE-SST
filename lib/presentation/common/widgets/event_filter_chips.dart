import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sst/data/constants/app_colors.dart';
import 'package:ieee_sst/data/constants/text_styles.dart';
import 'package:ieee_sst/data/models/input_models/filter_chip_types.dart';
import 'package:ieee_sst/presentation/admin/admin_event_managment_screen/bloc/cubit/filter_chip_cubit.dart';
import 'package:ieee_sst/presentation/common/bloc/events_bloc/events_bloc.dart';

class FilterChips extends StatelessWidget {
  const FilterChips({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FilterChipCubit(),
      child: SizedBox(
        height: 40,
        child: Row(
          children: [
            ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: FilterType.values.length,
              separatorBuilder: (context, index) => const SizedBox(width: 8),
              itemBuilder: (context, index) {
                return BlocBuilder<FilterChipCubit, FilterChipState>(
                  builder: (context, state) {
                    final filterType = FilterType.values[index];
                    final isSelected = state.maybeWhen(
                      selected: (selectedFilterType) =>
                          selectedFilterType == filterType,
                      orElse: () => false,
                    );
                    return FilterChip(
                      label: Text(
                        FilterChipItem(filterType: FilterType.values[index])
                            .label,
                        style: isSelected
                            ? AppTextStyle.lightText
                                .copyWith(color: AppColors.white)
                            : AppTextStyle.lightText,
                      ),
                      showCheckmark: false,
                      selected: isSelected,
                      backgroundColor:
                          isSelected ? AppColors.primary : AppColors.background,
                      side: BorderSide(
                          color: isSelected
                              ? AppColors.primary
                              : AppColors.grayText),
                      selectedColor: AppColors.primary,
                      onSelected: (value) {
                        context
                            .read<FilterChipCubit>()
                            .selectFilterChip(filterType);
                        context.read<EventsManagmentBloc>().add(
                              EventsEvent.filterEvents(
                                filter: filterType,
                              ),
                            );
                      },
                    );
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
