// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Record _$RecordFromJson(Map<String, dynamic> json) {
  return Record(
    content: json['content'] as String,
    datetime: DateTime.parse(json['datetime'] as String),
    cost: json['cost'] as int,
    useful: json['useful'] as bool,
  );
}

Map<String, dynamic> _$RecordToJson(Record instance) => <String, dynamic>{
      'content': instance.content,
      'datetime': instance.datetime.toIso8601String(),
      'cost': instance.cost,
      'useful': instance.useful,
    };
