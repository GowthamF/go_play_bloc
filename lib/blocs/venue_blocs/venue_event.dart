import 'package:equatable/equatable.dart';
import 'package:go_play_bloc/goplay_bloc.dart';

abstract class VenueEvent extends Equatable {
  const VenueEvent();

  @override
  List<Object> get props => [];
}

class GetAllVenues extends VenueEvent {}

class GetVenue extends VenueEvent {
  final Venue venue;

  const GetVenue({this.venue});

  @override
  List<Object> get props => [venue];
}

class PostVenue extends VenueEvent {
  final Venue venue;

  const PostVenue({this.venue});

  @override
  List<Object> get props => [venue];
}

class UpdateVenue extends VenueEvent {
  final Venue venue;

  const UpdateVenue({this.venue});

  @override
  List<Object> get props => [venue];
}

class DeleteVenue extends VenueEvent {
  final Venue venue;

  const DeleteVenue({this.venue});

  @override
  List<Object> get props => [venue];
}

class AddRatings extends VenueEvent {
  final Venue venue;

  const AddRatings({this.venue});

  @override
  List<Object> get props => [venue];
}
