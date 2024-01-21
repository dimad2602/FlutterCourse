part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const SignInState._();

  const factory SignInState.initial() = _Initial;

  // {required String email, required String password}
  //const factory SignInState.input() = _Input;

  const factory SignInState.loading(
      //{required String email, required String password}
      ) = _Loading;

  const factory SignInState.success() = _Success;

  const factory SignInState.failure({required String errorMessage}) = _Failure;

  String? get errorMessage {
    return mapOrNull(
      failure: (value) => value.errorMessage,
    );
  }
}
