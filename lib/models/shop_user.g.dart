// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShopUser _$ShopUserFromJson(Map<String, dynamic> json) {
  return ShopUser(
    json['place'] as int,
    json['id'] as int,
    json['updated_at'] as String,
    json['published_at'] as String,
    json['created_at'] as String,
    json['date_of_join'] as String,
    json['users_permissions_user'] == null
        ? null
        : User.fromJson(json['users_permissions_user'] as Map<String, dynamic>),
    json['is_verified'] as bool,
    json['longitude'] as String,
    json['latitude'] as String,
    json['about_shop'] as String,
    json['is_closed'] as bool,
    json['is_expired'] as bool,
    json['order_child'] as int,
    json['shop_name'] as String,
    json['shop_plan'] as int,
  );
}

Map<String, dynamic> _$ShopUserToJson(ShopUser instance) => <String, dynamic>{
      'id': instance.id,
      'shop_name': instance.shop_name,
      'about_shop': instance.about_shop,
      'date_of_join': instance.date_of_join,
      'is_closed': instance.is_closed,
      'is_expired': instance.is_expired,
      'users_permissions_user': instance.users_permissions_user,
      'published_at': instance.published_at,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'place': instance.place,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'is_verified': instance.is_verified,
      'shop_plan': instance.shop_plan,
      'order_child': instance.order_child,
    };
