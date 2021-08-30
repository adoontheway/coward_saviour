// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'target.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Target _$TargetFromJson(Map<String, dynamic> json) {
  return Target(
    content: json['content'] as String,
    deadline: json['deadline'] as int,
    level: json['level'] as int,
  );
}

Map<String, dynamic> _$TargetToJson(Target instance) => <String, dynamic>{
      'content': instance.content,
      'deadline': instance.deadline,
      'level': instance.level,
    };
