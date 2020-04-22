import 'package:go_play_bloc/goplay_bloc.dart';

class UserRepository {
  final UserApi userApi = UserApi();

  Future<User> login(User user) async {
    return await userApi.login(user);
  }

  Future<User> register(User user) async {
    return await userApi.register(user);
  }

  Future<User> updateUser(User user) async {
    return await userApi.updateUser(user);
  }

  Future<User> deleteUser(User user) async {
    return await userApi.deleteUser(user);
  }
}
