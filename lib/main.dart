import 'package:curse_app_1/components/big_text.dart';
import 'package:curse_app_1/components/my_text_field_cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff007aff)),
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
  final TextEditingController _billAmountController = TextEditingController();
  double _tipPercentage = 0;
  int _totalAmountRounded = 0;

  void _calculateTip() {
    if (_billAmountController.text.isEmpty) {
      return;
    }

    double billAmount = double.parse(_billAmountController.text);
    double percentagesAmount = billAmount * _tipPercentage;
    double totalAmount = billAmount + percentagesAmount;
    int totalAmountRounded = totalAmount.toInt();

    setState(() {
      _totalAmountRounded = totalAmountRounded;
    });
  }

  void _resetValues() {
    _billAmountController.text = '';
    _tipPercentage = 0;
    _totalAmountRounded = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                MyTextFieldCupertino(
                  helperText: "Сумма счета(руб)",
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  controller: _billAmountController,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const BigText(
                      text: 'Размер чаевых',
                      fontWeight: FontWeight.w500,
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 0.05,
                          groupValue: _tipPercentage,
                          onChanged: (value) {
                            setState(() {
                              _tipPercentage = value as double;
                            });
                          },
                        ),
                        const BigText(
                          text: '5%',
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 0.10,
                          groupValue: _tipPercentage,
                          onChanged: (value) {
                            setState(() {
                              _tipPercentage = value as double;
                            });
                          },
                        ),
                        const BigText(
                          text: '10%',
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 0.15,
                          groupValue: _tipPercentage,
                          onChanged: (value) {
                            setState(() {
                              _tipPercentage = value as double;
                            });
                          },
                        ),
                        const BigText(
                          text: '15%',
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FilledButton(
                        onPressed: () {
                          _calculateTip();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff6750a4),
                        ),
                        child: const BigText(
                          text: "Рассчитать",
                          color: Colors.white,
                        )),
                    FilledButton(
                        onPressed: () {
                          _resetValues();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff6750a4),
                        ),
                        child: const BigText(
                          text: "Сбросить",
                          color: Colors.white,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const BigText(
                      text: "Итоговая сумма",
                      fontWeight: FontWeight.w500,
                    ),
                    BigText(
                      text: "$_totalAmountRounded руб",
                      fontWeight: FontWeight.w600,
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
