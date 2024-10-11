extension StringExtension on String {
  DateTime toDateTime() {
    DateTime? date = DateTime.tryParse(this);
    if (date == null) {
      throw FormatException('Invalid date string: $this');
    }
    return date;
  }

  DateTime? toDateTimeOrNull() {
    return DateTime.tryParse(this);
  }
}
