import 'package:avilas_manager_app/models/public_user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order.g.dart';

@JsonSerializable()
class Order {
  Order(
    this.id,
    this.created_at,
    this.is_delivered,
    this.is_dispatched,
    this.is_processed,
    this.is_shop_products,
    this.published_at,
    this.updated_at,
    this.public_user,
    this.ordered_at,
  );

  int id;

  bool is_delivered;
  bool is_processed;
  bool is_dispatched;
  String published_at;
  String created_at;
  String updated_at;
  bool is_shop_products;
  PublicUser public_user;
  String ordered_at;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  Map<String, dynamic> toJson() => _$OrderToJson(this);
}
