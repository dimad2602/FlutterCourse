import 'package:curse_app_1/platform_channel.dart';
import 'package:flutter/material.dart';

class PlatformCalculationsPage extends StatefulWidget {
  const PlatformCalculationsPage({super.key});

  @override
  State<PlatformCalculationsPage> createState() => _PlatformCalcutationsState();
}

class _PlatformCalcutationsState extends State<PlatformCalculationsPage> {
  int summary = 0;

  final TextEditingController _controllerX = TextEditingController();
  final TextEditingController _controllerY = TextEditingController();

  final MyPlatformChannel channel = MyPlatformChannel();

  Future<void> _doCalculations() async {
    final int x = int.tryParse(_controllerX.text) ?? 0;
    final int y = int.tryParse(_controllerY.text) ?? 0;
    final result = await channel.getSummary(x: x, y: y);
    setState(() {
      summary = result ?? -1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: TextField(
                controller: _controllerX,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter X',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: TextField(
                controller: _controllerY,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter Y',
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _doCalculations,
              child: const Text('Summary'),
            ),
            const SizedBox(height: 20),
            Text("Summary = $summary"),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controllerX.dispose();
    _controllerY.dispose();
    super.dispose();
  }
}
