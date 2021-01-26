// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_user_int_place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublicUserIntPlace _$PublicUserIntPlaceFromJson(Map<String, dynamic> json) {
  return PublicUserIntPlace(
    json['updated_at'] as String,
    json['published_at'] as String,
    json['created_at'] as String,
    json['id'] as int,
    json['users_permissions_user'] == null
        ? null
        : User.fromJson(json['users_permissions_user'] as Map<String, dynamic>),
    json['place'] as int,
    json['date_of_join'] as String,
    json['full_name'] as String,
    json['is_blocked'] as bool,
    json['last_active_date'] as String,
    json['order'] as int,
    json['phone_number'] as String,
    json['profile_pic'] == null
        ? null
        : ImageFormat.fromJson(json['profile_pic'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PublicUserIntPlaceToJson(PublicUserIntPlace instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full_name': instance.full_name,
      'phone_number': instance.phone_number,
      'place': instance.place,
      'date_of_join': instance.date_of_join,
      'users_permissions_user': instance.users_permissions_user,
      'is_blocked': instance.is_blocked,
      'last_active_date': instance.last_active_date,
      'published_at': instance.published_at,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'order': instance.order,
      'profile_pic': instance.profile_pic,
    };
