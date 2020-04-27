import 'package:go_play_bloc/models/models.dart';

class Reservation {
  final int reservationId;
  final Venue venue;
  final String timeSlot;
  final String selectedDate;
  final String pitch;
  final double amount;

  Reservation(
      {this.reservationId = 0,
      this.venue,
      this.timeSlot,
      this.selectedDate,
      this.pitch,
      this.amount});

  factory Reservation.fromJson(Map<String, dynamic> json) {
    return Reservation(
        reservationId: json['reservationId'],
        venue: Venue.fromJson(json['venue']),
        amount: json['amount'],
        pitch: json['pitch'],
        selectedDate: json['selectedDate'],
        timeSlot: json['timeSlot']);
  }

  Map<String, dynamic> toJson(Reservation reservation) {
    return {
      'ReservationId': reservation.reservationId,
      'VenueId': reservation.venue.venueId,
      'TimeSlot': reservation.timeSlot,
      'SelectedDate': reservation.selectedDate,
      'Pitch': reservation.pitch,
      'Amount': reservation.amount
    };
  }
}
