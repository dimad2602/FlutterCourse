import 'package:curse_app_1/components/big_text.dart';
import 'package:curse_app_1/components/my_text_field_cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff007aff)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Джегло'),
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
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  get onPressed => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  MyTextFieldCupertino(
                    controller: emailController,
                    helperText: 'E-mail',
                  ),
                  const SizedBox(height: 15),
                  MyTextFieldCupertino(
                    controller: passwordController,
                    helperText: 'Пароль',
                    hiddenText: true,
                    obscuringCharacter: '*',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CupertinoButton(
                      onPressed: () {},
                      padding: const EdgeInsets.symmetric(
                          horizontal: 90, vertical: 12),
                      color: const Color(0xff007aff),
                      child: const BigText(
                        text: "Войти",
                        color: Colors.white,
                      )),
                  const SizedBox(
                    height: 25,
                  ),
                  const Center(
                    child: BigText(
                      text: 'Зарегистрироваться',
                      color: Color(0xff007aff),
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
