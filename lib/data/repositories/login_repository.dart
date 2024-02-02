class LoginRepository {
  Future<bool> validateLogin(String login) async {
    print("login = $login");
    if (login.length < 3) {
      return false;
    }
    // Реализуйте вашу логику валидации
    // Возвращайте true, если логин валиден, и false в противном случае
    return true;
  }

  Future<bool> signIn(String login) async {
    // Реализуйте вашу логику входа
    // Возвращайте true, если вход выполнен успешно, и false в противном случае
    return true;
  }
}
