// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) {
  return Order(
    json['id'] as int,
    json['created_at'] as String,
    json['is_delivered'] as bool,
    json['is_dispatched'] as bool,
    json['is_processed'] as bool,
    json['is_shop_products'] as bool,
    json['published_at'] as String,
    json['updated_at'] as String,
    json['public_user'] == null
        ? null
        : PublicUser.fromJson(json['public_user'] as Map<String, dynamic>),
    json['ordered_at'] as String,
  );
}

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'is_delivered': instance.is_delivered,
      'is_processed': instance.is_processed,
      'is_dispatched': instance.is_dispatched,
      'published_at': instance.published_at,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'is_shop_products': instance.is_shop_products,
      'public_user': instance.public_user,
      'ordered_at': instance.ordered_at,
    };
