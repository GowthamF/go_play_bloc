import 'package:go_play_bloc/goplay_bloc.dart';

class ReviewRepository {
  final ReviewApi reviewApi = ReviewApi();

  Future<List<Review>> getAllReviews(int venueId) async {
    return await reviewApi.getAllReviews(venueId);
  }

  Future<Review> getReview(Review review) async {
    return await reviewApi.getReview(review.reviewId);
  }

  Future<Review> updateReview(Review review) async {
    return await reviewApi.updateReview(review);
  }

  Future<Review> postReview(Review review) async {
    return await reviewApi.postReview(review);
  }

  Future<Review> deleteReview(Review review) async {
    return await reviewApi.deleteReview(review);
  }

  Future<List<Review>> getReviews() async {
    return await reviewApi.getReviews();
  }
}
