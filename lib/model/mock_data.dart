import 'package:coward_saver/models/target.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class MockData {
  int version;
  List<Target> targets;
  List records;
  List motivations;
  MockData(this.version, this.targets, this.records, this.motivations);

  Future<MockData> getMockData() async {
    String jsonString = await rootBundle.loadString("assets/data/mock.json");
    final jsonResult = json.decode(jsonString);
    return jsonResult;
  }
}
