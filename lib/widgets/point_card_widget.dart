import 'package:flutter/material.dart';

import '../components/big_text.dart';

class PointCardWidget extends StatelessWidget {
  const PointCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(16),
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  shape: BoxShape.circle,
                ),
              )
            ],
          ),
        ),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 10, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BigText(
                  text: 'Lorem ipsum dolor sit amet consectetur.',
                  maxLines: 2,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
