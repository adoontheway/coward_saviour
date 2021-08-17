import 'package:coward_saver/model/model.dart';

class Profile {
  static List<Motivation> _motivations = [];
  static List<Target> _targets = [];
  static List<Record> _records = [];
  static final String _remote = "127.0.0.1";
  static fetchFromRemote() {}
  static fetchFromLocal() {}
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

  static addMotivation(String content, int level) {
    _motivations.add(Motivation(content: content, level: level));
  }

  static delMotivation(Motivation mov) {
    _motivations.remove(mov);
  }

  static get motivations => _motivations;
}
