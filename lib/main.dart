import 'package:curse_app_1/widgets/point_card_widget.dart';
import 'package:curse_app_1/widgets/square_card_widget.dart';
import 'package:flutter/material.dart';

import 'widgets/wide_card_widget.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: Center(
                child: WideCardWidget(),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return const PointCardWidget();
                },
                childCount: 30,
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 10.0,
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return const SquareCardWidget();
                  },
                  childCount: 30,
                ),
              ),
            ),
          ],
        ));
  }
}
