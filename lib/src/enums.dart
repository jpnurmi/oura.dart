/// The status indicates whether an ideal bedtime window is available and a reason if not.
enum BedtimeStatus {
  /// Not enough data to calculate an ideal bedtime
  notEnoughData,

  /// Your sleep has been too irregular to calculate an ideal bedtime
  lowSleepScores,

  /// Bedtime guidance was calculated
  idealBedtimeAvailable,
}

enum Gender { male, female, other }

enum RestModeState {
  /// Off
  off,

  /// Entering Rest Mode
  enteringRestMode,

  /// Rest Mode
  restMode,

  /// Entering recovery
  enteringRecovery,

  /// Recovering
  recovering,
}
