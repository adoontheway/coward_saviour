import 'package:flutter/services.dart';
import 'dart:convert';
import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class MockData {
  static Future<bool> initMockData() async {
    String jsonString = await rootBundle.loadString("assets/data/mock.json");
    Map<String, Object> jsonResult = json.decode(jsonString);
    SharedPreferences.setMockInitialValues(jsonResult);
    return true;
  }
}
