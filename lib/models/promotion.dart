import 'package:go_play_bloc/models/models.dart';

class Promotion {
  final int promotionId;
  final String promotionName;
  final String promotionImage;
  final String description;
  final int promotionAmount;

  Promotion(
      {this.promotionId = 0,
      this.promotionName,
      this.promotionImage,
      this.description,
      this.promotionAmount});

  factory Promotion.fromJson(Map<String, dynamic> json) {
    return Promotion(
      promotionId: json['promotionId'],
      promotionName: json['promotionName'],
      promotionImage: json['promotionPictures'],
      description: json['description'],
      promotionAmount: json['promotionAmount'],
    );
  }

  Map<String, dynamic> toJson(Promotion promotion) {
    return {
      'PromotionId': promotion.promotionId,
      'PromotionName': promotion.promotionName,
      'PromotionPictures': promotion.promotionImage,
      'Description': promotion.description,
      'PromotionAmount': promotion.promotionAmount,
    };
  }
}
