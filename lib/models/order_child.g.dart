// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_child.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderChild _$OrderChildFromJson(Map<String, dynamic> json) {
  return OrderChild(
    json['public_user'] as int,
    json['order'] as int,
    json['id'] as int,
    json['created_at'] as String,
    json['published_at'] as String,
    json['updated_at'] as String,
    json['is_processed'] as bool,
    json['is_dispatched'] as bool,
    json['is_delivered'] as bool,
    json['product'] as int,
    json['shop_product'],
    json['shop_user'],
  );
}

Map<String, dynamic> _$OrderChildToJson(OrderChild instance) =>
    <String, dynamic>{
      'id': instance.id,
      'shop_product': instance.shop_product,
      'published_at': instance.published_at,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'order': instance.order,
      'is_processed': instance.is_processed,
      'is_dispatched': instance.is_dispatched,
      'is_delivered': instance.is_delivered,
      'product': instance.product,
      'public_user': instance.public_user,
      'shop_user': instance.shop_user,
    };
