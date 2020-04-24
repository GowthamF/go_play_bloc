import 'dart:convert';

import 'package:go_play_bloc/goplay_bloc.dart';
import 'package:http/http.dart' as http;

class GamificationApi {
  final http.Client httpClient = http.Client();

  Future<List<Gamification>> getAllGamifications() async {
    final response =
        await httpClient.get('${Constants.baseUrl}/api/Gamifications');

    List<Gamification> _gamificationList = [];

    if (response.statusCode == 200) {
      dynamic _gamification = jsonDecode(response.body);

      for (var i = 0; i < _gamification.length; i++) {
        var gamification = Gamification.fromJson(_gamification[i]);
        _gamificationList.add(gamification);
      }
    }

    return _gamificationList;
  }

  Future<Gamification> getGamification(int id) async {
    final response =
        await httpClient.get('${Constants.baseUrl}/api/Gamifications/$id');

    Gamification _gamification = Gamification();

    if (response.statusCode == 200) {
      dynamic gamification = jsonDecode(response.body);
      _gamification = Gamification.fromJson(gamification);
    }

    return _gamification;
  }

  Future<Gamification> postGamification(Gamification gamification) async {
    final response = await httpClient.post(
        '${Constants.baseUrl}/api/Gamifications',
        headers: Constants.headers,
        body: jsonEncode(gamification.toJson(gamification)));

    Gamification _gamification = Gamification();

    if (response.statusCode == 200) {
      dynamic gamification = jsonDecode(response.body);
      _gamification = Gamification.fromJson(gamification);
    }

    return _gamification;
  }

  Future<Gamification> updateGamification(Gamification gamification) async {
    final response = await httpClient.put(
        '${Constants.baseUrl}/api/Gamifications/${gamification.gamificationId}',
        headers: Constants.headers,
        body: jsonEncode(gamification.toJson(gamification)));

    Gamification _gamification = Gamification();

    if (response.statusCode == 200) {
      dynamic gamification = jsonDecode(response.body);
      _gamification = Gamification.fromJson(gamification);
    }

    return _gamification;
  }

  Future<Gamification> deleteGamification(Gamification gamification) async {
    final response = await httpClient.delete(
        '${Constants.baseUrl}/api/Gamifications/${gamification.gamificationId}');

    Gamification _gamification = Gamification();

    if (response.statusCode == 200) {
      dynamic gamification = jsonDecode(response.body);
      _gamification = Gamification.fromJson(gamification);
    }

    return _gamification;
  }
}
