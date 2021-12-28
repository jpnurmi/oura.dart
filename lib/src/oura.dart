import 'dart:convert';

import 'package:http/http.dart' as http;

import 'activity.dart';
import 'bedtime.dart';
import 'ext.dart';
import 'readiness.dart';
import 'sleep.dart';
import 'user.dart';

const kUrl = 'api.ouraring.com';

class Oura {
  const Oura({required this.token});

  final String token;

  Future<http.Response> get(String path, {DateTime? start, DateTime? end}) {
    return http.get(Uri.https(kUrl, 'v1/$path', {
      'access_token': token,
      if (start != null) 'start': start.toDateString(),
      if (end != null) 'end': end.toDateString(),
    }));
  }

  Future<User> user() async {
    final response = await get('userinfo');
    return User.fromJson(json.decode(response.body));
  }

  Future<List<Activity>> activity({DateTime? start, DateTime? end}) async {
    final response = await get('activity', start: start, end: end);
    final activity = json.decode(response.body)['activity'] as List;
    return activity.map((activity) => Activity.fromJson(activity)).toList();
  }

  Future<List<Bedtime>> bedtime({DateTime? start, DateTime? end}) async {
    final response = await get('bedtime', start: start, end: end);
    final bedtime = json.decode(response.body)['ideal_bedtimes'] as List;
    return bedtime.map((bedtime) => Bedtime.fromJson(bedtime)).toList();
  }

  Future<List<Readiness>> readiness({DateTime? start, DateTime? end}) async {
    final response = await get('readiness', start: start, end: end);
    final readiness = json.decode(response.body)['readiness'] as List;
    return readiness.map((readiness) => Readiness.fromJson(readiness)).toList();
  }

  Future<List<Sleep>> sleep({DateTime? start, DateTime? end}) async {
    final response = await get('sleep', start: start, end: end);
    final sleep = json.decode(response.body)['sleep'] as List;
    return sleep.map((sleep) => Sleep.fromJson(sleep)).toList();
  }
}
