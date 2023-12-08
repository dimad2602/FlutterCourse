import 'package:curse_app_1/components/big_text.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Джегло'),
      ),
      body: Center(
        child: ElevatedButton(
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
      ),
    );
  }
}
