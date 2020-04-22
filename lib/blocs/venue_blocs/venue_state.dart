import 'package:equatable/equatable.dart';
import 'package:go_play_bloc/goplay_bloc.dart';

abstract class VenueState extends Equatable {
  const VenueState();

  @override
  List<Object> get props => [];
}

class VenueEmpty extends VenueState {}

class VenueLoading extends VenueState {}

class VenueLoaded extends VenueState {
  final Venue venue;

  const VenueLoaded({this.venue});

  @override
  List<Object> get props => [venue];
}

class VenueAllLoaded extends VenueState {
  final List<Venue> venues;

  const VenueAllLoaded({this.venues});

  @override
  List<Object> get props => [venues];
}

class VenueError extends VenueState {}
