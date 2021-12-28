import 'enums.dart';
import 'ext.dart';

class Readiness {
  Readiness({
    required this.summaryDate,
    required this.periodId,
    required this.score,
    required this.scorePreviousNight,
    required this.scoreSleepBalance,
    required this.scorePreviousDay,
    required this.scoreActivityBalance,
    required this.scoreRestingHr,
    required this.scoreHrvBalance,
    required this.scoreRecoveryIndex,
    required this.scoreTemperature,
    required this.restModeState,
  });

  final DateTime summaryDate;
  final int periodId;
  final int score;
  final int scorePreviousNight;
  final int scoreSleepBalance;
  final int scorePreviousDay;
  final int scoreActivityBalance;
  final int scoreRestingHr;
  final int scoreHrvBalance;
  final int scoreRecoveryIndex;
  final int scoreTemperature;
  final RestModeState restModeState;

  Readiness copyWith({
    DateTime? summaryDate,
    int? periodId,
    int? score,
    int? scorePreviousNight,
    int? scoreSleepBalance,
    int? scorePreviousDay,
    int? scoreActivityBalance,
    int? scoreRestingHr,
    int? scoreHrvBalance,
    int? scoreRecoveryIndex,
    int? scoreTemperature,
    RestModeState? restModeState,
  }) {
    return Readiness(
      summaryDate: summaryDate ?? this.summaryDate,
      periodId: periodId ?? this.periodId,
      score: score ?? this.score,
      scorePreviousNight: scorePreviousNight ?? this.scorePreviousNight,
      scoreSleepBalance: scoreSleepBalance ?? this.scoreSleepBalance,
      scorePreviousDay: scorePreviousDay ?? this.scorePreviousDay,
      scoreActivityBalance: scoreActivityBalance ?? this.scoreActivityBalance,
      scoreRestingHr: scoreRestingHr ?? this.scoreRestingHr,
      scoreHrvBalance: scoreHrvBalance ?? this.scoreHrvBalance,
      scoreRecoveryIndex: scoreRecoveryIndex ?? this.scoreRecoveryIndex,
      scoreTemperature: scoreTemperature ?? this.scoreTemperature,
      restModeState: restModeState ?? this.restModeState,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'summary_date': summaryDate.toDateString(),
      'period_id': periodId,
      'score': score,
      'score_previous_night': scorePreviousNight,
      'score_sleep_balance': scoreSleepBalance,
      'score_previous_day': scorePreviousDay,
      'score_activity_balance': scoreActivityBalance,
      'score_resting_hr': scoreRestingHr,
      'score_hrv_balance': scoreHrvBalance,
      'score_recovery_index': scoreRecoveryIndex,
      'score_temperature': scoreTemperature,
      'rest_mode_state': restModeState.index,
    };
  }

  factory Readiness.fromJson(Map<String, dynamic> json) {
    return Readiness(
      summaryDate: DateTimeX.parse(json['summary_date'] ?? ''),
      periodId: json['period_id'] ?? 0,
      score: json['score'] ?? 0,
      scorePreviousNight: json['score_previous_night'] ?? 0,
      scoreSleepBalance: json['score_sleep_balance'] ?? 0,
      scorePreviousDay: json['score_previous_day'] ?? 0,
      scoreActivityBalance: json['score_activity_balance'] ?? 0,
      scoreRestingHr: json['score_resting_hr'] ?? 0,
      scoreHrvBalance: json['score_hrv_balance'] ?? 0,
      scoreRecoveryIndex: json['score_recovery_index'] ?? 0,
      scoreTemperature: json['score_temperature'] ?? 0,
      restModeState: RestModeState.values[json['rest_mode_state'] ?? 0],
    );
  }

  @override
  String toString() {
    return 'Readiness(summary_date: ${summaryDate.toDateString()}, period_id: $periodId, score: $score, score_previous_night: $scorePreviousNight, score_sleep_balance: $scoreSleepBalance, score_previous_day: $scorePreviousDay, score_activity_balance: $scoreActivityBalance, score_resting_hr: $scoreRestingHr, score_hrv_balance: $scoreHrvBalance, score_recovery_index: $scoreRecoveryIndex, score_temperature: $scoreTemperature, rest_mode_state: $restModeState)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Readiness &&
        other.summaryDate.toDateString() == summaryDate.toDateString() &&
        other.periodId == periodId &&
        other.score == score &&
        other.scorePreviousNight == scorePreviousNight &&
        other.scoreSleepBalance == scoreSleepBalance &&
        other.scorePreviousDay == scorePreviousDay &&
        other.scoreActivityBalance == scoreActivityBalance &&
        other.scoreRestingHr == scoreRestingHr &&
        other.scoreHrvBalance == scoreHrvBalance &&
        other.scoreRecoveryIndex == scoreRecoveryIndex &&
        other.scoreTemperature == scoreTemperature &&
        other.restModeState == restModeState;
  }

  @override
  int get hashCode {
    return Object.hashAll([
      summaryDate.toDateString(),
      periodId,
      score,
      scorePreviousNight,
      scoreSleepBalance,
      scorePreviousDay,
      scoreActivityBalance,
      scoreRestingHr,
      scoreHrvBalance,
      scoreRecoveryIndex,
      scoreTemperature,
      restModeState,
    ]);
  }
}
