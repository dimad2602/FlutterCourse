import '../../models/user_model/user_model.dart';
import 'dart:async';

enum AuthenticationStatus {authenticated, unauthenticated }

abstract class ISignInRepository {
  final _controller = StreamController<AuthenticationStatus>();

  Future<User?> signInWithEmail({
    required String email,
    required String password,
  });

  Future<User?> signInWithSocialNetwork();

  void logOut();
}

class SignInRepo implements ISignInRepository {
  final _controller = StreamController<AuthenticationStatus>();

  Stream<AuthenticationStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield AuthenticationStatus.unauthenticated;
    yield* _controller.stream;
  }

  @override
  Future<User?> signInWithEmail({
    required String email,
    required String password,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
    if (email == 'example@sample.com' && password == 'password') {
      _controller.add(AuthenticationStatus.authenticated);
      return User(email: email, name: 'Дмитрий');
    } else {
      return null;
    }
  }

  @override
  Future<User?> signInWithSocialNetwork() async {
    await Future.delayed(const Duration(seconds: 2));

    _controller.add(AuthenticationStatus.authenticated);

    return const User(email: 'social@example.com', name: 'Social User');
  }

  @override
  void logOut() {
    _controller.add(AuthenticationStatus.unauthenticated);
  }

  void dispose() => _controller.close();
}
