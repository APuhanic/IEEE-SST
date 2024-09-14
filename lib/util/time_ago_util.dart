import 'package:timeago/timeago.dart' as timeago;

String formatTimeAgo(String time, {String locale = 'en_short'}) =>
    timeago.format(DateTime.parse(time), locale: locale);
