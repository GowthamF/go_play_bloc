import 'package:go_play_bloc/models/models.dart';

class Gamification {
  final int gamificationId;
  final int points;
  final User user;

  Gamification({this.gamificationId = 0, this.points, this.user});

  factory Gamification.fromJson(Map<String, dynamic> json) {
    return Gamification(
        gamificationId: json['gamificationId'],
        points: json['points'],
        user: User.fromJson(json['user']));
  }

  Map<String, dynamic> toJson(Gamification gamification) {
    return {
      'GamificationId': gamification.gamificationId,
      'Points': gamification.points,
      'UserId': gamification.user.userId
    };
  }
}
