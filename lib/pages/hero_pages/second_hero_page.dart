import 'package:flutter/material.dart';

class SecondHeroPage extends StatelessWidget {
  const SecondHeroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: InkWell(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Hero(
          tag: "kit_image",
          child: Image.network(
              fit: BoxFit.cover,
              'https://cdn3.iconfinder.com/data/icons/animal-40/128/Animal_Whale_Shark-512.png'),
        ),
      )),
    );
  }
}
