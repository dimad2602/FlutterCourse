import 'package:flutter/material.dart';

class AnimationWithIntervalsPage extends StatefulWidget {
  const AnimationWithIntervalsPage({super.key});

  @override
  State<AnimationWithIntervalsPage> createState() =>
      _AnimationWithIntervalsPageState();
}

class _AnimationWithIntervalsPageState extends State<AnimationWithIntervalsPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animationDoubleA;
  late Animation<double> _animationDoubleB;
  late Animation<Color?> _animationColor;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    _controller.addListener(() {
      setState(() {});
    });

    _animationDoubleA = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.3, curve: Curves.ease)));

    _animationDoubleB = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.65, 1.0, curve: Curves.ease)));

    _animationColor = ColorTween(
      begin: Colors.red,
      end: Colors.blue,
    ).animate(CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.3, 0.65, curve: Curves.ease)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (BuildContext context, Widget? child) {
            return Container(
              height: 200 + _animationDoubleA.value * 150,
              width: 200 + _animationDoubleA.value * 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(_animationDoubleB.value * 12),
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
