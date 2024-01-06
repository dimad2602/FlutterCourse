import 'package:flutter_bloc/flutter_bloc.dart';

import '../../events/login_event.dart';
import '../../repositories/login_repository.dart';
import '../../states/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository _repository;
  LoginBloc(this._repository) : super(InitialState()) {
    on<LoginChanged>(
      (event, emit) {
        emit(LoginInputState(event.login));
        //emit(FailureState(event.login, 'ФФФФ'));
      },
      // transformer: ...,
    );

    on<LoginRetry>((event, emit) async {
      emit(InitialState());
    });
    on<Validate>((event, emit) async {
      emit(ValidatingState());

      final isValid = await _repository.validateLogin(event.login);

      if (isValid) {
        //emit(LoginInputState(event.login));
        emit(CompleteState());
      } else {
        emit(FailureState(event.login, 'Invalid login'));
      }
    });
  }
}
