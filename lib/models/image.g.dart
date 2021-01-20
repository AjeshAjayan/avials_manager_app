// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Image _$ImageFromJson(Map<String, dynamic> json) {
  return Image(
    json['id'] as int,
    json['name'] as String,
    json['alternativeText'] as String,
    json['caption'] as String,
    json['width'] as int,
    json['height'] as int,
  );
}

Map<String, dynamic> _$ImageToJson(Image instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'alternativeText': instance.alternativeText,
      'caption': instance.caption,
      'width': instance.width,
      'height': instance.height,
    };
