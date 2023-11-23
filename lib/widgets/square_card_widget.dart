import 'package:flutter/material.dart';

class SquareCardWidget extends StatelessWidget {
  const SquareCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ]),
    );
  }
}
