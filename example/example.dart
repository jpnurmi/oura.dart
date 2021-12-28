import 'dart:io';

import 'package:oura/oura.dart';

Future<void> main() async {
  final token = Platform.environment['OURA_TOKEN'];
  assert(token != null, 'Set OURA_TOKEN environment variable');
  final oura = Oura(token: token!);
  print('user: ${await oura.user()}');
  print('sleep: ${await oura.sleep()}');
  print('activity: ${await oura.activity()}');
  print('readiness: ${await oura.readiness()}');
}
