// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    json['id'] as int,
    json['email'] as String,
    json['username'] as String,
    json['blocked'] as bool,
    json['confirmed'] as bool,
    json['provider'] as String,
    json['role'] as int,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'provider': instance.provider,
      'confirmed': instance.confirmed,
      'blocked': instance.blocked,
      'role': instance.role,
    };
