import 'package:avilas_manager_app/models/public_user.dart';
import 'package:avilas_manager_app/models/public_user_int_place.dart';
import 'package:avilas_manager_app/models/shop_user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_children.g.dart';

@JsonSerializable()
class OrderChild {
  OrderChild(
    this.id,
    this.published_at,
    this.created_at,
    this.updated_at,
    this.order,
    this.is_processed,
    this.is_dispatched,
    this.is_delivered,
    this.public_user,
    this.shop_user,
  );

  int id;
  String published_at;
  String created_at;
  String updated_at;
  int order;
  bool is_processed;
  bool is_dispatched;
  bool is_delivered;
  PublicUserIntPlace public_user;
  ShopUser shop_user;

  factory OrderChild.fromJson(Map<String, dynamic> json) =>
      _$OrderChildFromJson(json);

  Map<String, dynamic> toJson() => _$OrderChildToJson(this);
}
