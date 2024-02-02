import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/user_model/user_model.dart';
import '../../../data/repositories/sign_in_repo.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final ISignInRepository _repository;
  AuthenticationBloc(this._repository)
      : super(const AuthenticationState.unauthenticated()) {
    on<AuthenticationEvent>((event, emit) async {
      await event.map(
          userLoggedIn: (value) => _userLoggedIn(value, emit),
          userLoggedOut: (value) => _userLoggedOut(value, emit));
    });
  }

  FutureOr<void> _userLoggedIn(
      _UserLoggedIn event, Emitter<AuthenticationState> emit) {
    emit(AuthenticationState.authenticated(event.user));
  }

  FutureOr<void> _userLoggedOut(
      _UserLoggedOut event, Emitter<AuthenticationState> emit) async {
    emit(const AuthenticationState.unauthenticated());
  }
}
