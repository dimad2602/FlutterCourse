import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:curse_app_1/data/storage/secure_storage.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/user_model/user_model.dart';
import '../../../data/repositories/sign_in_repo.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final ISignInRepository _repository;
  final SecureStorage storage = SecureStorage();
  AuthenticationBloc(this._repository)
      : super(const AuthenticationState.unauthenticated()) {
    on<AuthenticationEvent>((event, emit) async {
      await event.map(
        userLoggedIn: (value) => _userLoggedIn(value, emit),
        userLoggedOut: (value) => _userLoggedOut(value, emit),
        checkPreviousLoginIn: (value) => _checkPreviousLoginIn(value, emit),
      );
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

  FutureOr<void> _checkPreviousLoginIn(
      _CheckPreviousLoginIn value, Emitter<AuthenticationState> emit) async {
    final userId = await storage.getUserId();
    if (userId != null) {
      //Я не стал добавлять сохранение email и name в flutter_secure_storage
      emit(AuthenticationState.authenticated(User(
        id: int.parse(userId),
        email: 'example@sample.com',
        name: 'Дмитрий',
      )));
    } else {
      emit(const AuthenticationState.unauthenticated());
    }
  }
}
