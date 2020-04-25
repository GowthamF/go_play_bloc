import 'dart:convert';
import 'dart:typed_data';

class Venue {
  final int venueId;
  final String venueName;
  final String address;
  final String number;
  final Uint8List imageBytes;
  final double ratings;

  Venue(
      {this.venueId = 0,
      this.venueName,
      this.address,
      this.number,
      this.imageBytes,
      this.ratings = 0});

  factory Venue.fromJson(Map<String, dynamic> json) {
    return Venue(
        venueId: json['venueId'],
        venueName: json['venueName'],
        address: json['address'],
        number: json['number'],
        imageBytes: base64.decode(json['image']));
  }

  Map<String, dynamic> toJson(Venue venue) {
    return {
      'VenueId': venue.venueId,
      'VenueName': venue.venueName,
      'Address': venue.address,
      'Number': venue.number,
      'Ratings': venue.ratings,
    };
  }
}
