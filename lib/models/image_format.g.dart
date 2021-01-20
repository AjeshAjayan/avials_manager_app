// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_format.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageFormat _$ImageFormatFromJson(Map<String, dynamic> json) {
  return ImageFormat(
    json['name'] as String,
    json['width'] as int,
    json['height'] as int,
    json['caption'] as String,
    json['alternativeText'] as String,
    json['id'] as int,
    json['formats'] == null
        ? null
        : ImageFormats.fromJson(json['formats'] as Map<String, dynamic>),
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
      'formats': instance.formats,
    };
