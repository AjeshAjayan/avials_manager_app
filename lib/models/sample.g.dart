// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sample _$SampleFromJson(Map<String, dynamic> json) {
  return Sample(
    json['name'] as String,
    json['email'] as String,
  );
}

Map<String, dynamic> _$SampleToJson(Sample instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
    };
