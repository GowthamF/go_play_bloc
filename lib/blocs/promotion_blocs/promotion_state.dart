import 'package:equatable/equatable.dart';
import 'package:go_play_bloc/goplay_bloc.dart';

abstract class PromotionState extends Equatable {
  const PromotionState();

  @override
  List<Object> get props => [];
}

class PromotionEmpty extends PromotionState {}

class PromotionLoading extends PromotionState {}

class PromotionLoaded extends PromotionState {
  final Promotion promotion;

  const PromotionLoaded({this.promotion});

  @override
  List<Object> get props => [promotion];
}

class PromotionAllLoaded extends PromotionState {
  final List<Promotion> promotion;

  const PromotionAllLoaded({this.promotion});

  @override
  List<Object> get props => [promotion];
}

class PromotionError extends PromotionState {}
