import 'package:curse_app_1/pages/calculator_page.dart';
import 'package:flutter/material.dart';

import 'pages/first_page.dart';

final Map<String, Widget Function(BuildContext context)> routes ={
  '/': (BuildContext context) => const FirstPage(),
  '/CalculatorPage': (BuildContext context) => const CalculatorPage(),
};
