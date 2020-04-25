class Venue {
  final int venueId;
  final String venueName;
  final String address;
  final String number;
  final String imageString;
  final double ratings;

  Venue(
      {this.venueId = 0,
      this.venueName,
      this.address,
      this.number,
      this.imageString,
      this.ratings = 0});

  factory Venue.fromJson(Map<String, dynamic> json) {
    return Venue(
        venueId: json['venueId'],
        venueName: json['venueName'],
        address: json['address'],
        number: json['number'],
        imageString: json['image'],
        ratings: json['ratings'].toDouble());
  }

  Map<String, dynamic> toJson(Venue venue) {
    return {
      'VenueId': venue.venueId,
      'VenueName': venue.venueName,
      'Address': venue.address,
      'Number': venue.number,
      'Ratings': venue.ratings,
      'Image': venue.imageString
    };
  }
}
