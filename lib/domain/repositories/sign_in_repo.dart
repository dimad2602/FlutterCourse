import '../../models/user_model/user_model.dart';
import 'dart:async';

abstract class ISignInRepository {
  Future<User?> signInWithEmail({
    required String email,
    required String password,
  });

  Future<User?> signInWithSocialNetwork();
}

class SignInRepo implements ISignInRepository {
  @override
  Future<User?> signInWithEmail({
    required String email,
    required String password,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
    if (email == 'example@sample.com' && password == 'password') {
      return User(email: email, name: 'Дмитрий');
    } else {
      return null;
    }
  }

  @override
  Future<User?> signInWithSocialNetwork() async {
    await Future.delayed(const Duration(seconds: 2));

    return const User(email: 'social@example.com', name: 'Social User');
  }
}
