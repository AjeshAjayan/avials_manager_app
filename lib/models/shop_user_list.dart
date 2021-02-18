import 'package:json_annotation/json_annotation.dart';


part 'shop_user_list.g.dart';

@JsonSerializable()
class ShopUserList {
      ShopUserList();

  int id;
  @JsonKey(name: 'shop_name') String shopName;
  @JsonKey(name: 'about_shop') String aboutShop;
  @JsonKey(name: 'date_of_join') String dateOfJoin;
  @JsonKey(name: 'is_closed') dynamic isClosed;
  @JsonKey(name: 'is_expired') dynamic isExpired;
  @JsonKey(name: 'users_permissions_user') dynamic usersPermissionsUser;
  @JsonKey(name: 'published_at') String publishedAt;
  @JsonKey(name: 'created_by') CreatedBy createdBy;
  @JsonKey(name: 'updated_by') UpdatedBy updatedBy;
  @JsonKey(name: 'created_at') String createdAt;
  @JsonKey(name: 'updated_at') String updatedAt;
  Place place;
  dynamic latitude;
  dynamic longitude;
  @JsonKey(name: 'is_verified') bool isVerified;
  @JsonKey(name: 'shop_plan') ShopPlan shopPlan;
  @JsonKey(name: 'order_child') OrderChild orderChild;
  @JsonKey(name: 'shop_image') ShopImage shopImage;
  @JsonKey(name: 'shop_cover_image') ShopCoverImage shopCoverImage;

  factory ShopUserList.fromJson(Map<String,dynamic> json) => _$ShopUserListFromJson(json);
  Map<String, dynamic> toJson() => _$ShopUserListToJson(this);
}

@JsonSerializable()
class CreatedBy {
      CreatedBy();

  int id;
  String firstname;
  String lastname;
  dynamic username;
  String email;
  dynamic resetPasswordToken;
  dynamic registrationToken;
  bool isActive;
  dynamic blocked;

  factory CreatedBy.fromJson(Map<String,dynamic> json) => _$CreatedByFromJson(json);
  Map<String, dynamic> toJson() => _$CreatedByToJson(this);
}

@JsonSerializable()
class UpdatedBy {
      UpdatedBy();

  int id;
  String firstname;
  String lastname;
  dynamic username;
  String email;
  dynamic resetPasswordToken;
  dynamic registrationToken;
  bool isActive;
  dynamic blocked;

  factory UpdatedBy.fromJson(Map<String,dynamic> json) => _$UpdatedByFromJson(json);
  Map<String, dynamic> toJson() => _$UpdatedByToJson(this);
}

@JsonSerializable()
class Place {
      Place();

  int id;
  String title;
  bool status;
  int district;
  String pincode;
  @JsonKey(name: 'published_at') String publishedAt;
  @JsonKey(name: 'created_by') int createdBy;
  @JsonKey(name: 'updated_by') int updatedBy;
  @JsonKey(name: 'created_at') String createdAt;
  @JsonKey(name: 'updated_at') String updatedAt;
  int manager;

  factory Place.fromJson(Map<String,dynamic> json) => _$PlaceFromJson(json);
  Map<String, dynamic> toJson() => _$PlaceToJson(this);
}

@JsonSerializable()
class ShopPlan {
      ShopPlan();

  int id;
  String title;
  String description;
  @JsonKey(name: 'no_of_products') int noOfProducts;
  @JsonKey(name: 'no_of_images_per_product') int noOfImagesPerProduct;
  @JsonKey(name: 'is_free_plan') bool isFreePlan;
  @JsonKey(name: 'published_at') String publishedAt;
  @JsonKey(name: 'created_by') int createdBy;
  @JsonKey(name: 'updated_by') int updatedBy;
  @JsonKey(name: 'created_at') String createdAt;
  @JsonKey(name: 'updated_at') String updatedAt;
  bool status;
  @JsonKey(name: 'plan_cover_image') PlanCoverImage planCoverImage;

  factory ShopPlan.fromJson(Map<String,dynamic> json) => _$ShopPlanFromJson(json);
  Map<String, dynamic> toJson() => _$ShopPlanToJson(this);
}

@JsonSerializable()
class PlanCoverImage {
      PlanCoverImage();

