import 'package:json_annotation/json_annotation.dart';

part 'motivation.g.dart';
@JsonSerializable()
class Motivation {
    Motivation({required this.content,required this.level});

    String content;
    int level;
    
    factory Motivation.fromJson(Map<String,dynamic> json) => _$MotivationFromJson(json);
    Map<String, dynamic> toJson() => _$MotivationToJson(this);
}