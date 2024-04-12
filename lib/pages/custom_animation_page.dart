import 'package:flutter/material.dart';

class CustomAnimationPage extends StatefulWidget {
  const CustomAnimationPage({super.key});

  @override
  State<CustomAnimationPage> createState() => _CustomAnimationPageState();
}

class _CustomAnimationPageState extends State<CustomAnimationPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animationDouble;
  late Animation<Color?> _animationColor;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    _controller.addListener(() {
      setState(() {});
    });

    _animationDouble = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _animationColor = ColorTween(
      begin: Colors.red,
      end: Colors.blue,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (BuildContext context, Widget? child) {
            return Container(
              height: 200 + _animationDouble.value * 150,
              width: 200 + _animationDouble.value * 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(_animationDouble.value * 12),
                ),
                color: _animationColor.value,
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_controller.status == AnimationStatus.completed) {
              _controller.reverse();
            } else {
              _controller.forward();
            }
          });
        },
        child: const Icon(Icons.brush),
      ),
    );
  }
}
