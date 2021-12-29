import 'dart:io';

import 'package:oura/oura.dart';

Future<void> main() async {
  final token = Platform.environment['OURA_TOKEN'];
  assert(token != null, 'Set OURA_TOKEN environment variable');

  final oura = Oura(token: token!);

  final activity = await oura.activity();
  final bedtime = await oura.bedtime();
  final readiness = await oura.readiness();
  final sleep = await oura.sleep();
  final user = await oura.user();

  print('Hello, ${user.email}.');

  if (bedtime.isNotEmpty) {
    final last = bedtime.last;
    if (last.status != BedtimeStatus.notEnoughData) {
      final window = bedtime.last.window;
      final y = DateTime.now().year;
      final start = DateTime(y).add(Duration(seconds: window.start ?? 0));
      final end = DateTime(y).add(Duration(seconds: window.end ?? 0));
      print('Your ideal bedtime is between ${start.time()} - ${end.time()}.');
    }
  }

  if (sleep.isNotEmpty) {
    final last = sleep.last;
    final start = last.bedtimeStart.toLocal();
    final end = last.bedtimeEnd.toLocal();
    print('Last night, you slept from ${start.time()} to ${end.time()}. '
        'The score is ${last.score}.');
  }

  if (readiness.isNotEmpty && activity.isNotEmpty) {
    print('Your readiness is ${readiness.last.score}, '
        'and the activity score is ${activity.last.score}.');
  }
}

extension DateTimeFormat on DateTime {
  String time() {
    String pad(int t) => t.toString().padLeft(2, '0');
    return '${pad(hour)}:${pad(minute)}';
  }
}
