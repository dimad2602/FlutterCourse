abstract class ISignInRepository {
  Future<bool> signInWithEmail({
    required String email,
    required String password,
  });

  Future<bool> signInWithSocialNetwork();
}

class SignInRepo implements ISignInRepository {
  @override
  Future<bool> signInWithEmail({
    required String email,
    required String password,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
    if (email == 'example@sample.com' && password == 'password') {
      return true;
    } else {
      return false;
    }
  }

  @override
  Future<bool> signInWithSocialNetwork() async {
    await Future.delayed(const Duration(seconds: 2));

    return true;
  }
}
