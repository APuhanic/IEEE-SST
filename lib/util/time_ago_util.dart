import 'package:timeago/timeago.dart' as timeago;

String formatTimeAgo(String time, {String locale = 'en_short'}) {
  DateTime parsedDateTime = DateTime.parse(time);
  return timeago.format(parsedDateTime, locale: locale);
}
