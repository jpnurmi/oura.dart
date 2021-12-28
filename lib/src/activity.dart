import 'package:collection/collection.dart';

import 'enums.dart';
import 'ext.dart';

/// {@template oura.activity}
/// Activity summary contains daily activity summary values and detailed
/// activity levels. Activity levels are expresses in metabolic-equivalent
/// minutes (MET mins). Oura tracks activity based on the movement.
///
/// Your Activity Score is an overall measure of how active you've been today,
/// and over the past seven days. Activity contributors are calculated over
/// several days.
/// {@endtemplate}
///
/// See also:
///  * [Oura.activity]
class Activity {
  Activity({
    required this.summaryDate,
    required this.dayStart,
    required this.dayEnd,
    required this.timezone,
    required this.score,
    required this.scoreStayActive,
    required this.scoreMoveEveryHour,
    required this.scoreMeetDailyTargets,
    required this.scoreTrainingFrequency,
    required this.scoreTrainingVolume,
    required this.scoreRecoveryTime,
    required this.dailyMovement,
    required this.nonWear,
    required this.rest,
    required this.inactive,
    required this.inactivityAlerts,
    required this.low,
    required this.medium,
    required this.high,
    required this.steps,
    required this.calTotal,
    required this.calActive,
    required this.metMinInactive,
    required this.metMinLow,
    required this.metMinMediumPlus,
    required this.metMinMedium,
    required this.metMinHigh,
    required this.averageMet,
    required this.class5min,
    required this.met1min,
    required this.restModeState,
  });

  /// Date when the activity period started. Oura activity period is from 4 AM
  /// to 3:59 AM user's local time.
  final DateTime summaryDate;

  /// UTC time when the activity day began. Oura activity day is usually from
  /// 4AM to 4AM local time.
  final DateTime dayStart;

  /// Date time UTC time when the activity day ended. Oura activity day is
  /// usually from 4AM to 4AM local time.
  final DateTime dayEnd;

  /// Timezone offset from UTC as minutes. For example, EEST (Eastern European
  /// Summer Time, +3h) is 180. PST (Pacific Standard Time, -8h) is -480. Note
  /// that timezone information is also available in the datetime values
  /// themselves.
  final int timezone;

  /// Activity score provides an estimate how well recent physical activity has
  /// matched ring user's needs. It is calculated as a weighted average of
  /// activity score contributors that represent one aspect of suitability of
  /// the activity each. The contributor values are also available as separate
  /// parameters.
  final int score;

  /// This activity score contributor indicates how well the ring user has
  /// managed to avoid of inactivity (sitting or standing still) during last 24
  /// hours. The more inactivity, the lower contributor value.
  ///
  /// The contributor value is 100 when inactive time during past 24 hours is
  /// below 5 hours. The contributor value is above 95 when inactive time during
  ///  past 24 hours is below 7 hours.
  ///
  /// The weight of scoreStayActive in activity score calculation is 0.15.
  final int scoreStayActive;

  /// This activity score contributor indicates how well the ring user has
  /// managed to avoid long periods of inactivity (sitting or standing still)
  /// during last 24 hours. The contributor includes number of continuous
  /// inactive periods of 60 minutes or more (excluding sleeping). The more long
  /// inactive periods, the lower contributor value.
  ///
  /// The contributor value is 100 when no continuous inactive periods of 60
  /// minutes or more have been registered. The contributor value is above 95
  /// when at most one continuous inactive period of 60 minutes or more has been
  /// registered.
  ///
  /// The weight of scoreMoveEveryHour in activity score calculation is 0.10.
  final int scoreMoveEveryHour;

  /// This activity score contributor indicates how often the ring user has
  /// reached his/her daily activity target during seven last days (100 = six or
  /// seven times, 95 = five times).
  ///
  /// The weight of scoreMeetDailyTargets in activity score calculation is 0.25.
  final int scoreMeetDailyTargets;

  /// This activity score contributor indicates how regularly the ring user has
  /// had physical exercise the ring user has got during last seven days.
  ///
  /// The contributor value is 100 when the user has got more than 100 minutes
  /// of medium or high intensity activity on at least four days during past
  /// seven days. The contributor value is 95 when the user has got more than
  /// 100 minutes of medium or high intensity activity on at least three days
  /// during past seven days.
  ///
  /// The weight of scoreTrainingFrequency in activity score calculation is
  /// 0.10.
  final int scoreTrainingFrequency;

