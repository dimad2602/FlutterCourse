import 'package:curse_app_1/domain/repositories/sign_in_repo.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'domain/blocs/authentication/authentication_bloc.dart';
import 'pages/first_page.dart';
import 'routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Color overlayColor = Colors.white;
    final systemBarColors = SystemUiOverlayStyle(
      systemNavigationBarColor: overlayColor,
      statusBarColor: overlayColor,
    );
    SystemChrome.setSystemUIOverlayStyle(systemBarColors);
    return BlocProvider(
      create: (context) => AuthenticationBloc(SignInRepo()),
      child: MaterialApp(
        title: 'Flutter Demo',
        routes: routes,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff007aff)),
          useMaterial3: true,
        ),
        //home: const MyHomePage(title: 'Джегло'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: FirstPage());
  }
}
