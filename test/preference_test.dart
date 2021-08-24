import 'package:coward_saver/global.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
  test("test shared preference initmockdata", () {
    Global.init();
    Global.sharedPreferences.then((prefs) {
      print(prefs.getInt("version"));
      expect(prefs.getInt("version"), 1);
    });
  });
}