  /// This activity score contributor indicates how much physical exercise the
  /// ring user has got during last seven days.
  ///
  /// The contributor value is 100 when thes sum of weekly MET minutes is over
  /// 2000. The contributor value is 95 when the sum of weekly MET minutes is over
  /// 750. There is a weighting function so that the effect of each day gradually
  /// disappears.
  ///
  /// The weight of scoreTrainingVolume in activity score calculation is 0.15.
  final int scoreTrainingVolume;

  /// This activity score contributor indicates if the user has got enough
  /// recovery time during last seven days.
  ///
  /// The contributor value is 100 when: 1. The user has got at least two
  /// recovery days during past 7 days. 2. No more than two days elapsed after
  /// the latest recovery day.
  ///
  /// The contributor value is 95 when: 1. The user has got at least one
  /// recovery day during past 7 days. 2. No more than three days elapsed after
  /// the latest recovery day.
  ///
  /// Here a day is considered as a recovery day when amount of high intensity
  /// activity did not exceed 100 MET minutes and amount of medium intensity
  /// activity did not exceed 200 MET minutes. The exact limits will be age and
  /// gender dependent.
  ///
  /// The weight of scoreRecoveryTime in activity score calculation is 0.25.
  final int scoreRecoveryTime;

  /// Daily physical activity as equal meters i.e. amount of walking needed to
  ///  get the same amount of activity.
  final int dailyMovement;

  /// Number of minutes during the day when the user was not wearing the ring.
  /// Can be used as a proxy for data accuracy, i.e. how well the measured
  /// physical activity represents actual total activity of the ring user.
  final int nonWear;

  /// Number of minutes during the day spent resting i.e. sleeping or lying
  /// down (average MET level of the minute is below 1.05).
  final int rest;

  /// Number of inactive minutes (sitting or standing still, average MET level
  /// of the minute between 1.05 and 2) during the day.
  final int inactive;

  /// Number of continuous inactive periods of 60 minutes or more during the
  /// day.
  final int inactivityAlerts;

  /// Number of minutes during the day with low intensity activity (e.g.
  /// household work, average MET level of the minute between 2 and age
  /// dependent limit).
  final int low;

  /// Number of minutes during the day with medium intensity activity (e.g.
  /// walking). The upper and lower MET level limits for medium intensity
  /// activity depend on user's age and gender.
  final int medium;

  /// Number of minutes during the day with high intensity activity (e.g.
  /// running). The lower MET level limit for high intensity activity depends on
  /// user's age and gender.
  final int high;

  /// Total number of steps registered during the day.
  final int steps;

  /// Total energy consumption during the day including Basal Metabolic Rate in
  /// kilocalories.
  final int calTotal;

  /// Energy consumption caused by the physical activity of the day in
  /// kilocalories.
  final int calActive;

  /// Total MET minutes accumulated during inactive minutes of the day.
  final int metMinInactive;

  /// Total MET minutes accumulated during low intensity activity minutes of the
  /// day.
  final int metMinLow;

  /// Total MET minutes accumulated during medium and high intensity activity
  /// minutes of the day.
  final int metMinMediumPlus;

  /// Total MET minutes accumulated during medium intensity activity minutes of
  /// the day.
  final int metMinMedium;

  /// Total MET minutes accumulated during high intensity activity minutes of
  /// the day.
  final int metMinHigh;

  /// Average MET level during the whole day.
  final double averageMet;

  /// A string that contains one character for each starting five minutes of the
  /// activity period, so that the first period starts from 4 AM local time:
  /// 0: Non-wear
  /// 1: Rest (MET level below 1.05)
  /// 2: Inactive (MET level between 1.05 and 2)
  /// 3: Low intensity activity (MET level between 2 and age/gender dependent
  ///    limit)
  /// 4: Medium intensity activity
  /// 5: High intensity activity
  final String class5min;

  /// Average MET level for each minute of the activity period, starting from 4
  /// AM local time.
  final List<double> met1min;

  /// Indicates whether Rest Mode was enabled or recently enabled.
  ///
  /// **Note:** Missing for days before Rest Mode was available.
  final RestModeState restModeState;

