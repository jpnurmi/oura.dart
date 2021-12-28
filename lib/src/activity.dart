import 'package:collection/collection.dart';

import 'enums.dart';
import 'ext.dart';

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

  final DateTime summaryDate;
  final DateTime dayStart;
  final DateTime dayEnd;
  final int timezone;
  final int score;
  final int scoreStayActive;
  final int scoreMoveEveryHour;
  final int scoreMeetDailyTargets;
  final int scoreTrainingFrequency;
  final int scoreTrainingVolume;
  final int scoreRecoveryTime;
  final int dailyMovement;
  final int nonWear;
  final int rest;
  final int inactive;
  final int inactivityAlerts;
  final int low;
  final int medium;
  final int high;
  final int steps;
  final int calTotal;
  final int calActive;
  final int metMinInactive;
  final int metMinLow;
  final int metMinMediumPlus;
  final int metMinMedium;
  final int metMinHigh;
  final double averageMet;
  final String class5min;
  final List<double> met1min;
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
    return 'Activity(summary_date: $summaryDate, day_start: $dayStart, day_end: $dayEnd, timezone: $timezone, score: $score, score_stay_active: $scoreStayActive, score_move_every_hour: $scoreMoveEveryHour, score_meet_daily_targets: $scoreMeetDailyTargets, score_training_frequency: $scoreTrainingFrequency, score_training_volume: $scoreTrainingVolume, score_recovery_time: $scoreRecoveryTime, daily_movement: $dailyMovement, non_wear: $nonWear, rest: $rest, inactive: $inactive, inactivity_alerts: $inactivityAlerts, low: $low, medium: $medium, high: $high, steps: $steps, cal_total: $calTotal, cal_active: $calActive, met_min_inactive: $metMinInactive, met_min_low: $metMinLow, met_min_medium_plus: $metMinMediumPlus, met_min_medium: $metMinMedium, met_min_high: $metMinHigh, average_met: $averageMet, class_5min: $class5min, met_1min: $met1min, rest_mode_state: $restModeState)';
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
