import 'package:collection/collection.dart';

import 'ext.dart';

/// {@template oura.sleep}
/// Sleep period is a nearly continuous, longish period of time spent lying down
/// in bed. For each sleep period it detects, Oura ring performs sleep analysis
/// and stores a set of measurement parameters that summarize the period. The
/// ring calculates the sleep period specific parameters within four hours from
/// the period end, but sleep analysis is always triggered when you open the
/// application.
/// {@endtemplate}
///
/// See also:
///  * [Oura.sleep]
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

  /// One day prior to the date when the sleep period ended.
  ///
  /// **Note:** this is one day before the date that is shown in the apps.
  final DateTime summaryDate;

  /// Index of the sleep period among sleep periods with the same [summaryDate],
  /// where 0 = first sleep period of the day.
  final int periodId;

  final bool isLongest;

  /// Timezone offset from UTC as minutes. For example, EEST (Eastern European
  /// Summer Time, +3h) is 180. PST (Pacific Standard Time, -8h) is -480. Note
  /// that timezone information is also available in the datetime values
  /// themselves.
  final int timezone;

  /// Local time when the sleep period started
  final DateTime bedtimeStart;

  /// Local time when the sleep period ended.
  final DateTime bedtimeEnd;

  /// Sleep score represents overall sleep quality during the sleep period. It
  /// is calculated as a weighted average of sleep score contributors that
  /// represent one aspect of sleep quality each. The sleep score contributor
  /// values are also available as separate parameters.
  final int score;

  /// Represents total sleep time's (see [total]) contribution for sleep
  /// quality. The value depends on age of the user - the younger, the more
  /// sleep is needed for good score. The weight of [scoreTotal] in sleep score
  /// calculation is 0.35.
  final int scoreTotal;

  /// Represents sleep disturbances' contribution for sleep quality. Three
  /// separate measurements are used to calculate this contributor value:
  /// 1. Wake-up count - the more wake-ups, the lower the score.
  /// 2. Got-up count - the more got-ups, the lower the score.
  /// 3. Restless sleep ([restless]) - the more motion detected during
  /// sleep, the lower the score.
  ///
  /// Each of these three values has weight 0.05 in sleep score calculation,
  /// giving [scoreDisturbances] total weight of 0.15.
  final int scoreDisturbances;

  /// Represents sleep efficiency's (see [efficiency]) contribution for sleep
  /// quality. The higher efficiency, the higher score. The weight of
  /// [scoreEfficiency] in sleep score calculation is 0.10.
  final int scoreEfficiency;

  /// Represents sleep onset latency's (see [onsetLatency]) contribution for
  /// sleep quality. A latency of about 15 minutes gives best score. Latency
  /// longer than that many indicate problems falling asleep, whereas a very
  /// short latency may be a sign of sleep debt. The weight of [scoreLatency] in
  ///  sleep score calculation is 0.10.
  final int scoreLatency;

  /// Represents REM sleep time's (see [rem]) contribution for sleep quality.
  /// The value depends on age of the user - the younger, the more sleep REM is
  /// needed for good score. The weight of [scoreRem] in sleep score calculation
  /// is 0.10.
  final int scoreRem;

  /// Represents deep (N3) sleep time's (see [deep]) contribution for sleep
  /// quality. The value depends on age of the user - the younger, the more
  /// sleep is needed for good score. The weight of [scoreDeep] in sleep score
  /// calculation is 0.10.
  final int scoreDeep;

  /// Represents circadian alignment's contribution for sleep score. Sleep
  /// midpoint time ([midpointTime]) between 12PM and 3AM gives highest score.
  /// The more the midpoint time deviates from that range, the lower the score.
  /// The weigh of [scoreAlignment] in sleep score calculation is 0.10.
  final int scoreAlignment;

  /// Total amount of sleep registered during the sleep period ([total] = [rem]
  /// + [light] + [deep]).
  final int total;

  /// Total duration of the sleep period ([duration] = [bedtimeEnd] -
  /// [bedtimeStart]).
  final int duration;

  /// Total amount of awake time registered during the sleep period.
  final int awake;

  /// Total amount of light (N1 or N2) sleep registered during the sleep period.
  final int light;

  /// Total amount of REM sleep registered during the sleep period.
  final int rem;

  /// Total amount of deep (N3) sleep registered during the sleep period.
  final int deep;

  /// Detected latency from [bedtimeStart] to the beginning of the first five
  /// minutes of persistent sleep.
  final int onsetLatency;

  /// Restlessness of the sleep time, i.e. percentage of sleep time when the
  /// user was moving.
  final int restless;

  /// Sleep efficiency is the percentage of the sleep period spent asleep (100%
  /// * [total] / [duration]).
  final int efficiency;

  /// The time in seconds from the start of sleep to the midpoint of sleep. The
  ///  midpoint ignores awake periods.
  final int midpointTime;

  /// The lowest heart rate (5 minutes sliding average) registered during the
  /// sleep period.
  final double hrLowest;

  /// The average heart rate registered during the sleep period.
  final double hrAverage;

  /// The average HRV calculated with rMSSD method.
  final int rmssd;

  /// Average respiratory rate.
  final double breathAverage;

  /// Skin temperature deviation from the long-term temperature average.
  final double temperatureDelta;

  /// A string that contains one character for each starting five minutes of the
  /// sleep period, so that the first period starts from sleep.bedtime.start: -
  /// '1' = deep (N3) sleep - '2' = light (N1 or N2) sleep - '3' = REM sleep -
  /// '4' = awake
  final String hypnogram5min;

  /// Average heart rate for each beginning 5 minutes of the sleep period, the
  /// first period starting from [bedtimeStart].
  final List<int> hr5min;

  /// The average HRV (calculated using rMSSD method) for each beginning 5
  /// minutes of the sleep period, the first period starting from
  /// [bedtimeStart].
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
        other.summaryDate.toDateString() == summaryDate.toDateString() &&
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
      summaryDate.toDateString(),
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
