import 'package:curse_app_1/components/big_text.dart';
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
          appBar: AppBar(title: const Text('SuccessSignInPage'),),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Success',
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 32,),
                BlocBuilder<AuthenticationBloc, AuthenticationState>(
                    builder: (context, state) {
                  return state.when(authenticated: (user) {
                    return Column(
                      children: [
                        BigText(text: user.email),
                        const SizedBox(
                          height: 16,
                        ),
                        BigText(text: user.name),
                        const SizedBox(
                          height: 24,
                        ),
                      ],
                    );
                  }, unauthenticated: () {
                    return const SizedBox.shrink();
                  });
                }),
                FilledButton(
                  onPressed: () async {
                    context
                        .read<AuthenticationBloc>()
                        .add(const AuthenticationEvent.userLoggedOut());
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff6750a4),
                  ),
                  child: const Text(
                    'Выйти из аккаунта',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
