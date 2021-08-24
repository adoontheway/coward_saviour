// current version:for upgrade use
import 'package:shared_preferences/shared_preferences.dart';

const String Version = '0.0.1';
const int DVersion = 1;
const String MotivationKey = "motivations";
const String TargetKey = "targets";
const String RecordKey = "records";
const bool inProduction = const bool.fromEnvironment("dart.vm.product");
// enum RecordUseful { Useful, Useless, UNKNOWN }

class Global {
  //local storage
  static Future<SharedPreferences> _sharedPreferences =
      SharedPreferences.getInstance();
  static init() {
    //if not in production mode,init some mock data
    if (!inProduction) {
      _initMockData();
    }
  }

  static _initMockData() {
    Map<String, Object> mockData = {};
    SharedPreferences.setMockInitialValues(mockData);
  }

  static Future<SharedPreferences> get sharedPreferences => _sharedPreferences;

  static clear() {
    _sharedPreferences.then((value) => value.clear());
  }
}
