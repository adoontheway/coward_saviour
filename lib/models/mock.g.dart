// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mock.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Mock _$MockFromJson(Map<String, dynamic> json) {
  return Mock(
    version: json['version'] as int,
    targets: (json['targets'] as List<dynamic>)
        .map((e) => Target.fromJson(e as Map<String, dynamic>))
        .toList(),
    records: (json['records'] as List<dynamic>)
        .map((e) => Record.fromJson(e as Map<String, dynamic>))
        .toList(),
    motivations: (json['motivations'] as List<dynamic>)
        .map((e) => Motivation.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$MockToJson(Mock instance) => <String, dynamic>{
      'version': instance.version,
      'targets': instance.targets,
      'records': instance.records,
      'motivations': instance.motivations,
    };
