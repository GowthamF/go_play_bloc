import 'package:equatable/equatable.dart';
import 'package:go_play_bloc/goplay_bloc.dart';

abstract class ReviewState extends Equatable {
  const ReviewState();

  @override
  List<Object> get props => [];
}

class ReviewEmpty extends ReviewState {}

class ReviewLoading extends ReviewState {}

class ReviewLoaded extends ReviewState {
  final Review review;

  const ReviewLoaded({this.review});

  @override
  List<Object> get props => [review];
}

class ReviewAllLoaded extends ReviewState {
  final List<Review> review;

  const ReviewAllLoaded({this.review});

  @override
  List<Object> get props => [review];
}

class ReviewError extends ReviewState {}
