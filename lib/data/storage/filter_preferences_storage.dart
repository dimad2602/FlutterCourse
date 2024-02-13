import 'dart:convert';

import 'package:curse_app_1/models/filter_model/filter_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FilterPreferences {
  static const String _filterKey = 'filter';

  static Future<void> saveFilter(FilterModel filter) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = json.encode(filter.toJson());
    prefs.setString(_filterKey, jsonString);
  }

  static Future<FilterModel?> getFilter() async {
    final prefs = await SharedPreferences.getInstance();
    final filterJson = prefs.getString(_filterKey);

    if (filterJson != null && filterJson.isNotEmpty) {
      final Map<String, dynamic> jsonMap = json.decode(filterJson);
      return FilterModel.fromJson(jsonMap);
    }
    return null;
  }
}
