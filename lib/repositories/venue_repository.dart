import 'package:go_play_bloc/goplay_bloc.dart';

class VenueRepository {
  final VenueApi venueApi = VenueApi();

  Future<List<Venue>> getAllVenues() async {
    return await venueApi.getAllVenues();
  }

  Future<Venue> getVenue(Venue venue) async {
    return await venueApi.getVenue(venue.venueId);
  }

  Future<Venue> updateVenue(Venue venue) async {
    return await venueApi.updateVenue(venue);
  }

  Future<Venue> postVenue(Venue venue) async {
    return await venueApi.postVenue(venue);
  }

  Future<Venue> deleteVenue(Venue venue) async {
    return await venueApi.deleteVenue(venue);
  }
}
