import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({super.key});

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  bool _animated = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: AnimatedContainer(
        duration: const Duration(seconds: 1),
        height: _animated ? 350 : 200,
        width: _animated ? 250 : 200,
        decoration: BoxDecoration(
          borderRadius:
              _animated ? const BorderRadius.all(Radius.circular(12)) : null,
          color: _animated ? Colors.blue : Colors.red,
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_animated) {
              _animated = false;
            } else {
              _animated = true;
            }
          });
        },
        child: const Icon(Icons.brush),
      ),
    );
  }
}
