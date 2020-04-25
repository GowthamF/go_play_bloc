import 'package:bloc/bloc.dart';
import 'package:go_play_bloc/goplay_bloc.dart';

class ReviewBloc extends Bloc<ReviewEvent, ReviewState> {
  final ReviewRepository _reviewRepository = ReviewRepository();

  @override
  ReviewState get initialState => ReviewEmpty();

  @override
  Stream<ReviewState> mapEventToState(ReviewEvent event) async* {
    if (event is GetAllReviews) {
      yield ReviewLoading();

      try {
        List<Review> reviews =
            await _reviewRepository.getAllReviews(event.venueId);
        yield ReviewAllLoaded(review: reviews);
      } catch (ex) {
        print(ex);
        ReviewError();
      }
    } else if (event is GetReview) {
      yield ReviewLoading();
      try {
        Review review = await _reviewRepository.getReview(event.review);
        yield ReviewLoaded(review: review);
      } catch (ex) {
        print(ex);
        ReviewError();
      }
    } else if (event is UpdateReview) {
      yield ReviewLoading();
      try {
        Review review = await _reviewRepository.updateReview(event.review);
        yield ReviewLoaded(review: review);
      } catch (ex) {
        print(ex);
        ReviewError();
      }
    } else if (event is DeleteReview) {
      yield ReviewLoading();
      try {
        Review review = await _reviewRepository.deleteReview(event.review);
        yield ReviewLoaded(review: review);
      } catch (ex) {
        print(ex);
        ReviewError();
      }
    } else if (event is PostReview) {
      yield ReviewLoading();
      try {
        Review review = await _reviewRepository.postReview(event.review);
        yield ReviewLoaded(review: review);
      } catch (ex) {
        print(ex);
        ReviewError();
      }
    }
  }
}
