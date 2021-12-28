import 'dart:convert';

import 'package:http/http.dart' as http;

import 'sleep.dart';
import 'user.dart';

const kUrl = 'api.ouraring.com';

class Oura {
  const Oura({required this.token});

  final String token;

  Future<http.Response> get(String path) {
    return http.get(Uri.https(kUrl, 'v1/$path', {'access_token': token}));
  }

  Future<User> user() async {
    final response = await get('userinfo');
    return User.fromJson(json.decode(response.body));
  }

  Future<List<Sleep>> sleep() async {
    final response = await get('sleep');
    final sleep = json.decode(response.body)['sleep'] as List;
    return sleep.map((sleep) => Sleep.fromJson(sleep)).toList();
  }
}
