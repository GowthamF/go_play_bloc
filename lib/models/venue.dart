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
  final String timeSlot;
  final List<VenueImage> venueImages;

  Venue(
      {this.venueId = 0,
      this.venueName = '',
      this.address = '',
      this.number = '',
      this.imageString = '',
      this.ratings = 0,
      this.amount = 0,
      this.description = '',
      this.venueImages,
      this.timeSlot = ''});

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
        timeSlot: json['timeSlot']);
  }

  Map<String, dynamic> toJson(Venue venue) {
    return {
      'VenueId': venue.venueId,
      'VenueName': venue.venueName,
      'Address': venue.address,
      'Number': venue.number,
      'Ratings': venue.ratings,
      'Amount': venue.amount,
      'Description': venue.description,
      'Image': venue.imageString,
      'TimeSlot': venue.timeSlot,
      'VenueImages': venue.venueImages == null
          ? []
          : venue.venueImages.map(
              (f) => f.toJson(f),
            )
    };
  }
}
