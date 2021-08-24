// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'motivation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Motivation _$MotivationFromJson(Map<String, dynamic> json) {
  return Motivation(
    content: json['content'] as String,
    level: json['level'] as int,
  );
}

Map<String, dynamic> _$MotivationToJson(Motivation instance) =>
    <String, dynamic>{
      'content': instance.content,
      'level': instance.level,
    };
