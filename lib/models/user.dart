import 'package:go_play_bloc/goplay_bloc.dart';

class User {
  final int userId;
  final String firstName;
  final String lastName;
  final String password;
  final String emailAddress;

  User({
    this.userId = 0,
    this.firstName,
    this.lastName,
    this.password,
    this.emailAddress = '',
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userId: json['userId'],
      firstName: json['userFirstName'],
      lastName: json['userLastName'],
      password: json['password'],
      emailAddress: json['emailAddress'],
    );
  }

  Map<String, dynamic> toJson(User user) {
    return {
      'UserId': user.userId,
      'UserFirstName': user.firstName,
      'UserLastName': user.lastName,
      'Password': user.password,
      'EmailAddress': user.emailAddress
    };
  }
}
