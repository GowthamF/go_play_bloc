import 'package:bloc/bloc.dart';
import 'package:go_play_bloc/goplay_bloc.dart';

class VenueBloc extends Bloc<VenueEvent, VenueState> {
  final VenueRepository _venueRepository = VenueRepository();

  @override
  VenueState get initialState => VenueEmpty();

  @override
  Stream<VenueState> mapEventToState(VenueEvent event) async* {
    if (event is GetAllVenues) {
      yield VenueLoading();

      try {
        List<Venue> venues = await _venueRepository.getAllVenues();
        yield VenueAllLoaded(venues: venues);
      } catch (ex) {
        print(ex);
        VenueError();
      }
    } else if (event is GetVenue) {
      yield VenueLoading();
      try {
        Venue venue = await _venueRepository.getVenue(event.venue);
        yield VenueLoaded(venue: venue);
      } catch (ex) {
        print(ex);
        VenueError();
      }
    } else if (event is UpdateVenue) {
      yield VenueLoading();
      try {
        Venue venue = await _venueRepository.updateVenue(event.venue);
        yield VenueLoaded(venue: venue);
      } catch (ex) {
        print(ex);
        VenueError();
      }
    } else if (event is DeleteVenue) {
      yield VenueLoading();
      try {
        Venue venue = await _venueRepository.deleteVenue(event.venue);
        yield VenueLoaded(venue: venue);
      } catch (ex) {
        print(ex);
        VenueError();
      }
    } else if (event is PostVenue) {
      yield VenueLoading();
      try {
        Venue venue = await _venueRepository.postVenue(event.venue);
        yield VenueLoaded(venue: venue);
      } catch (ex) {
        print(ex);
        VenueError();
      }
    }
  }
}
