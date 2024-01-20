abstract class LoginStateOld {}

class InitialState extends LoginStateOld {}

class LoginInputState extends LoginStateOld {
  final String login;

  LoginInputState(this.login);
}

class ValidatingState extends LoginStateOld {}

class FailureState extends LoginStateOld {
  final String login;
  final String errorText;

  FailureState(this.login, this.errorText);
}

class CompleteState extends LoginStateOld {

}
