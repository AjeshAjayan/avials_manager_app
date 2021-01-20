// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manager.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Manager _$ManagerFromJson(Map<String, dynamic> json) {
  return Manager(
    json['id'] as int,
    json['fullname'] as String,
    json['email'] as String,
    json['is_active'] as bool,
    json['date_of_birth'] as String,
    json['date_of_joining'] as String,
    json['is_resigned'] as bool,
    json['is_terminated'] as bool,
    json['is_verified'] as bool,
    json['place'] == null
        ? null
        : Place.fromJson(json['place'] as Map<String, dynamic>),
    json['users_permissions_user'] == null
        ? null
        : User.fromJson(json['users_permissions_user'] as Map<String, dynamic>),
    json['profile_pic'] == null
        ? null
        : ImageFormat.fromJson(json['profile_pic'] as Map<String, dynamic>),
    (json['places'] as List)
        ?.map(
            (e) => e == null ? null : Place.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ManagerToJson(Manager instance) => <String, dynamic>{
      'id': instance.id,
      'fullname': instance.fullname,
      'email': instance.email,
      'is_active': instance.is_active,
      'place': instance.place,
      'is_terminated': instance.is_terminated,
      'is_resigned': instance.is_resigned,
      'date_of_birth': instance.date_of_birth,
      'date_of_joining': instance.date_of_joining,
      'is_verified': instance.is_verified,
      'users_permissions_user': instance.users_permissions_user,
      'profile_pic': instance.profile_pic,
      'places': instance.places,
    };
