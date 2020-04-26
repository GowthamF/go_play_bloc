import 'package:go_play_bloc/goplay_bloc.dart';

class Venue {
  final int venueId;
  final String venueName;
  final String address;
  final String number;
  final String imageString;
  final double ratings;
  final double amount;
  final String description;
  final List<VenueImage> venueImages;

  Venue(
      {this.venueId = 0,
      this.venueName,
      this.address,
      this.number,
      this.imageString,
      this.ratings = 0,
      this.amount,
      this.description,
      this.venueImages});

  factory Venue.fromJson(Map<String, dynamic> json) {
    List<VenueImage> venueImages = [];

    if (json['venueImages'] != null) {
      for (var i = 0; i < json['venueImages'].length; i++) {
        venueImages.add(VenueImage.fromJson(json['venueImages'][i]));
      }
    }

    return Venue(
      venueId: json['venueId'],
      venueName: json['venueName'],
      address: json['address'],
      number: json['number'],
      imageString: json['image'],
      ratings: json['ratings'].toDouble(),
      amount: json['amount'].toDouble(),
      description: json['description'],
      venueImages: venueImages,
    );
  }

  Map<String, dynamic> toJson(Venue venue) {
    return {
      'VenueId': venue.venueId,
      'VenueName': venue.venueName,
      'Address': venue.address,
      'Number': venue.number,
      'Ratings': venue.ratings,
      'Image': venue.imageString,
      'VenueImages': venue.venueImages.map(
        (f) => f.toJson(f),
      ),
    };
  }
}
