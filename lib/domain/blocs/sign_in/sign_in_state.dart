part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.initial() = _Initial;

 // {required String email, required String password}
  //const factory SignInState.input() = _Input;

  const factory SignInState.loading(
      //{required String email, required String password}
      ) = _Loading;

  const factory SignInState.success(
      ) = _Success;    

  const factory SignInState.failure() = _Failure;
}
