// current version:for upgrade use
import 'package:coward_saver/model/model.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String Version = '0.0.1';
const int DVersion = 1;
const String MotivationKey = "motivations";
const String TargetKey = "targets";
const String RecordKey = "records";

class Global {
  //local storage
  static Future<SharedPreferences> _sharedPreferences =
      SharedPreferences.getInstance();
  static init() {}

  static Future<SharedPreferences> get sharedPreferences => _sharedPreferences;

  static clear() {
    _sharedPreferences.then((value) => value.clear());
  }
}
