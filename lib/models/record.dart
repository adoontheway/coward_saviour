import 'package:json_annotation/json_annotation.dart';

part 'record.g.dart';
@JsonSerializable()
class Record {
    Record({required this.content,required this.datetime,required this.cost,required this.useful});

    String content;
    int datetime;
    int cost;
    bool useful;
    
    factory Record.fromJson(Map<String,dynamic> json) => _$RecordFromJson(json);
    Map<String, dynamic> toJson() => _$RecordToJson(this);
}