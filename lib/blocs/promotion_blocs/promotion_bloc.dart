import 'package:bloc/bloc.dart';
import 'package:go_play_bloc/goplay_bloc.dart';

class PromotionBloc extends Bloc<PromotionEvent, PromotionState> {
  final PromotionRepository _promotionRepository = PromotionRepository();

  @override
  PromotionState get initialState => PromotionEmpty();

  @override
  Stream<PromotionState> mapEventToState(PromotionEvent event) async* {
    if (event is GetAllPromotions) {
      yield PromotionLoading();

      try {
        List<Promotion> promotions =
            await _promotionRepository.getAllPromotions();
        yield PromotionAllLoaded(promotion: promotions);
      } catch (ex) {
        print(ex);
        PromotionError();
      }
    } else if (event is GetPromotion) {
      yield PromotionLoading();
      try {
        Promotion promotion =
            await _promotionRepository.getPromotion(event.promotion);
        yield PromotionLoaded(promotion: promotion);
      } catch (ex) {
        print(ex);
        PromotionError();
      }
    } else if (event is UpdatePromotion) {
      yield PromotionLoading();
      try {
        Promotion promotion =
            await _promotionRepository.updatePromotion(event.promotion);
        yield PromotionLoaded(promotion: promotion);
      } catch (ex) {
        print(ex);
        PromotionError();
      }
    } else if (event is DeletePromotion) {
      yield PromotionLoading();
      try {
        Promotion promotion =
            await _promotionRepository.deletePromotion(event.promotion);
        yield PromotionLoaded(promotion: promotion);
      } catch (ex) {
        print(ex);
        PromotionError();
      }
    } else if (event is PostPromotion) {
      yield PromotionLoading();
      try {
        Promotion promotion =
            await _promotionRepository.postPromotion(event.promotion);
        yield PromotionLoaded(promotion: promotion);
      } catch (ex) {
        print(ex);
        PromotionError();
      }
    }
  }
}