  int id;
  String name;
  String alternativeText;
  String caption;
  int width;
  int height;
  Formats formats;
  String hash;
  String ext;
  String mime;
  double size;
  String url;
  dynamic previewUrl;
  String provider;
  @JsonKey(name: 'provider_metadata') dynamic providerMetadata;
  @JsonKey(name: 'created_by') int createdBy;
  @JsonKey(name: 'updated_by') int updatedBy;
  @JsonKey(name: 'created_at') String createdAt;
  @JsonKey(name: 'updated_at') String updatedAt;

  factory PlanCoverImage.fromJson(Map<String,dynamic> json) => _$PlanCoverImageFromJson(json);
  Map<String, dynamic> toJson() => _$PlanCoverImageToJson(this);
}

@JsonSerializable()
class Formats {
      Formats();

  Small small;
  Thumbnail thumbnail;

  factory Formats.fromJson(Map<String,dynamic> json) => _$FormatsFromJson(json);
  Map<String, dynamic> toJson() => _$FormatsToJson(this);
}

@JsonSerializable()
class Small {
      Small();

  String ext;
  String url;
  String hash;
  String mime;
  String name;
  dynamic path;
  double size;
  int width;
  int height;

  factory Small.fromJson(Map<String,dynamic> json) => _$SmallFromJson(json);
  Map<String, dynamic> toJson() => _$SmallToJson(this);
}

@JsonSerializable()
class Thumbnail {
      Thumbnail();

  String ext;
  String url;
  String hash;
  String mime;
  String name;
  dynamic path;
  double size;
  int width;
  int height;

  factory Thumbnail.fromJson(Map<String,dynamic> json) => _$ThumbnailFromJson(json);
  Map<String, dynamic> toJson() => _$ThumbnailToJson(this);
}

@JsonSerializable()
class OrderChild {
      OrderChild();

  int id;
  @JsonKey(name: 'shop_product') dynamic shopProduct;
  @JsonKey(name: 'published_at') String publishedAt;
  @JsonKey(name: 'created_by') int createdBy;
  @JsonKey(name: 'updated_by') int updatedBy;
  @JsonKey(name: 'created_at') String createdAt;
  @JsonKey(name: 'updated_at') String updatedAt;
  int order;
  @JsonKey(name: 'is_processed') bool isProcessed;
  @JsonKey(name: 'is_dispatched') bool isDispatched;
  @JsonKey(name: 'is_delivered') dynamic isDelivered;
  int product;
  @JsonKey(name: 'public_user') dynamic publicUser;
  @JsonKey(name: 'shop_user') int shopUser;

  factory OrderChild.fromJson(Map<String,dynamic> json) => _$OrderChildFromJson(json);
  Map<String, dynamic> toJson() => _$OrderChildToJson(this);
}

@JsonSerializable()
class ShopImage {
      ShopImage();

  int id;
  String name;
  String alternativeText;
  String caption;
  int width;
  int height;
  Formats formats;
  String hash;
  String ext;
  String mime;
  double size;
  String url;
  dynamic previewUrl;
  String provider;
  @JsonKey(name: 'provider_metadata') dynamic providerMetadata;
  @JsonKey(name: 'created_by') int createdBy;
  @JsonKey(name: 'updated_by') int updatedBy;
  @JsonKey(name: 'created_at') String createdAt;
  @JsonKey(name: 'updated_at') String updatedAt;

  factory ShopImage.fromJson(Map<String,dynamic> json) => _$ShopImageFromJson(json);
  Map<String, dynamic> toJson() => _$ShopImageToJson(this);
}

@JsonSerializable()
class Medium {
      Medium();

  String ext;
  String url;
  String hash;
  String mime;
  String name;
  dynamic path;
  double size;
  int width;
  int height;

  factory Medium.fromJson(Map<String,dynamic> json) => _$MediumFromJson(json);
  Map<String, dynamic> toJson() => _$MediumToJson(this);
}

@JsonSerializable()
class ShopCoverImage {
      ShopCoverImage();

  int id;
  String name;
  String alternativeText;
  String caption;
  int width;
  int height;
  Formats formats;
  String hash;
  String ext;
  String mime;
  double size;
  String url;
  dynamic previewUrl;
  String provider;
  @JsonKey(name: 'provider_metadata') dynamic providerMetadata;
  @JsonKey(name: 'created_by') int createdBy;
  @JsonKey(name: 'updated_by') int updatedBy;
  @JsonKey(name: 'created_at') String createdAt;
  @JsonKey(name: 'updated_at') String updatedAt;

  factory ShopCoverImage.fromJson(Map<String,dynamic> json) => _$ShopCoverImageFromJson(json);
  Map<String, dynamic> toJson() => _$ShopCoverImageToJson(this);
}

