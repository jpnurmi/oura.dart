extension DateTimeX on DateTime {
  String toDateString() => toString().substring(0, 10);
  static DateTime parse(String s) => DateTime.tryParse(s) ?? DateTime.now();
}
