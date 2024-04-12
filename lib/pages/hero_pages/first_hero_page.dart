import 'package:curse_app_1/pages/hero_pages/second_hero_page.dart';
import 'package:flutter/material.dart';

class FirstHeroPage extends StatelessWidget {
  const FirstHeroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => const SecondHeroPage()));
        },
        child: Hero(
          tag: "kit_image",
          child: Image.network(
              fit: BoxFit.cover,
              height: 200,
              width: 200,
              'https://cdn3.iconfinder.com/data/icons/animal-40/128/Animal_Whale_Shark-512.png'),
        ),
      )),
    );
  }
}
