// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_format_def.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FormatDef _$FormatDefFromJson(Map<String, dynamic> json) {
  return FormatDef(
    json['ext'] as String,
    json['height'] as int,
    json['width'] as int,
    json['url'] as String,
    (json['size'] as num)?.toDouble(),
    json['path'] as String,
    json['name'] as String,
    json['hash'] as String,
    json['mime'] as String,
  );
}

Map<String, dynamic> _$FormatDefToJson(FormatDef instance) => <String, dynamic>{
      'ext': instance.ext,
      'url': instance.url,
      'hash': instance.hash,
      'mime': instance.mime,
      'name': instance.name,
      'path': instance.path,
      'size': instance.size,
      'width': instance.width,
      'height': instance.height,
    };
