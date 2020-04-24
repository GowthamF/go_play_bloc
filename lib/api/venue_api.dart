import 'dart:convert';

import 'package:go_play_bloc/goplay_bloc.dart';
import 'package:http/http.dart' as http;

class VenueApi {
  final http.Client httpClient = http.Client();

  Future<List<Venue>> getAllVenues() async {
    final response = await httpClient.get('${Constants.baseUrl}/api/Venues');

    List<Venue> _venueList = [];

    if (response.statusCode == 200) {
      dynamic venues = jsonDecode(response.body);

      for (var i = 0; i < venues.length; i++) {
        var venue = Venue.fromJson(venues[i]);
        _venueList.add(venue);
      }
    }

    return _venueList;
  }

  Future<Venue> getVenue(int id) async {
    final response =
        await httpClient.get('${Constants.baseUrl}/api/Venues/$id');

    Venue _venue = Venue();

    if (response.statusCode == 200) {
      dynamic venues = jsonDecode(response.body);
      _venue = Venue.fromJson(venues);
    }

    return _venue;
  }

  Future<Venue> postVenue(Venue venue) async {
    final response = await httpClient.post('${Constants.baseUrl}/api/Venues',
        headers: Constants.headers, body: jsonEncode(venue.toJson(venue)));

    Venue _venue = Venue();

    if (response.statusCode == 200) {
      dynamic venues = jsonDecode(response.body);
      _venue = Venue.fromJson(venues);
    }

    return _venue;
  }

  Future<Venue> updateVenue(Venue venue) async {
    final response = await httpClient.put(
        '${Constants.baseUrl}/api/Venues/${venue.venueId}',
        headers: Constants.headers,
        body: jsonEncode(venue.toJson(venue)));

    Venue _venue = Venue();

    if (response.statusCode == 200) {
      dynamic venues = jsonDecode(response.body);
      _venue = Venue.fromJson(venues);
    }

    return _venue;
  }

  Future<Venue> deleteVenue(Venue venue) async {
    final response = await httpClient
        .delete('${Constants.baseUrl}/api/Venues/${venue.venueId}');

    Venue _venue = Venue();

    if (response.statusCode == 200) {
      dynamic venues = jsonDecode(response.body);
      _venue = Venue.fromJson(venues);
    }

    return _venue;
  }
}
