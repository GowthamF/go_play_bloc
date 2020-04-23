import 'package:bloc/bloc.dart';
import 'package:go_play_bloc/goplay_bloc.dart';

class ReservationBloc extends Bloc<ReservationEvent, ReservationState> {
  final ReservationRepository _reservationRepository = ReservationRepository();

  @override
  ReservationState get initialState => ReservationEmpty();

  @override
  Stream<ReservationState> mapEventToState(ReservationEvent event) async* {
    if (event is GetAllReservations) {
      yield ReservationLoading();

      try {
        List<Reservation> reservations =
            await _reservationRepository.getAllReservations();
        yield ReservationAllLoaded(reservation: reservations);
      } catch (ex) {
        print(ex);
        ReservationError();
      }
    } else if (event is GetReservation) {
      yield ReservationLoading();
      try {
        Reservation reservation =
            await _reservationRepository.getReservation(event.reservation);
        yield ReservationLoaded(reservation: reservation);
      } catch (ex) {
        print(ex);
        ReservationError();
      }
    } else if (event is UpdateReservation) {
      yield ReservationLoading();
      try {
        Reservation reservation =
            await _reservationRepository.updateReservation(event.reservation);
        yield ReservationLoaded(reservation: reservation);
      } catch (ex) {
        print(ex);
        ReservationError();
      }
    } else if (event is DeleteReservation) {
      yield ReservationLoading();
      try {
        Reservation reservation =
            await _reservationRepository.deleteReservation(event.reservation);
        yield ReservationLoaded(reservation: reservation);
      } catch (ex) {
        print(ex);
        ReservationError();
      }
    } else if (event is PostReservation) {
      yield ReservationLoading();
      try {
        Reservation reservation =
            await _reservationRepository.postReservation(event.reservation);
        yield ReservationLoaded(reservation: reservation);
      } catch (ex) {
        print(ex);
        ReservationError();
      }
    }
  }
}
