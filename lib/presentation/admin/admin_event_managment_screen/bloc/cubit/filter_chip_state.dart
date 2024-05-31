part of 'filter_chip_cubit.dart';

@freezed
class FilterChipState with _$FilterChipState {
  const factory FilterChipState.initial() = _Initial;
  const factory FilterChipState.selected(FilterType filterType) = _Selected;
}
