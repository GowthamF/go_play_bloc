import 'package:equatable/equatable.dart';
import 'package:go_play_bloc/goplay_bloc.dart';

abstract class ReservationEvent extends Equatable {
  const ReservationEvent();

  @override
  List<Object> get props => [];
}

class GetAllReservations extends ReservationEvent {}

class GetReservation extends ReservationEvent {
  final Reservation reservation;

  const GetReservation({this.reservation});

  @override
  List<Object> get props => [reservation];
}

class PostReservation extends ReservationEvent {
  final Reservation reservation;

  const PostReservation({this.reservation});

  @override
  List<Object> get props => [reservation];
}

class UpdateReservation extends ReservationEvent {
  final Reservation reservation;

  const UpdateReservation({this.reservation});

  @override
  List<Object> get props => [reservation];
}

class DeleteReservation extends ReservationEvent {
  final Reservation reservation;

  const DeleteReservation({this.reservation});

  @override
  List<Object> get props => [reservation];
}
