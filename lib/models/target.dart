import 'package:json_annotation/json_annotation.dart';

part 'target.g.dart';
@JsonSerializable()
class Target {
    Target({required this.content,required this.deadline,required this.level});

    String content;
    int deadline;
    int level;
    
    factory Target.fromJson(Map<String,dynamic> json) => _$TargetFromJson(json);
    Map<String, dynamic> toJson() => _$TargetToJson(this);
}