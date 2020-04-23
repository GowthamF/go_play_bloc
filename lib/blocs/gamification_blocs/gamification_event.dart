import 'package:equatable/equatable.dart';
import 'package:go_play_bloc/goplay_bloc.dart';

abstract class GamificationEvent extends Equatable {
  const GamificationEvent();

  @override
  List<Object> get props => [];
}

class GetAllGamifications extends GamificationEvent {}

class GetGamification extends GamificationEvent {
  final Gamification gamification;

  const GetGamification({this.gamification});

  @override
  List<Object> get props => [gamification];
}

class PostGamification extends GamificationEvent {
  final Gamification gamification;

  const PostGamification({this.gamification});

  @override
  List<Object> get props => [gamification];
}

class UpdateGamification extends GamificationEvent {
  final Gamification gamification;

  const UpdateGamification({this.gamification});

  @override
  List<Object> get props => [gamification];
}

class DeleteGamification extends GamificationEvent {
  final Gamification gamification;

  const DeleteGamification({this.gamification});

  @override
  List<Object> get props => [gamification];
}
