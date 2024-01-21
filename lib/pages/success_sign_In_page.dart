import 'package:flutter/material.dart';

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
                const Text(
                  'SuccessSignIn',
                  style: TextStyle(fontSize: 24),
                ),
                FilledButton(
                  onPressed: () {
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
