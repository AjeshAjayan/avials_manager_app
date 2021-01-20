// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Place _$PlaceFromJson(Map<String, dynamic> json) {
  return Place(
    json['id'] as int,
    json['title'] as String,
    json['status'] as bool,
    json['district'] as int,
    json['pincode'] as String,
  );
}

Map<String, dynamic> _$PlaceToJson(Place instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'status': instance.status,
      'district': instance.district,
      'pincode': instance.pincode,
    };
