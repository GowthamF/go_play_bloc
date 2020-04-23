import 'package:go_play_bloc/goplay_bloc.dart';

class ReservationRepository {
  final ReservationApi reservationApi = ReservationApi();

  Future<List<Reservation>> getAllReservations() async {
    return await reservationApi.getAllReservations();
  }

  Future<Reservation> getReservation(Reservation reservation) async {
    return await reservationApi.getReservation(reservation.reservationId);
  }

  Future<Reservation> updateReservation(Reservation reservation) async {
    return await reservationApi.updateReservation(reservation);
  }

  Future<Reservation> postReservation(Reservation reservation) async {
    return await reservationApi.postReservation(reservation);
  }

  Future<Reservation> deleteReservation(Reservation reservation) async {
    return await reservationApi.deleteReservation(reservation);
  }
}
