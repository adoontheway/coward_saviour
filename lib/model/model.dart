class Model {}

class Record {
  String content; //what did you do
  DateTime dateTime; // create time
  int cost; //time cost in hour
  Record({required this.content, required this.dateTime, required this.cost});
}

class Motivation {
  String content;
  int level;
  Motivation({required this.content, required this.level});
}

class Target {
  String content;
  DateTime deadline;
  int level;
  Target({required this.content, required this.deadline, required this.level});
}
