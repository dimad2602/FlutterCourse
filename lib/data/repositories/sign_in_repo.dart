import 'dart:math';

import 'package:curse_app_1/data/storage/secure_storage.dart';

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
  final SecureStorage storage = SecureStorage();

  @override
  Future<User?> signInWithEmail({
    required String email,
    required String password,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
    if (email == 'example@sample.com' && password == 'password') {
      final user =
          User(email: email, name: 'Дмитрий', id: Random().nextInt(10));
      storage.saveUserId(user.id.toString());
      print(storage.getUserId());
      return user;
    } else {
      return null;
    }
  }

  @override
  Future<User?> signInWithSocialNetwork() async {
    await Future.delayed(const Duration(seconds: 2));
    const user = User(email: 'social@example.com', name: 'Social User', id: 3);
    storage.saveUserId(user.id.toString());
    return user;
  }
}
