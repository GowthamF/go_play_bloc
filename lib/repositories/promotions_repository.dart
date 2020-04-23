import 'package:go_play_bloc/goplay_bloc.dart';

class PromotionRepository {
  final PromotionApi promotionApi = PromotionApi();

  Future<List<Promotion>> getAllPromotions() async {
    return await promotionApi.getAllPromotions();
  }

  Future<Promotion> getPromotion(Promotion promotion) async {
    return await promotionApi.getPromotion(promotion.promotionId);
  }

  Future<Promotion> updatePromotion(Promotion promotion) async {
    return await promotionApi.updatePromotion(promotion);
  }

  Future<Promotion> postPromotion(Promotion promotion) async {
    return await promotionApi.postPromotion(promotion);
  }

  Future<Promotion> deletePromotion(Promotion promotion) async {
    return await promotionApi.deletePromotion(promotion);
  }
}
