import 'package:flutter/material.dart';

class FirstOpenPage extends StatelessWidget {
  const FirstOpenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Вы зашли в приложение первый раз, мы рады вам!!!"),
            const SizedBox(height: 12,),
            FilledButton(
              onPressed: () async {
                Navigator.of(context).pushNamed('/SignInPage');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff6750a4),
              ),
              child: const Text(
                'Авторизация',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
