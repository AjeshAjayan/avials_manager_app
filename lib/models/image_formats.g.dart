// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_formats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageFormats _$ImageFormatsFromJson(Map<String, dynamic> json) {
  return ImageFormats(
    json['large'] == null
        ? null
        : FormatDef.fromJson(json['large'] as Map<String, dynamic>),
    json['small'] == null
        ? null
        : FormatDef.fromJson(json['small'] as Map<String, dynamic>),
    json['medium'] == null
        ? null
        : FormatDef.fromJson(json['medium'] as Map<String, dynamic>),
    json['thumbnail'] == null
        ? null
        : FormatDef.fromJson(json['thumbnail'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ImageFormatsToJson(ImageFormats instance) =>
    <String, dynamic>{
      'large': instance.large,
      'small': instance.small,
      'medium': instance.medium,
      'thumbnail': instance.thumbnail,
    };
