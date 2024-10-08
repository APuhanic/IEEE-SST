import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ieee_sst/data/models/input_models/filter_chip_types.dart';

part 'filter_chip_state.dart';
part 'filter_chip_cubit.freezed.dart';

class FilterChipCubit extends Cubit<FilterChipState> {
  FilterChipCubit() : super(const FilterChipState.unselected());

  void selectFilterChip(FilterType filterType) {
    state.maybeWhen(
      selected: (currentFilterType) {
        if (filterType == currentFilterType) {
          emit(const FilterChipState.unselected());
        } else {
          emit(FilterChipState.selected(filterType));
        }
      },
      orElse: () => emit(FilterChipState.selected(filterType)),
    );
  }
}
