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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
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
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff6750a4),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/PostsPage');
                },
                child: const BigText(
                  text: "RetrofitPosts PR 45",
                  color: Colors.white,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff6750a4),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/SaveUserId');
                },
                child: const BigText(
                  text: "SaveUserId PR 46",
                  color: Colors.white,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff6750a4),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/SharedPreferencesPage');
                },
                child: const BigText(
                  text: "SharedPreferences PR 47",
                  color: Colors.white,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff6750a4),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/TodosPage');
                },
                child: const BigText(
                  text: "Todos page (DataBase) PR 48",
                  color: Colors.white,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff6750a4),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/LocationPage');
                },
                child: const BigText(
                  text: "location PR 49",
                  color: Colors.white,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff6750a4),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/ImagePickerPage');
                },
                child: const BigText(
                  text: "image picker PR 50",
                  color: Colors.white,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff6750a4),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/PlatformCalculationsPage');
                },
                child: const BigText(
                  text: "Platform Calculations PR 51",
                  color: Colors.white,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff6750a4),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/AnimatedContainerPage');
                },
                child: const BigText(
                  text: "AnimatedContainer PR 52",
                  color: Colors.white,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff6750a4),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/FirstHeroPage');
                },
                child: const BigText(
                  text: "HeroPage PR 53",
                  color: Colors.white,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff6750a4),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/CustomAnimationPage');
                },
                child: const BigText(
                  text: "CustomAnimation PR 54",
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