  Activity copyWith({
    DateTime? summaryDate,
    DateTime? dayStart,
    DateTime? dayEnd,
    int? timezone,
    int? score,
    int? scoreStayActive,
    int? scoreMoveEveryHour,
    int? scoreMeetDailyTargets,
    int? scoreTrainingFrequency,
    int? scoreTrainingVolume,
    int? scoreRecoveryTime,
    int? dailyMovement,
    int? nonWear,
    int? rest,
    int? inactive,
    int? inactivityAlerts,
    int? low,
    int? medium,
    int? high,
    int? steps,
    int? calTotal,
    int? calActive,
    int? metMinInactive,
    int? metMinLow,
    int? metMinMediumPlus,
    int? metMinMedium,
    int? metMinHigh,
    double? averageMet,
    String? class5min,
    List<double>? met1min,
    RestModeState? restModeState,
  }) {
    return Activity(
      summaryDate: summaryDate ?? this.summaryDate,
      dayStart: dayStart ?? this.dayStart,
      dayEnd: dayEnd ?? this.dayEnd,
      timezone: timezone ?? this.timezone,
      score: score ?? this.score,
      scoreStayActive: scoreStayActive ?? this.scoreStayActive,
      scoreMoveEveryHour: scoreMoveEveryHour ?? this.scoreMoveEveryHour,
      scoreMeetDailyTargets:
          scoreMeetDailyTargets ?? this.scoreMeetDailyTargets,
      scoreTrainingFrequency:
          scoreTrainingFrequency ?? this.scoreTrainingFrequency,
      scoreTrainingVolume: scoreTrainingVolume ?? this.scoreTrainingVolume,
      scoreRecoveryTime: scoreRecoveryTime ?? this.scoreRecoveryTime,
      dailyMovement: dailyMovement ?? this.dailyMovement,
      nonWear: nonWear ?? this.nonWear,
      rest: rest ?? this.rest,
      inactive: inactive ?? this.inactive,
      inactivityAlerts: inactivityAlerts ?? this.inactivityAlerts,
      low: low ?? this.low,
      medium: medium ?? this.medium,
      high: high ?? this.high,
      steps: steps ?? this.steps,
      calTotal: calTotal ?? this.calTotal,
      calActive: calActive ?? this.calActive,
      metMinInactive: metMinInactive ?? this.metMinInactive,
      metMinLow: metMinLow ?? this.metMinLow,
      metMinMediumPlus: metMinMediumPlus ?? this.metMinMediumPlus,
      metMinMedium: metMinMedium ?? this.metMinMedium,
      metMinHigh: metMinHigh ?? this.metMinHigh,
      averageMet: averageMet ?? this.averageMet,
      class5min: class5min ?? this.class5min,
      met1min: met1min ?? this.met1min,
      restModeState: restModeState ?? this.restModeState,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'summary_date': summaryDate.toDateString(),
      'day_start': dayStart.toString(),
      'day_end': dayEnd.toString(),
      'timezone': timezone,
      'score': score,
      'score_stay_active': scoreStayActive,
      'score_move_every_hour': scoreMoveEveryHour,
      'score_meet_daily_targets': scoreMeetDailyTargets,
      'score_training_frequency': scoreTrainingFrequency,
      'score_training_volume': scoreTrainingVolume,
      'score_recovery_time': scoreRecoveryTime,
      'daily_movement': dailyMovement,
      'non_wear': nonWear,
      'rest': rest,
      'inactive': inactive,
      'inactivity_alerts': inactivityAlerts,
      'low': low,
      'medium': medium,
      'high': high,
      'steps': steps,
      'cal_total': calTotal,
      'cal_active': calActive,
      'met_min_inactive': metMinInactive,
      'met_min_low': metMinLow,
      'met_min_medium_plus': metMinMediumPlus,
      'met_min_medium': metMinMedium,
      'met_min_high': metMinHigh,
      'average_met': averageMet,
      'class_5min': class5min,
      'met_1min': met1min,
      'rest_mode_state': restModeState.index,
    };
  }

