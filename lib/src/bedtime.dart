import 'enums.dart';
import 'ext.dart';

class Bedtime {
  Bedtime({
    required this.date,
    required this.bedtimeWindow,
    required this.status,
  });

  final DateTime date;
  final BedtimeWindow bedtimeWindow;
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
    return 'Bedtime(date: ${date.toDateString()}, bedtime_window: $bedtimeWindow, status: $status)';
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

class BedtimeWindow {
  BedtimeWindow({
    required this.start,
    required this.end,
  });

  final int start;
  final int end;

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
      start: json['start'] ?? 0,
      end: json['end'] ?? 0,
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
