abstract class LoginEvent {}

class LoginChanged extends LoginEvent {
  final String login;

  LoginChanged(this.login);
}

class LoginRetry extends LoginEvent {
}

class Validate extends LoginEvent {
  final String login;

  Validate(this.login);
}

class SignIn extends LoginEvent {}
