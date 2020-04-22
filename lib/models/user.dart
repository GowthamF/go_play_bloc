class User {
  final int userId;
  final String userName;
  final String password;
  final String emailAddress;

  User({this.userId = 0, this.userName, this.password, this.emailAddress = ''});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        userId: json['userId'],
        userName: json['userName'],
        password: json['password'],
        emailAddress: json['emailAddress']);
  }

  Map<String, dynamic> toJson(User user) {
    return {
      'UserId': user.userId,
      'UserName': user.userName,
      'Password': user.password,
      'EmailAddress': user.emailAddress
    };
  }
}
