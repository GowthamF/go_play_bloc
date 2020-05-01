import 'dart:convert';

import 'package:go_play_bloc/goplay_bloc.dart';
import 'package:http/http.dart' as http;

class PromotionApi {
  final http.Client httpClient = http.Client();

  Future<List<Promotion>> getAllPromotions() async {
    final response =
        await httpClient.get('${Constants.baseUrl}/api/Promotions');

    List<Promotion> _promotionList = [];

    if (response.statusCode == 200) {
      dynamic _promotion = jsonDecode(response.body);

      for (var i = 0; i < _promotion.length; i++) {
        var promotion = Promotion.fromJson(_promotion[i]);
        _promotionList.add(promotion);
      }
    }

    return _promotionList;
  }

  Future<Promotion> getPromotion(int id) async {
    final response =
        await httpClient.get('${Constants.baseUrl}/api/Promotions/$id');

    Promotion _promotion = Promotion();

    if (response.statusCode == 200) {
      dynamic promotion = jsonDecode(response.body);
      _promotion = Promotion.fromJson(promotion);
    }

    return _promotion;
  }

  Future<Promotion> postPromotion(Promotion promotion) async {
    final response = await httpClient.post(
        '${Constants.baseUrl}/api/Promotions',
        headers: Constants.headers,
        body: jsonEncode(promotion.toJson(promotion)));

    Promotion _promotion = Promotion();

    if (response.statusCode == 201) {
      dynamic promotion = jsonDecode(response.body);
      _promotion = Promotion(promotionId: promotion);
    }

    return _promotion;
  }

  Future<Promotion> updatePromotion(Promotion promotion) async {
    final response = await httpClient.put(
        '${Constants.baseUrl}/api/Promotions/${promotion.promotionId}',
        headers: Constants.headers,
        body: jsonEncode(promotion.toJson(promotion)));

    Promotion _promotion = Promotion();

    if (response.statusCode == 200) {
      dynamic promotion = jsonDecode(response.body);
      _promotion = Promotion.fromJson(promotion);
    }

    return _promotion;
  }

  Future<Promotion> deletePromotion(Promotion promotion) async {
    final response = await httpClient
        .delete('${Constants.baseUrl}/api/Promotions/${promotion.promotionId}');

    Promotion _promotion = Promotion();

    if (response.statusCode == 200) {
      dynamic promotion = jsonDecode(response.body);
      _promotion = Promotion.fromJson(promotion);
    }

    return _promotion;
  }
}
