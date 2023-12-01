import 'package:curse_app_1/components/big_text.dart';
import 'package:flutter/material.dart';

import 'components/my_text_field.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 30),
                MyTextField(
                  controller: emailController,
                  labelText: 'E-mail',
                  helperText: 'Введите свой e-mail',
                ),
                const SizedBox(height: 15),
                MyTextField(
                  controller: passwordController,
                  labelText: 'Пароль',
                  hiddenText: true,
                  obscuringCharacter: '*',
                ),
                const SizedBox(
                  height: 20,
                ),
                FilledButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff6750a4),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 90, vertical: 12),
                    ),
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
                    color: Color(0xff6750a4),
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
