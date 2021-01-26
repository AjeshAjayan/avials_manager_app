import 'package:avilas_manager_app/models/user.dart';
import 'package:json_annotation/json_annotation.dart';
part 'shop_user.g.dart';

@JsonSerializable()
class ShopUser {
  ShopUser(
    this.place,
    this.id,
    this.updated_at,
    this.published_at,
    this.created_at,
    this.date_of_join,
    this.users_permissions_user,
    this.is_verified,
    this.longitude,
    this.latitude,
    this.about_shop,
    this.is_closed,
    this.is_expired,
    this.order_child,
    this.shop_name,
    this.shop_plan,
  );

  int id;
  String shop_name;
  String about_shop;
  String date_of_join;
  bool is_closed;
  bool is_expired;
  User users_permissions_user;
  String published_at;
  String created_at;
  String updated_at;
  int place;
  String latitude;
  String longitude;
  bool is_verified;
  int shop_plan;
  int order_child;

  factory ShopUser.fromJson(Map<String, dynamic> json) => _$ShopUserFromJson(json);

  Map<String, dynamic> toJson() => _$ShopUserToJson(this);
}
