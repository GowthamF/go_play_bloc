class VenueImage {
  final int venueImageId;
  final String venueImage;

  VenueImage({this.venueImageId, this.venueImage});

  factory VenueImage.fromJson(Map<String, dynamic> json) {
    return VenueImage(
      venueImageId: json['venueImageId'],
      venueImage: json['venueImage'],
    );
  }

  Map<String, dynamic> toJson(VenueImage venueImage) {
    return {"VenueImage": venueImage.venueImage};
  }
}
