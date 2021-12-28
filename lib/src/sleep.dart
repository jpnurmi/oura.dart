import 'package:collection/collection.dart';

import 'ext.dart';

class Sleep {
  Sleep({
    required this.summaryDate,
    required this.periodId,
    required this.isLongest,
    required this.timezone,
    required this.bedtimeStart,
    required this.bedtimeEnd,
    required this.score,
    required this.scoreTotal,
    required this.scoreDisturbances,
    required this.scoreEfficiency,
    required this.scoreLatency,
    required this.scoreRem,
    required this.scoreDeep,
    required this.scoreAlignment,
    required this.total,
    required this.duration,
    required this.awake,
    required this.light,
    required this.rem,
    required this.deep,
    required this.onsetLatency,
    required this.restless,
    required this.efficiency,
    required this.midpointTime,
    required this.hrLowest,
    required this.hrAverage,
    required this.rmssd,
    required this.breathAverage,
    required this.temperatureDelta,
    required this.hypnogram5min,
    required this.hr5min,
    required this.rmssd5min,
  });

  final DateTime summaryDate;
  final int periodId;
  final bool isLongest;
  final int timezone;
  final DateTime bedtimeStart;
  final DateTime bedtimeEnd;
  final int score;
  final int scoreTotal;
  final int scoreDisturbances;
  final int scoreEfficiency;
  final int scoreLatency;
  final int scoreRem;
  final int scoreDeep;
  final int scoreAlignment;
  final int total;
  final int duration;
  final int awake;
  final int light;
  final int rem;
  final int deep;
  final int onsetLatency;
  final int restless;
  final int efficiency;
  final int midpointTime;
  final double hrLowest;
  final double hrAverage;
  final int rmssd;
  final double breathAverage;
  final double temperatureDelta;
  final String hypnogram5min;
  final List<int> hr5min;
  final List<int> rmssd5min;

  Sleep copyWith({
    DateTime? summaryDate,
    int? periodId,
    bool? isLongest,
    int? timezone,
    DateTime? bedtimeStart,
    DateTime? bedtimeEnd,
    int? score,
    int? scoreTotal,
    int? scoreDisturbances,
    int? scoreEfficiency,
    int? scoreLatency,
    int? scoreRem,
    int? scoreDeep,
    int? scoreAlignment,
    int? total,
    int? duration,
    int? awake,
    int? light,
    int? rem,
    int? deep,
    int? onsetLatency,
    int? restless,
    int? efficiency,
    int? midpointTime,
    double? hrLowest,
    double? hrAverage,
    int? rmssd,
    double? breathAverage,
    double? temperatureDelta,
    String? hypnogram5min,
    List<int>? hr5min,
    List<int>? rmssd5min,
  }) {
    return Sleep(
      summaryDate: summaryDate ?? this.summaryDate,
      periodId: periodId ?? this.periodId,
      isLongest: isLongest ?? this.isLongest,
      timezone: timezone ?? this.timezone,
      bedtimeStart: bedtimeStart ?? this.bedtimeStart,
      bedtimeEnd: bedtimeEnd ?? this.bedtimeEnd,
      score: score ?? this.score,
      scoreTotal: scoreTotal ?? this.scoreTotal,
      scoreDisturbances: scoreDisturbances ?? this.scoreDisturbances,
      scoreEfficiency: scoreEfficiency ?? this.scoreEfficiency,
      scoreLatency: scoreLatency ?? this.scoreLatency,
      scoreRem: scoreRem ?? this.scoreRem,
      scoreDeep: scoreDeep ?? this.scoreDeep,
      scoreAlignment: scoreAlignment ?? this.scoreAlignment,
      total: total ?? this.total,
      duration: duration ?? this.duration,
      awake: awake ?? this.awake,
      light: light ?? this.light,
      rem: rem ?? this.rem,
      deep: deep ?? this.deep,
      onsetLatency: onsetLatency ?? this.onsetLatency,
      restless: restless ?? this.restless,
      efficiency: efficiency ?? this.efficiency,
      midpointTime: midpointTime ?? this.midpointTime,
      hrLowest: hrLowest ?? this.hrLowest,
      hrAverage: hrAverage ?? this.hrAverage,
      rmssd: rmssd ?? this.rmssd,
      breathAverage: breathAverage ?? this.breathAverage,
      temperatureDelta: temperatureDelta ?? this.temperatureDelta,
      hypnogram5min: hypnogram5min ?? this.hypnogram5min,
      hr5min: hr5min ?? this.hr5min,
      rmssd5min: rmssd5min ?? this.rmssd5min,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'summary_date': summaryDate.toDateString(),
      'period_id': periodId,
      'is_longest': isLongest ? 1 : 0,
      'timezone': timezone,
      'bedtime_start': bedtimeStart.toString(),
      'bedtime_end': bedtimeEnd.toString(),
      'score': score,
      'score_total': scoreTotal,
      'score_disturbances': scoreDisturbances,
      'score_efficiency': scoreEfficiency,
      'score_latency': scoreLatency,
      'score_rem': scoreRem,
      'score_deep': scoreDeep,
      'score_alignment': scoreAlignment,
      'total': total,
      'duration': duration,
      'awake': awake,
      'light': light,
      'rem': rem,
      'deep': deep,
      'onset_latency': onsetLatency,
      'restless': restless,
      'efficiency': efficiency,
      'midpoint_time': midpointTime,
      'hr_lowest': hrLowest,
      'hr_average': hrAverage,
      'rmssd': rmssd,
      'breath_average': breathAverage,
      'temperature_delta': temperatureDelta,
      'hypnogram_5min': hypnogram5min,
      'hr_5min': hr5min,
      'rmssd_5min': rmssd5min,
    };
  }

