import 'package:equatable/equatable.dart';
import 'package:go_play_bloc/goplay_bloc.dart';

abstract class UserState extends Equatable {
  const UserState();

  @override
  List get props => [];
}

class UserEmpty extends UserState {}

class UserLoading extends UserState {}

class UserLoaded extends UserState {
  final User user;

  const UserLoaded({this.user});

  @override
  List get props => [user];
}

class UserError extends UserState {}
