class Reservation {
  final int reservationId;
  final String timeSlot;
  final String selectedDate;
  final String pitch;
  final double amount;
  final int venueId;

  Reservation(
      {this.reservationId = 0,
      this.timeSlot,
      this.selectedDate,
      this.pitch,
      this.amount,
      this.venueId});

  factory Reservation.fromJson(Map<String, dynamic> json) {
    return Reservation(
        reservationId: json['reservationId'],
        venueId: json['venueId'],
        amount: json['amount'].toDouble(),
        pitch: json['pitch'],
        selectedDate: json['selectedDate'],
        timeSlot: json['timeSlot']);
  }

  Map<String, dynamic> toJson(Reservation reservation) {
    return {
      'ReservationId': reservation.reservationId,
      'VenueId': reservation.venueId,
      'TimeSlot': reservation.timeSlot,
      'SelectedDate': reservation.selectedDate,
      'Pitch': reservation.pitch,
      'Amount': reservation.amount
    };
  }
}
