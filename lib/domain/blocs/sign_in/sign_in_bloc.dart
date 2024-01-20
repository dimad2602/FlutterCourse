import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:curse_app_1/domain/repositories/sign_in_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final ISignInRepository _repository;
  SignInBloc(this._repository) : super(const SignInState.initial()) {
    on<SignInEvent>((event, emit) async {
      await event.map(
        started: (_) => _started(emit),
        signInWithEmail: (value) => _signInWithEmail(value, emit),
        signInWithSocialNetwork: (_) => _signInWithSocialNetwork(emit),
      );
    });
  }

  FutureOr<void> _started(Emitter<SignInState> emit) {
    emit(const SignInState.initial());
  }

  FutureOr<void> _signInWithEmail(
      _SignInWithEmail value, Emitter<SignInState> emit) async {
    try {
      emit(const SignInState.loading());
      final result = await _repository.signInWithEmail(
          email: value.email, password: value.password);
      result
          ? emit(const SignInState.success())
          : emit(const SignInState.failure());
    } catch (e) {
      emit(const SignInState.failure());
    }
  }

  FutureOr<void> _signInWithSocialNetwork(Emitter<SignInState> emit) async{
    try {
      emit(const SignInState.loading());
      final result = await _repository.signInWithSocialNetwork();
      result
          ? emit(const SignInState.success())
          : emit(const SignInState.failure());
    } catch (e) {
      emit(const SignInState.failure());
    }
  }
}
