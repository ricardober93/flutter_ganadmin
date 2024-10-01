import 'package:intl/intl.dart';

extension DateTimeFormatting on DateTime {
  // Método que formatea DateTime con el formato dado
  String format([String pattern = 'yyyy-MM-dd']) {
    return DateFormat(pattern).format(this);
  }
}
