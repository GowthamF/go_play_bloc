class Venue {
  final int venueId;
  final String venueName;
  final String address;
  final String number;

  Venue({this.venueId = 0, this.venueName, this.address, this.number});

  factory Venue.fromJson(Map<String, dynamic> json) {
    return Venue(
        venueId: json['venueId'],
        venueName: json['venueName'],
        address: json['address'],
        number: json['number']);
  }

  Map<String, dynamic> toJson(Venue venue) {
    return {
      'VenueId': venue.venueId,
      'VenueName': venue.venueName,
      'Address': venue.address,
      'Number': venue.number
    };
  }
}
