// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_format.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageFormat _$ImageFormatFromJson(Map<String, dynamic> json) {
  return ImageFormat(
    json['large'] == null
        ? null
        : FormatDef.fromJson(json['large'] as Map<String, dynamic>),
    json['medium'] == null
        ? null
        : FormatDef.fromJson(json['medium'] as Map<String, dynamic>),
    json['small'] == null
        ? null
        : FormatDef.fromJson(json['small'] as Map<String, dynamic>),
    json['thumbnail'] == null
        ? null
        : FormatDef.fromJson(json['thumbnail'] as Map<String, dynamic>),
    json['name'] as String,
    json['width'] as int,
    json['height'] as int,
    json['caption'] as String,
    json['alternativeText'] as String,
    json['id'] as int,
  );
}

Map<String, dynamic> _$ImageFormatToJson(ImageFormat instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'alternativeText': instance.alternativeText,
      'caption': instance.caption,
      'width': instance.width,
      'height': instance.height,
      'large': instance.large,
      'small': instance.small,
      'medium': instance.medium,
      'thumbnail': instance.thumbnail,
    };
