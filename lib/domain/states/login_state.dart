abstract class LoginState {}

class InitialState extends LoginState {}

class LoginInputState extends LoginState {
  final String login;

  LoginInputState(this.login);
}

class ValidatingState extends LoginState {}

class FailureState extends LoginState {
  final String login;
  final String errorText;

  FailureState(this.login, this.errorText);
}

class CompleteState extends LoginState {

}