  factory Activity.fromJson(Map<String, dynamic> json) {
    return Activity(
      summaryDate: DateTimeX.parse(json['summary_date'] ?? ''),
      dayStart: DateTimeX.parse(json['day_start'] ?? ''),
      dayEnd: DateTimeX.parse(json['day_end'] ?? ''),
      timezone: json['timezone'] ?? 0,
      score: json['score'] ?? 0,
      scoreStayActive: json['score_stay_active'] ?? 0,
      scoreMoveEveryHour: json['score_move_every_hour'] ?? 0,
      scoreMeetDailyTargets: json['score_meet_daily_targets'] ?? 0,
      scoreTrainingFrequency: json['score_training_frequency'] ?? 0,
      scoreTrainingVolume: json['score_training_volume'] ?? 0,
      scoreRecoveryTime: json['score_recovery_time'] ?? 0,
      dailyMovement: json['daily_movement'] ?? 0,
      nonWear: json['non_wear'] ?? 0,
      rest: json['rest'] ?? 0,
      inactive: json['inactive'] ?? 0,
      inactivityAlerts: json['inactivity_alerts'] ?? 0,
      low: json['low'] ?? 0,
      medium: json['medium'] ?? 0,
      high: json['high'] ?? 0,
      steps: json['steps'] ?? 0,
      calTotal: json['cal_total'] ?? 0,
      calActive: json['cal_active'] ?? 0,
      metMinInactive: json['met_min_inactive'] ?? 0,
      metMinLow: json['met_min_low'] ?? 0,
      metMinMediumPlus: json['met_min_medium_plus'] ?? 0,
      metMinMedium: json['met_min_medium'] ?? 0,
      metMinHigh: json['met_min_high'] ?? 0,
      averageMet: json['average_met'] ?? 0.0,
      class5min: json['class_5min'] ?? '',
      met1min: List<double>.from(json['met_1min']),
      restModeState: RestModeState.values[json['rest_mode_state'] ?? 0],
    );
  }

  @override
  String toString() {
    return 'Activity(summaryDate: $summaryDate, dayStart: $dayStart, dayEnd: $dayEnd, timezone: $timezone, score: $score, scoreStayActive: $scoreStayActive, scoreMoveEveryHour: $scoreMoveEveryHour, scoreMeetDailyTargets: $scoreMeetDailyTargets, scoreTrainingFrequency: $scoreTrainingFrequency, scoreTrainingVolume: $scoreTrainingVolume, scoreRecoveryTime: $scoreRecoveryTime, dailyMovement: $dailyMovement, nonWear: $nonWear, rest: $rest, inactive: $inactive, inactivityAlerts: $inactivityAlerts, low: $low, medium: $medium, high: $high, steps: $steps, calTotal: $calTotal, calActive: $calActive, metMinInactive: $metMinInactive, metMinLow: $metMinLow, metMinMediumPlus: $metMinMediumPlus, metMinMedium: $metMinMedium, metMinHigh: $metMinHigh, averageMet: $averageMet, class5min: $class5min, met1min: $met1min, restModeState: $restModeState)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;
    return other is Activity &&
        other.summaryDate.toDateString() == summaryDate.toDateString() &&
        other.dayStart == dayStart &&
        other.dayEnd == dayEnd &&
        other.timezone == timezone &&
        other.score == score &&
        other.scoreStayActive == scoreStayActive &&
        other.scoreMoveEveryHour == scoreMoveEveryHour &&
        other.scoreMeetDailyTargets == scoreMeetDailyTargets &&
        other.scoreTrainingFrequency == scoreTrainingFrequency &&
        other.scoreTrainingVolume == scoreTrainingVolume &&
        other.scoreRecoveryTime == scoreRecoveryTime &&
        other.dailyMovement == dailyMovement &&
        other.nonWear == nonWear &&
        other.rest == rest &&
        other.inactive == inactive &&
        other.inactivityAlerts == inactivityAlerts &&
        other.low == low &&
        other.medium == medium &&
        other.high == high &&
        other.steps == steps &&
        other.calTotal == calTotal &&
        other.calActive == calActive &&
        other.metMinInactive == metMinInactive &&
        other.metMinLow == metMinLow &&
        other.metMinMediumPlus == metMinMediumPlus &&
        other.metMinMedium == metMinMedium &&
        other.metMinHigh == metMinHigh &&
        other.averageMet == averageMet &&
        other.class5min == class5min &&
        listEquals(other.met1min, met1min) &&
        other.restModeState == restModeState;
  }

  @override
  int get hashCode {
    return Object.hashAll([
      summaryDate.toDateString(),
      dayStart,
      dayEnd,
      timezone,
      score,
      scoreStayActive,
      scoreMoveEveryHour,
      scoreMeetDailyTargets,
      scoreTrainingFrequency,
      scoreTrainingVolume,
      scoreRecoveryTime,
      dailyMovement,
      nonWear,
      rest,
      inactive,
      inactivityAlerts,
      low,
      medium,
      high,
      steps,
      calTotal,
      calActive,
      metMinInactive,
      metMinLow,
      metMinMediumPlus,
      metMinMedium,
      metMinHigh,
      averageMet,
      class5min,
      met1min,
      restModeState,
    ]);
  }
}
