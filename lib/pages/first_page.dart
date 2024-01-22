import 'package:curse_app_1/components/big_text.dart';
import 'package:curse_app_1/domain/blocs/authentication/authentication_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: BlocBuilder<AuthenticationBloc, AuthenticationState>(
            builder: (context, state) {
          return state.when(
            authenticated: (user) {
              return Text(user.name);
            },
            unauthenticated: () {
              return const Text('Не авторизован');
            },
          );
        }),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff6750a4),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/CalculatorPage');
              },
              child: const BigText(
                text: "Калькулятор",
                color: Colors.white,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff6750a4),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/LoginOldPage');
              },
              child: const BigText(
                text: "LoginOldPage",
                color: Colors.white,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff6750a4),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/ListSearchPage');
              },
              child: const BigText(
                text: "ListSearchPage PR 36",
                color: Colors.white,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff6750a4),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/ListWithOutFreezedPage');
              },
              child: const BigText(
                text: "ListWithOutFreezedPage PR 32-33",
                color: Colors.white,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff6750a4),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/MultiPageListPage');
              },
              child: const BigText(
                text: "MultiPageListPage PR 37",
                color: Colors.white,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff6750a4),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/PaginationListPage');
              },
              child: const BigText(
                text: "PaginationListPage PR 34-35",
                color: Colors.white,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff6750a4),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/SignInPage');
              },
              child: const BigText(
                text: "LoginPage PR 38 + PR 39",
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
