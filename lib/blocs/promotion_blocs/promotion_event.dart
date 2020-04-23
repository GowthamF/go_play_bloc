import 'package:equatable/equatable.dart';
import 'package:go_play_bloc/goplay_bloc.dart';

abstract class PromotionEvent extends Equatable {
  const PromotionEvent();

  @override
  List<Object> get props => [];
}

class GetAllPromotions extends PromotionEvent {}

class GetPromotion extends PromotionEvent {
  final Promotion promotion;

  const GetPromotion({this.promotion});

  @override
  List<Object> get props => [promotion];
}

class PostPromotion extends PromotionEvent {
  final Promotion promotion;

  const PostPromotion({this.promotion});

  @override
  List<Object> get props => [promotion];
}

class UpdatePromotion extends PromotionEvent {
  final Promotion promotion;

  const UpdatePromotion({this.promotion});

  @override
  List<Object> get props => [promotion];
}

class DeletePromotion extends PromotionEvent {
  final Promotion promotion;

  const DeletePromotion({this.promotion});

  @override
  List<Object> get props => [promotion];
}
