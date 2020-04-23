import 'package:equatable/equatable.dart';
import 'package:go_play_bloc/goplay_bloc.dart';

abstract class GamificationState extends Equatable {
  const GamificationState();

  @override
  List<Object> get props => [];
}

class GamificationEmpty extends GamificationState {}

class GamificationLoading extends GamificationState {}

class GamificationLoaded extends GamificationState {
  final Gamification gamification;

  const GamificationLoaded({this.gamification});

  @override
  List<Object> get props => [gamification];
}

class GamificationAllLoaded extends GamificationState {
  final List<Gamification> gamification;

  const GamificationAllLoaded({this.gamification});

  @override
  List<Object> get props => [gamification];
}

class GamificationError extends GamificationState {}
