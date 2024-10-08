import 'package:intl/intl.dart';

extension DateTimeFormatting on DateTime {

  String format([String pattern = 'yyyy-MM-dd']) {
    return DateFormat(pattern).format(this);
  }
}
