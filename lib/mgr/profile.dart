import 'dart:convert';

import 'package:coward_saver/models/motivation.dart';
import 'package:coward_saver/models/record.dart';
import 'package:coward_saver/models/target.dart';
import 'package:dio/dio.dart';

import '../global.dart';

class Profile {
  static List<Motivation> _motivations = [];
  static List<Target> _targets = [];
  static List<Record> _records = [];
  static final String _remote = "127.0.0.1";
  static fetchFromRemote() {
    Dio().get(_remote).then((value) => {
          //todo
        });
  }

  static fetchFromLocal() {
    int? dv;
    //get version:
    Global.sharedPreferences.then((prefs) {
      //数据版本与当前数据版本对比
      dv = prefs.getInt("dv");
      if (dv != null && dv != DVersion) {
        //todo

      }
    });
    if (dv == null || dv == 0) {
      return;
    }
    //get motivations
    //get targets
    //get records
  }

  static syncLocal() {}
  static syncRemote() {}

  static init() {
    bool isLocal = false;
    //1. local saved,init from local
    //2. if not , and if logined, try sync from remote
    //3. if not, first time use
    if (isLocal) {
      fetchFromLocal();
    } else {
      fetchFromRemote();
    }
  }

  static modifyMotivation(Motivation mov) {
    //todo
  }

  static addMotivation(String content, int level) {
    _motivations.add(Motivation(content: content, level: level));
    Global.sharedPreferences.then(
        (prefs) => {prefs.setString(MotivationKey, jsonEncode(_motivations))});
  }

  static delMotivation(Motivation mov) {
    _motivations.remove(mov);
    Global.sharedPreferences.then(
        (prefs) => {prefs.setString(MotivationKey, jsonEncode(_motivations))});
  }

  static get motivations => _motivations;

  static addRecord(String content, DateTime date, bool useful, int cost) {
    _records.add(
        Record(content: content, datetime: date, useful: useful, cost: cost));
  }

  static delRecord(Record rec) {
    _records.remove(rec);
  }

  static get records => _records;

  static addTarget(String content, DateTime date, int level) {
    _targets.add(Target(content: content, deadline: date, level: level));
  }

  static delTarget(Target tar) {
    _targets.remove(tar);
  }

  static get targets => _targets;

  static clear() {
    Global.clear();
  }
}