  factory Sleep.fromJson(Map<String, dynamic> json) {
    return Sleep(
      summaryDate: DateTimeX.parse(json['summary_date'] ?? ''),
      periodId: json['period_id'] ?? 0,
      isLongest: json['is_longest'] == 1,
      timezone: json['timezone'] ?? 0,
      bedtimeStart: DateTimeX.parse(json['bedtime_start'] ?? ''),
      bedtimeEnd: DateTimeX.parse(json['bedtime_end'] ?? ''),
      score: json['score'] ?? 0,
      scoreTotal: json['score_total'] ?? 0,
      scoreDisturbances: json['score_disturbances'] ?? 0,
      scoreEfficiency: json['score_efficiency'] ?? 0,
      scoreLatency: json['score_latency'] ?? 0,
      scoreRem: json['score_rem'] ?? 0,
      scoreDeep: json['score_deep'] ?? 0,
      scoreAlignment: json['score_alignment'] ?? 0,
      total: json['total'] ?? 0,
      duration: json['duration'] ?? 0,
      awake: json['awake'] ?? 0,
      light: json['light'] ?? 0,
      rem: json['rem'] ?? 0,
      deep: json['deep'] ?? 0,
      onsetLatency: json['onset_latency'] ?? 0,
      restless: json['restless'] ?? 0,
      efficiency: json['efficiency'] ?? 0,
      midpointTime: json['midpoint_time'] ?? 0,
      hrLowest: json['hr_lowest'] ?? 0.0,
      hrAverage: json['hr_average'] ?? 0.0,
      rmssd: json['rmssd'] ?? 0,
      breathAverage: json['breath_average'] ?? 0.0,
      temperatureDelta: json['temperature_delta'] ?? 0.0,
      hypnogram5min: json['hypnogram_5min'] ?? '',
      hr5min: List<int>.from(json['hr_5min'] ?? []),
      rmssd5min: List<int>.from(json['rmssd_5min'] ?? []),
    );
  }

  @override
  String toString() {
    return 'Sleep(summaryDate: ${summaryDate.toDateString()}, periodId: $periodId, isLongest: $isLongest, timezone: $timezone, bedtimeStart: $bedtimeStart, bedtimeEnd: $bedtimeEnd, score: $score, scoreTotal: $scoreTotal, scoreDisturbances: $scoreDisturbances, scoreEfficiency: $scoreEfficiency, scoreLatency: $scoreLatency, scoreRem: $scoreRem, scoreDeep: $scoreDeep, scoreAlignment: $scoreAlignment, total: $total, duration: $duration, awake: $awake, light: $light, rem: $rem, deep: $deep, onsetLatency: $onsetLatency, restless: $restless, efficiency: $efficiency, midpointTime: $midpointTime, hrLowest: $hrLowest, hrAverage: $hrAverage, rmssd: $rmssd, breathAverage: $breathAverage, temperatureDelta: $temperatureDelta, hypnogram5min: $hypnogram5min, hr5min: $hr5min, rmssd5min: $rmssd5min)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;
    return other is Sleep &&
        other.summaryDate == summaryDate &&
        other.periodId == periodId &&
        other.isLongest == isLongest &&
        other.timezone == timezone &&
        other.bedtimeStart == bedtimeStart &&
        other.bedtimeEnd == bedtimeEnd &&
        other.score == score &&
        other.scoreTotal == scoreTotal &&
        other.scoreDisturbances == scoreDisturbances &&
        other.scoreEfficiency == scoreEfficiency &&
        other.scoreLatency == scoreLatency &&
        other.scoreRem == scoreRem &&
        other.scoreDeep == scoreDeep &&
        other.scoreAlignment == scoreAlignment &&
        other.total == total &&
        other.duration == duration &&
        other.awake == awake &&
        other.light == light &&
        other.rem == rem &&
        other.deep == deep &&
        other.onsetLatency == onsetLatency &&
        other.restless == restless &&
        other.efficiency == efficiency &&
        other.midpointTime == midpointTime &&
        other.hrLowest == hrLowest &&
        other.hrAverage == hrAverage &&
        other.rmssd == rmssd &&
        other.breathAverage == breathAverage &&
        other.temperatureDelta == temperatureDelta &&
        other.hypnogram5min == hypnogram5min &&
        listEquals(other.hr5min, hr5min) &&
        listEquals(other.rmssd5min, rmssd5min);
  }

  @override
  int get hashCode {
    return Object.hashAll([
      summaryDate,
      periodId,
      isLongest,
      timezone,
      bedtimeStart,
      bedtimeEnd,
      score,
      scoreTotal,
      scoreDisturbances,
      scoreEfficiency,
      scoreLatency,
      scoreRem,
      scoreDeep,
      scoreAlignment,
      total,
      duration,
      awake,
      light,
      rem,
      deep,
      onsetLatency,
      restless,
      efficiency,
      midpointTime,
      hrLowest,
      hrAverage,
      rmssd,
      breathAverage,
      temperatureDelta,
      hypnogram5min,
      hr5min,
      rmssd5min,
    ]);
  }
}
