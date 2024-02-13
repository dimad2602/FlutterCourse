import 'package:curse_app_1/components/my_text_field.dart';
import 'package:curse_app_1/data/storage/secure_storage.dart';
import 'package:flutter/material.dart';

class SaveUserIdPage extends StatefulWidget {
  final SecureStorage storage;
  const SaveUserIdPage({super.key, required this.storage});

  @override
  State<SaveUserIdPage> createState() => _SaveUserIdPageState();
}

class _SaveUserIdPageState extends State<SaveUserIdPage> {
  final TextEditingController _controller = TextEditingController();
  String? _userId = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            MyTextField(labelText: 'Your User id', controller: _controller),
            Text("User id = $_userId"),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
    ElevatedButton(
      onPressed: () {
        widget.storage.saveUserId(_controller.text);
      },
      child: const Text('Save'),
    ),
    ElevatedButton(
      onPressed: () async {
        String? userId = await widget.storage.getUserId();
        setState(() {
          _userId = userId ?? 'Not found';
        });
      },
      child: const Text('Load'),
    ),
  ],
      ),
    );
  }
}
