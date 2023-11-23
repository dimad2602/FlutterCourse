import 'package:flutter/material.dart';

import '../components/big_text.dart';

class WideCardWidget extends StatelessWidget {
  const WideCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
      child: Container(
          padding: const EdgeInsets.all(15),
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
          child: const BigText(
            text: 'Lorem ipsum dolor sit amet consectetur.',
            maxLines: 2,
          )),
    );
  }
}
