import 'package:go_play_bloc/goplay_bloc.dart';

class GamificationRepository {
  final GamificationApi gamificationApi = GamificationApi();

  Future<List<Gamification>> getAllGamifications() async {
    return await gamificationApi.getAllGamifications();
  }

  Future<Gamification> getGamification(Gamification gamification) async {
    return await gamificationApi.getGamification(gamification.gamificationId);
  }

  Future<Gamification> updateGamification(int userId) async {
    return await gamificationApi.updateGamification(userId);
  }

  Future<Gamification> postGamification(Gamification gamification) async {
    return await gamificationApi.postGamification(gamification);
  }

  Future<Gamification> deleteGamification(Gamification gamification) async {
    return await gamificationApi.deleteGamification(gamification);
  }
}
