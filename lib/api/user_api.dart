import 'dart:convert';

import 'package:go_play_bloc/api/api.dart';
import 'package:go_play_bloc/models/models.dart';
import 'package:http/http.dart' as http;

class UserApi {
  final http.Client httpClient = http.Client();

  Future<User> login(User user) async {
    final response = await httpClient.post(
      '${Constants.baseUrl}/api/User/Login',
      body: jsonEncode(
        user.toJson(
          user,
        ),
      ),
    );

    User _user = User();

    if (response.statusCode == 200) {
      dynamic user = jsonDecode(response.body);

      _user = User.fromJson(user);
    }

    return _user;
  }

  Future<User> register(User user) async {
    final response = await httpClient.post(
      '${Constants.baseUrl}/api/User/Register',
      body: jsonEncode(
        user.toJson(
          user,
        ),
      ),
    );

    User _user = User();

    if (response.statusCode == 200) {
      dynamic user = jsonDecode(response.body);

      _user = User.fromJson(user);
    }

    return _user;
  }

  Future<User> updateUser(User user) async {
    final response = await httpClient.put(
      '${Constants.baseUrl}/api/User/UpdateUser/${user.userId}',
      body: jsonEncode(
        user.toJson(
          user,
        ),
      ),
    );

    User _user = User();

    if (response.statusCode == 200) {
      dynamic user = jsonDecode(response.body);

      _user = User.fromJson(user);
    }

    return _user;
  }

  Future<User> deleteUser(User user) async {
    final response = await httpClient
        .delete('${Constants.baseUrl}/api/User/UpdateUser/${user.userId}');

    User _user = User();

    if (response.statusCode == 200) {
      dynamic user = jsonDecode(response.body);

      _user = User.fromJson(user);
    }

    return _user;
  }
}
