import 'package:bloc/bloc.dart';
import 'package:go_play_bloc/goplay_bloc.dart';

class GamificationBloc extends Bloc<GamificationEvent, GamificationState> {
  final GamificationRepository _gamificationRepository =
      GamificationRepository();

  @override
  GamificationState get initialState => GamificationEmpty();

  @override
  Stream<GamificationState> mapEventToState(GamificationEvent event) async* {
    if (event is GetAllGamifications) {
      yield GamificationLoading();

      try {
        List<Gamification> gamifications =
            await _gamificationRepository.getAllGamifications();
        yield GamificationAllLoaded(gamification: gamifications);
      } catch (ex) {
        print(ex);
        GamificationError();
      }
    } else if (event is GetGamification) {
      yield GamificationLoading();
      try {
        Gamification gamification =
            await _gamificationRepository.getGamification(event.gamification);
        yield GamificationLoaded(gamification: gamification);
      } catch (ex) {
        print(ex);
        GamificationError();
      }
    } else if (event is UpdateGamification) {
      yield GamificationLoading();
      try {
        Gamification gamification = await _gamificationRepository
            .updateGamification(event.gamification);
        yield GamificationLoaded(gamification: gamification);
      } catch (ex) {
        print(ex);
        GamificationError();
      }
    } else if (event is DeleteGamification) {
      yield GamificationLoading();
      try {
        Gamification gamification = await _gamificationRepository
            .deleteGamification(event.gamification);
        yield GamificationLoaded(gamification: gamification);
      } catch (ex) {
        print(ex);
        GamificationError();
      }
    } else if (event is PostGamification) {
      yield GamificationLoading();
      try {
        Gamification gamification =
            await _gamificationRepository.postGamification(event.gamification);
        yield GamificationLoaded(gamification: gamification);
      } catch (ex) {
        print(ex);
        GamificationError();
      }
    }
  }
}
