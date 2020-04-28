class Review {
  final int reviewId;
  final int venueId;
  final String reviewComment;
  final double ratings;

  Review({
    this.reviewId = 0,
    this.venueId,
    this.reviewComment,
    this.ratings = 0,
  });

  factory Review.fromJson(Map<String, dynamic> json) {
    return Review(
      reviewId: json['reviewId'],
      venueId: json['venueId'],
      reviewComment: json['reviewComment'],
      ratings: json['ratings'].toDouble(),
    );
  }

  Map<String, dynamic> toJson(Review review) {
    return {
      'ReviewId': review.reviewId,
      'ReviewComment': review.reviewComment,
      'VenueId': review.venueId,
      'Ratings': review.ratings
    };
  }
}
