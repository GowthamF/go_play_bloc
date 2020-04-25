import 'dart:convert';

import 'package:go_play_bloc/goplay_bloc.dart';
import 'package:http/http.dart' as http;

class ReviewApi {
  final http.Client httpClient = http.Client();

  Future<List<Review>> getAllReviews(int venueId) async {
    final response = await httpClient
        .get('${Constants.baseUrl}/api/Reviews/GetVenuesReviews/$venueId');

    List<Review> _venueList = [];

    if (response.statusCode == 200) {
      dynamic venues = jsonDecode(response.body);

      for (var i = 0; i < venues.length; i++) {
        var venue = Review.fromJson(venues[i]);
        _venueList.add(venue);
      }
    }

    return _venueList;
  }

  Future<Review> getReview(int id) async {
    final response =
        await httpClient.get('${Constants.baseUrl}/api/Reviews/$id');

    Review _venue = Review();

    if (response.statusCode == 200) {
      dynamic venues = jsonDecode(response.body);
      _venue = Review.fromJson(venues);
    }

    return _venue;
  }

  Future<Review> postReview(Review venue) async {
    final response = await httpClient.post('${Constants.baseUrl}/api/Reviews',
        headers: Constants.headers, body: jsonEncode(venue.toJson(venue)));

    Review _venue = Review();

    if (response.statusCode == 200) {
      dynamic venues = jsonDecode(response.body);
      _venue = Review.fromJson(venues);
    }

    return _venue;
  }

  Future<Review> updateReview(Review venue) async {
    final response = await httpClient.put(
        '${Constants.baseUrl}/api/Reviews/${venue.venueId}',
        headers: Constants.headers,
        body: jsonEncode(venue.toJson(venue)));

    Review _venue = Review();

    if (response.statusCode == 200) {
      dynamic venues = jsonDecode(response.body);
      _venue = Review.fromJson(venues);
    }

    return _venue;
  }

  Future<Review> deleteReview(Review venue) async {
    final response = await httpClient
        .delete('${Constants.baseUrl}/api/Reviews/${venue.venueId}');

    Review _venue = Review();

    if (response.statusCode == 200) {
      dynamic venues = jsonDecode(response.body);
      _venue = Review.fromJson(venues);
    }

    return _venue;
  }
}
