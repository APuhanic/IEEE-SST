enum FilterType { all, upcoming, past, yours }

class FilterChipItem {
  final String label;
  final FilterType filterType;

  FilterChipItem({
    required this.filterType,
  }) : label = filterType.toString().split('.').last[0].toUpperCase() +
            filterType.toString().split('.').last.substring(1);
}