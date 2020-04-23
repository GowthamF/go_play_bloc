import 'package:equatable/equatable.dart';
import 'package:go_play_bloc/goplay_bloc.dart';

abstract class ReservationState extends Equatable {
  const ReservationState();

  @override
  List<Object> get props => [];
}

class ReservationEmpty extends ReservationState {}

class ReservationLoading extends ReservationState {}

class ReservationLoaded extends ReservationState {
  final Reservation reservation;

  const ReservationLoaded({this.reservation});

  @override
  List<Object> get props => [reservation];
}

class ReservationAllLoaded extends ReservationState {
  final List<Reservation> reservation;

  const ReservationAllLoaded({this.reservation});

  @override
  List<Object> get props => [reservation];
}

class ReservationError extends ReservationState {}
