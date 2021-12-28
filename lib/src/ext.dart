import 'enums.dart';

extension DateTimeX on DateTime {
  String toDateString() => toString().substring(0, 10);
  static DateTime parse(String s) => DateTime.tryParse(s) ?? DateTime.now();
}

extension BedtimeStatusX on BedtimeStatus {
  String toStatusString() {
    switch (this) {
      case BedtimeStatus.notEnoughData:
        return 'NOT_ENOUGH_DATA';
      case BedtimeStatus.lowSleepScores:
        return 'LOW_SLEEP_SCORES';
      case BedtimeStatus.idealBedtimeAvailable:
        return 'IDEAL_BEDTIME_AVAILABLE';
    }
  }

  static BedtimeStatus parse(String s) {
    switch (s) {
      case 'NOT_ENOUGH_DATA':
        return BedtimeStatus.notEnoughData;
      case 'LOW_SLEEP_SCORES':
        return BedtimeStatus.lowSleepScores;
      case 'IDEAL_BEDTIME_AVAILABLE':
        return BedtimeStatus.idealBedtimeAvailable;
      default:
        throw UnsupportedError('Unknown BedtimeStatus: $s');
    }
  }
}
