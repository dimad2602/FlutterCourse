import 'package:curse_app_1/components/big_text.dart';
import 'package:flutter/material.dart';

class VisitCardWidget extends StatelessWidget {
  const VisitCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 300,
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.grey[200]!,
      )),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.all(16),
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  shape: BoxShape.circle,
                ),
              )
            ],
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  BigText(
                    text: "Имя",
                    size: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  BigText(
                    text: "Фамилия",
                    size: 20,
                    fontWeight: FontWeight.w500,
                  )
                ],
              ),
              Text(
                'Должность',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              )
            ],
          )
        ],
      ),
    );
  }
}
