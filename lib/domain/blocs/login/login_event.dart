abstract class LoginEventOld {}

class LoginChanged extends LoginEventOld {
  final String login;

  LoginChanged(this.login);
}

class LoginRetry extends LoginEventOld {
}

class Validate extends LoginEventOld {
  final String login;

  Validate(this.login);
}

class SignIn extends LoginEventOld {}
