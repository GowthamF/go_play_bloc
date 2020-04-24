import 'dart:convert';

import 'package:go_play_bloc/goplay_bloc.dart';
import 'package:http/http.dart' as http;

class ReservationApi {
  final http.Client httpClient = http.Client();

  Future<List<Reservation>> getAllReservations() async {
    final response =
        await httpClient.get('${Constants.baseUrl}/api/Reservations');

    List<Reservation> _reservationList = [];

    if (response.statusCode == 200) {
      dynamic _reservation = jsonDecode(response.body);

      for (var i = 0; i < _reservation.length; i++) {
        var reservation = Reservation.fromJson(_reservation[i]);
        _reservationList.add(reservation);
      }
    }

    return _reservationList;
  }

  Future<Reservation> getReservation(int id) async {
    final response =
        await httpClient.get('${Constants.baseUrl}/api/Reservations/$id');

    Reservation _reservation = Reservation();

    if (response.statusCode == 200) {
      dynamic reservation = jsonDecode(response.body);
      _reservation = Reservation.fromJson(reservation);
    }

    return _reservation;
  }

  Future<Reservation> postReservation(Reservation reservation) async {
    final response = await httpClient.post(
        '${Constants.baseUrl}/api/Reservations',
        headers: Constants.headers,
        body: jsonEncode(reservation.toJson(reservation)));

    Reservation _reservation = Reservation();

    if (response.statusCode == 200) {
      dynamic reservation = jsonDecode(response.body);
      _reservation = Reservation.fromJson(reservation);
    }

    return _reservation;
  }

  Future<Reservation> updateReservation(Reservation reservation) async {
    final response = await httpClient.put(
        '${Constants.baseUrl}/api/Reservations/${reservation.reservationId}',
        headers: Constants.headers,
        body: jsonEncode(reservation.toJson(reservation)));

    Reservation _reservation = Reservation();

    if (response.statusCode == 200) {
      dynamic reservation = jsonDecode(response.body);
      _reservation = Reservation.fromJson(reservation);
    }

    return _reservation;
  }

  Future<Reservation> deleteReservation(Reservation reservation) async {
    final response = await httpClient.delete(
        '${Constants.baseUrl}/api/Reservations/${reservation.reservationId}');

    Reservation _reservation = Reservation();

    if (response.statusCode == 200) {
      dynamic reservation = jsonDecode(response.body);
      _reservation = Reservation.fromJson(reservation);
    }

    return _reservation;
  }
}
