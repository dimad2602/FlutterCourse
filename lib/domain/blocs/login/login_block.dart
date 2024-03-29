import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_event.dart';
import '../../../data/repositories/login_repository.dart';
import 'login_state.dart';

class LoginBlocOld extends Bloc<LoginEventOld, LoginStateOld> {
  final LoginRepository _repository;
  LoginBlocOld(this._repository) : super(InitialState()) {
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
