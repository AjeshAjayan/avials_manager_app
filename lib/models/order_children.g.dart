// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_children.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderChild _$OrderChildFromJson(Map<String, dynamic> json) {
  return OrderChild(
    json['id'] as int,
    json['published_at'] as String,
    json['created_at'] as String,
    json['updated_at'] as String,
    json['order'] as int,
    json['is_processed'] as bool,
    json['is_dispatched'] as bool,
    json['is_delivered'] as bool,
    json['public_user'] == null
        ? null
        : PublicUserIntPlace.fromJson(
            json['public_user'] as Map<String, dynamic>),
    json['shop_user'] == null
        ? null
        : ShopUser.fromJson(json['shop_user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$OrderChildToJson(OrderChild instance) =>
    <String, dynamic>{
      'id': instance.id,
      'published_at': instance.published_at,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'order': instance.order,
      'is_processed': instance.is_processed,
      'is_dispatched': instance.is_dispatched,
      'is_delivered': instance.is_delivered,
      'public_user': instance.public_user,
      'shop_user': instance.shop_user,
    };
