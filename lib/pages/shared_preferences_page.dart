import 'package:curse_app_1/components/my_text_field.dart';
import 'package:curse_app_1/data/storage/filter_preferences_storage.dart';
import 'package:curse_app_1/models/filter_model/filter_model.dart';
import 'package:flutter/material.dart';

class SharedPreferencesPage extends StatefulWidget {
  const SharedPreferencesPage({super.key});

  @override
  State<SharedPreferencesPage> createState() => _SharedPreferencesPageState();
}

class _SharedPreferencesPageState extends State<SharedPreferencesPage> {
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  bool _hasAvatar = false;
  String _statusMessage = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyTextField(
              labelText: 'Age',
              controller: _ageController,
              keyboardType: TextInputType.number,
            ),
            MyTextField(
              labelText: 'Gender',
              controller: _genderController,
            ),
            CheckboxListTile(
              title: const Text('Has Avatar'),
              value: _hasAvatar,
              onChanged: (newValue) {
                setState(() {
                  _hasAvatar = newValue!;
                });
              },
            ),
            ElevatedButton(
              onPressed: _saveFilter,
              child: const Text('Save Filter'),
            ),
            Text(_statusMessage),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _loadFilter,
        child: const Icon(Icons.refresh),
      ),
    );
  }

  Future<void> _saveFilter() async {
    final age = int.tryParse(_ageController.text) ?? 0;
    final gender = _genderController.text;
    final filter = FilterModel(age: age, gender: gender, hasAvatar: _hasAvatar);

    await FilterPreferences.saveFilter(filter);
    setState(() {
      _statusMessage = 'Filter saved';
    });
  }

  Future<void> _loadFilter() async {
    final filter = await FilterPreferences.getFilter();

    if (filter != null) {
      setState(() {
        _ageController.text = filter.age.toString();
        _genderController.text = filter.gender;
        _hasAvatar = filter.hasAvatar;
        _statusMessage = 'Filter loaded';
      });
    } else {
      setState(() {
        _statusMessage = 'Filter not found';
      });
    }
  }
}
