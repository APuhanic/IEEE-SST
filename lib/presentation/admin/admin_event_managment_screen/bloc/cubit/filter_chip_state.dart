part of 'filter_chip_cubit.dart';

@freezed
class FilterChipState with _$FilterChipState {
  const factory FilterChipState.unselected() = _Unselected;
  const factory FilterChipState.selected(FilterType filterType) = _Selected;
}
