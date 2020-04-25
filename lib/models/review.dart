import 'package:go_play_bloc/models/models.dart';

class Review {
  final int reviewId;
  final int venueId;
  final String reviewComment;

  Review({
    this.reviewId = 0,
    this.venueId,
    this.reviewComment,
  });

  factory Review.fromJson(Map<String, dynamic> json) {
    return Review(
      reviewId: json['reviewId'],
      venueId: json['venueId'],
      reviewComment: json['reviewComment'],
    );
  }

  Map<String, dynamic> toJson(Review review) {
    return {
      'ReviewId': review.reviewId,
      'ReviewComment': review.venueId,
      'VenueId': review.venueId,
    };
  }
}
