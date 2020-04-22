import 'package:bloc/bloc.dart';
import 'package:go_play_bloc/goplay_bloc.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository userRepository = UserRepository();

  @override
  UserState get initialState => UserEmpty();

  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {
    if (event is Login) {
      yield UserLoading();

      try {
        User user = await userRepository.login(event.user);
        yield UserLoaded(user: user);
      } catch (ex) {
        print(ex);
        UserError();
      }
    } else if (event is Register) {
      yield UserLoading();
      try {
        User user = await userRepository.register(event.user);
        yield UserLoaded(user: user);
      } catch (ex) {
        print(ex);
        UserError();
      }
    } else if (event is UpdateUser) {
      yield UserLoading();
      try {
        User user = await userRepository.updateUser(event.user);
        yield UserLoaded(user: user);
      } catch (ex) {
        print(ex);
        UserError();
      }
    } else if (event is DeleteUser) {
      yield UserLoading();
      try {
        User user = await userRepository.deleteUser(event.user);
        yield UserLoaded(user: user);
      } catch (ex) {
        print(ex);
        UserError();
      }
    }
  }
}
