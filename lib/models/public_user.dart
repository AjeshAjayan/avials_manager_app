import 'package:avilas_manager_app/models/image.dart';
import 'package:avilas_manager_app/models/image_format.dart';
import 'package:avilas_manager_app/models/place.dart';
import 'package:avilas_manager_app/models/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'public_user.g.dart';

@JsonSerializable()
class PublicUser {
  PublicUser(
    this.updated_at,
    this.published_at,
    this.created_at,
    this.id,
    this.users_permissions_user,
    this.place,
    this.date_of_join,
    this.full_name,
    this.is_blocked,
    this.last_active_date,
    this.order,
    this.phone_number,
    this.profile_pic,
  );

  int id;
  String full_name;
  String phone_number;
  Place place;
  String date_of_join;
  User users_permissions_user;
  bool is_blocked;
  String last_active_date;
  String published_at;
  String created_at;
  String updated_at;
  int order;
  ImageFormat profile_pic;

  factory PublicUser.fromJson(Map<String, dynamic> json) => _$PublicUserFromJson(json);

  Map<String, dynamic> toJson() => _$PublicUserToJson(this);
}
