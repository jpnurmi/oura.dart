import 'enums.dart';
import 'ext.dart';

/// {@template oura.bedtime}
/// Ideal bedtime is an optimal bedtime window that is calculated based on your
/// sleep data. If you're new to Oura, it will take a few weeks to receive your
/// first ideal bedtime window. Having an irregular sleep schedule may also
/// result in missing ideal bedtime data.
///
/// The start and end date (inclusive) define the period for the requested data
/// period. If you omit the start date, it will be set to one week ago. If you
/// omit the end date, it will be set to the current day.
///
/// **Note:** It is not guaranteed that an ideal bedtime window is calculated
/// for every day. Days may be missing in the requested period.
/// {@endtemplate}
///
/// See also:
///  * [Oura.bedtime]
class Bedtime {
  Bedtime({
    required this.date,
    required this.bedtimeWindow,
    required this.status,
  });

  /// Date for which the ideal bedtime window was calculated.
  final DateTime date;

  /// The ideal bedtime window.
  final BedtimeWindow bedtimeWindow;

  /// The status indicates whether an ideal bedtime window is available and a reason if not.
  final BedtimeStatus status;

  Bedtime copyWith({
    DateTime? date,
    BedtimeWindow? bedtimeWindow,
    BedtimeStatus? status,
  }) {
    return Bedtime(
      date: date ?? this.date,
      bedtimeWindow: bedtimeWindow ?? this.bedtimeWindow,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'date': date.toDateString(),
      'bedtime_window': bedtimeWindow.toJson(),
      'status': status.toStatusString(),
    };
  }

  factory Bedtime.fromJson(Map<String, dynamic> json) {
    return Bedtime(
      date: DateTimeX.parse(json['date'] ?? ''),
      bedtimeWindow: BedtimeWindow.fromJson(json['bedtime_window']),
      status: BedtimeStatusX.parse(json['status'] ?? ''),
    );
  }

  @override
  String toString() {
    return 'Bedtime(date: ${date.toDateString()}, bedtimeWindow: $bedtimeWindow, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Bedtime &&
        other.date.toDateString() == date.toDateString() &&
        other.bedtimeWindow == bedtimeWindow &&
        other.status == status;
  }

  @override
  int get hashCode => Object.hash(date.toDateString(), bedtimeWindow, status);
}

/// The beginning and end of the ideal bedtime window.
class BedtimeWindow {
  BedtimeWindow({
    required this.start,
    required this.end,
  });

  /// The beginning of the ideal bedtime window.
  ///
  /// The number represents an offset in seconds relative to midnight. The range
  /// is `-43200` - `43200` where a negative number is before midnight and a
  /// positive number is after midnight.
  final int? start;

  /// The end of the ideal bedtime window.
  ///
  /// The number represents an offset in seconds relative to midnight. The range
  /// is `-43200` - `43200` where a negative number is before midnight and a
  /// positive number is after midnight.
  final int? end;

  BedtimeWindow copyWith({
    int? start,
    int? end,
  }) {
    return BedtimeWindow(
      start: start ?? this.start,
      end: end ?? this.end,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'start': start,
      'end': end,
    };
  }

  factory BedtimeWindow.fromJson(Map<String, dynamic> json) {
    return BedtimeWindow(
      start: json['start'],
      end: json['end'],
    );
  }

  @override
  String toString() => 'BedtimeWindow(start: $start, end: $end)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is BedtimeWindow && other.start == start && other.end == end;
  }

  @override
  int get hashCode => Object.hash(start, end);
}
