import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../domain/blocs/authentication/authentication_bloc.dart';

class SuccessSignInPage extends StatelessWidget {
  const SuccessSignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          Navigator.of(context).popUntil((route) => route.isFirst);
          return true;
        },
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlocBuilder<AuthenticationBloc, AuthenticationState>(
                    builder: (context, state) {
                  return Text(state.user!.email);
                }),
                const Text(
                  'SuccessSignIn',
                  style: TextStyle(fontSize: 24),
                ),
                FilledButton(
                  onPressed: () {
                    context
                        .read<AuthenticationBloc>()
                        .add(const AuthenticationEvent.userLoggedOut());
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff6750a4),
                  ),
                  child: const Text(
                    'Back',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
