import 'package:json_annotation/json_annotation.dart';

part 'order_child.g.dart';

@JsonSerializable()
class OrderChild {
  OrderChild(
    this.public_user,
    this.order,
    this.id,
    this.created_at,
    this.published_at,
    this.updated_at,
    this.is_processed,
    this.is_dispatched,
    this.is_delivered,
    this.product,
    this.shop_product,
    this.shop_user,
  );

  int id;
  dynamic shop_product;
  String published_at;
  String created_at;
  String updated_at;
  int order;
  bool is_processed;
  bool is_dispatched;
  bool is_delivered;
  int product;
  int public_user;
  dynamic shop_user;

  factory OrderChild.fromJson(Map<String, dynamic> json) => _$OrderChildFromJson(json);

  Map<String, dynamic> toJson() => _$OrderChildToJson(this);
}
