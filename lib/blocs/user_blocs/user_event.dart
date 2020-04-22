import 'package:equatable/equatable.dart';
import 'package:go_play_bloc/goplay_bloc.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();
}

class Login extends UserEvent {
  final User user;

  const Login({this.user});

  @override
  List<Object> get props => [user];
}

class Register extends UserEvent {
  final User user;

  const Register({this.user});

  @override
  List<Object> get props => [user];
}

class UpdateUser extends UserEvent {
  final User user;

  const UpdateUser({this.user});

  @override
  List<Object> get props => [user];
}

class DeleteUser extends UserEvent {
  final User user;

  const DeleteUser({this.user});

  @override
  List<Object> get props => [user];
}
