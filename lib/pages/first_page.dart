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
                text: "ListSearchPage",
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
                text: "ListWithOutFreezedPage",
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
                text: "MultiPageListPage",
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
                text: "PaginationListPage",
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
                text: "LoginPage",
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
