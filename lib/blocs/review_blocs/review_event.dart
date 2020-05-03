import 'package:equatable/equatable.dart';
import 'package:go_play_bloc/goplay_bloc.dart';

abstract class ReviewEvent extends Equatable {
  const ReviewEvent();

  @override
  List<Object> get props => [];
}

class GetAllReviews extends ReviewEvent {
  final int venueId;

  const GetAllReviews({this.venueId});

  @override
  // TODO: implement props
  List<Object> get props => [venueId];
}

class GetReview extends ReviewEvent {
  final Review review;

  const GetReview({this.review});

  @override
  List<Object> get props => [review];
}

class PostReview extends ReviewEvent {
  final Review review;

  const PostReview({this.review});

  @override
  List<Object> get props => [review];
}

class UpdateReview extends ReviewEvent {
  final Review review;

  const UpdateReview({this.review});

  @override
  List<Object> get props => [review];
}

class DeleteReview extends ReviewEvent {
  final Review review;

  const DeleteReview({this.review});

  @override
  List<Object> get props => [review];
}

class GetReviews extends ReviewEvent {}
