import 'package:json_annotation/json_annotation.dart';
import "target.dart";
import "record.dart";
import "motivation.dart";
part 'mock.g.dart';
@JsonSerializable()
class Mock {
    Mock({required this.version,required this.targets,required this.records,required this.motivations});

    int version;
    List<Target> targets;
    List<Record> records;
    List<Motivation> motivations;
    
    factory Mock.fromJson(Map<String,dynamic> json) => _$MockFromJson(json);
    Map<String, dynamic> toJson() => _$MockToJson(this);
}