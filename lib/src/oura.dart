import 'dart:convert';

import 'package:http/http.dart' as http;

import 'activity.dart';
import 'bedtime.dart';
import 'exceptions.dart';
import 'ext.dart';
import 'readiness.dart';
import 'sleep.dart';
import 'user.dart';

const kUrl = 'api.ouraring.com';

/// Oura Cloud API v1 provides data in daily summaries. There are 3 types of
/// summaries: Sleep, Activity and Readiness. For a single day, there can be
/// several sleep periods and readiness summaries, but only one activity
/// summary.
///
/// The first date is the start date and the second date is the end date
/// (inclusive). If you omit the start date, it will be set to one week ago. If
/// you omit the end date, it will be set to the current day.
///
/// See also:
///  * [Activity]
///  * [Bedtime]
///  * [Readiness]
///  * [Sleep]
///  * [User]
class Oura {
  const Oura({required String token}) : _token = token;

  final String _token;

  /// @internal
  Future<http.Response> get(String path,
      {DateTime? start, DateTime? end}) async {
    try {
      final response = await http.get(Uri.https(kUrl, 'v1/$path', {
        'access_token': _token,
        if (start != null) 'start': start.toDateString(),
        if (end != null) 'end': end.toDateString(),
      }));
      if (response.statusCode != 200) {
        final body = json.decode(response.body);
        throw OuraException(
          status: body['status'],
          title: body['title'],
          detail: body['detail'],
        );
      }
      return response;
    } on http.ClientException catch (e) {
      // https://github.com/dart-lang/sdk/issues/46442
      throw OuraException(status: 401, title: 'Unauthorized');
    }
  }

  /// {@macro oura.activity}
  ///
  /// See also:
  ///  * [Activity]
  Future<List<Activity>> activity({DateTime? start, DateTime? end}) async {
    final response = await get('activity', start: start, end: end);
    final activity = json.decode(response.body)['activity'] as List;
    return activity.map((activity) => Activity.fromJson(activity)).toList();
  }

  /// {@macro oura.bedtime}
  ///
  /// See also:
  ///  * [Bedtime]
  Future<List<Bedtime>> bedtime({DateTime? start, DateTime? end}) async {
    final response = await get('bedtime', start: start, end: end);
    final bedtime = json.decode(response.body)['ideal_bedtimes'] as List;
    return bedtime.map((bedtime) => Bedtime.fromJson(bedtime)).toList();
  }

  /// {@macro oura.readiness}
  ///
  /// See also:
  ///  * [Readiness]
  Future<List<Readiness>> readiness({DateTime? start, DateTime? end}) async {
    final response = await get('readiness', start: start, end: end);
    final readiness = json.decode(response.body)['readiness'] as List;
    return readiness.map((readiness) => Readiness.fromJson(readiness)).toList();
  }

  /// {@macro oura.sleep}
  ///
  /// See also:
  ///  * [Sleep]
  Future<List<Sleep>> sleep({DateTime? start, DateTime? end}) async {
    final response = await get('sleep', start: start, end: end);
    final sleep = json.decode(response.body)['sleep'] as List;
    return sleep.map((sleep) => Sleep.fromJson(sleep)).toList();
  }

  /// {@macro oura.user}
  ///
  /// See also:
  ///  * [User]
  Future<User> user() async {
    final response = await get('userinfo');
    return User.fromJson(json.decode(response.body));
  }
}
