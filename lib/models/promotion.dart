import 'package:go_play_bloc/models/models.dart';

class Promotion {
  final int promotionId;
  final String promotionName;
  final Venue venue;

  Promotion({this.promotionId = 0, this.promotionName, this.venue});

  factory Promotion.fromJson(Map<String, dynamic> json) {
    return Promotion(
      promotionId: json['promotionId'],
      promotionName: json['promotionName'],
      venue: Venue.fromJson(json['venue']),
    );
  }

  Map<String, dynamic> toJson(Promotion promotion) {
    return {
      'PromotionId': promotion.promotionId,
      'PromotionName': promotion.promotionName,
      'VenueId': promotion.venue.venueId
    };
  }
}
