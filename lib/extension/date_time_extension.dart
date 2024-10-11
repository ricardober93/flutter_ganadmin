import 'package:intl/intl.dart';

extension DateTimeFormatting on DateTime {
  String format([String pattern = 'yyyy-MM-dd:HH:mm:ss']) {
    return DateFormat(pattern).format(this);
  }

  String shortFormat([String pattern = 'yyyy-MM-dd']) {
    return DateFormat(pattern).format(this);
  }

  String formatTime() {
    return "${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}";
  }
}
