// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_user_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShopUserList _$ShopUserListFromJson(Map<String, dynamic> json) {
  return ShopUserList()
    ..id = json['id'] as int
    ..shopName = json['shop_name'] as String
    ..aboutShop = json['about_shop'] as String
    ..dateOfJoin = json['date_of_join'] as String
    ..isClosed = json['is_closed']
    ..isExpired = json['is_expired']
    ..usersPermissionsUser = json['users_permissions_user']
    ..publishedAt = json['published_at'] as String
    ..createdBy = json['created_by'] == null
        ? null
        : CreatedBy.fromJson(json['created_by'] as Map<String, dynamic>)
    ..updatedBy = json['updated_by'] == null
        ? null
        : UpdatedBy.fromJson(json['updated_by'] as Map<String, dynamic>)
    ..createdAt = json['created_at'] as String
    ..updatedAt = json['updated_at'] as String
    ..place = json['place'] == null
        ? null
        : Place.fromJson(json['place'] as Map<String, dynamic>)
    ..latitude = json['latitude']
    ..longitude = json['longitude']
    ..isVerified = json['is_verified'] as bool
    ..shopPlan = json['shop_plan'] == null
        ? null
        : ShopPlan.fromJson(json['shop_plan'] as Map<String, dynamic>)
    ..orderChild = json['order_child'] == null
        ? null
        : OrderChild.fromJson(json['order_child'] as Map<String, dynamic>)
    ..shopImage = json['shop_image'] == null
        ? null
        : ShopImage.fromJson(json['shop_image'] as Map<String, dynamic>)
    ..shopCoverImage = json['shop_cover_image'] == null
        ? null
        : ShopCoverImage.fromJson(
            json['shop_cover_image'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ShopUserListToJson(ShopUserList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'shop_name': instance.shopName,
      'about_shop': instance.aboutShop,
      'date_of_join': instance.dateOfJoin,
      'is_closed': instance.isClosed,
      'is_expired': instance.isExpired,
      'users_permissions_user': instance.usersPermissionsUser,
      'published_at': instance.publishedAt,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'place': instance.place,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'is_verified': instance.isVerified,
      'shop_plan': instance.shopPlan,
      'order_child': instance.orderChild,
      'shop_image': instance.shopImage,
      'shop_cover_image': instance.shopCoverImage,
    };

CreatedBy _$CreatedByFromJson(Map<String, dynamic> json) {
  return CreatedBy()
    ..id = json['id'] as int
    ..firstname = json['firstname'] as String
    ..lastname = json['lastname'] as String
    ..username = json['username']
    ..email = json['email'] as String
    ..resetPasswordToken = json['resetPasswordToken']
    ..registrationToken = json['registrationToken']
    ..isActive = json['isActive'] as bool
    ..blocked = json['blocked'];
}

Map<String, dynamic> _$CreatedByToJson(CreatedBy instance) => <String, dynamic>{
      'id': instance.id,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'username': instance.username,
      'email': instance.email,
      'resetPasswordToken': instance.resetPasswordToken,
      'registrationToken': instance.registrationToken,
      'isActive': instance.isActive,
      'blocked': instance.blocked,
    };

UpdatedBy _$UpdatedByFromJson(Map<String, dynamic> json) {
  return UpdatedBy()
    ..id = json['id'] as int
    ..firstname = json['firstname'] as String
    ..lastname = json['lastname'] as String
    ..username = json['username']
    ..email = json['email'] as String
    ..resetPasswordToken = json['resetPasswordToken']
    ..registrationToken = json['registrationToken']
    ..isActive = json['isActive'] as bool
    ..blocked = json['blocked'];
}

Map<String, dynamic> _$UpdatedByToJson(UpdatedBy instance) => <String, dynamic>{
      'id': instance.id,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'username': instance.username,
      'email': instance.email,
      'resetPasswordToken': instance.resetPasswordToken,
      'registrationToken': instance.registrationToken,
      'isActive': instance.isActive,
      'blocked': instance.blocked,
    };

Place _$PlaceFromJson(Map<String, dynamic> json) {
  return Place()
    ..id = json['id'] as int
    ..title = json['title'] as String
    ..status = json['status'] as bool
    ..district = json['district'] as int
    ..pincode = json['pincode'] as String
    ..publishedAt = json['published_at'] as String
    ..createdBy = json['created_by'] as int
    ..updatedBy = json['updated_by'] as int
    ..createdAt = json['created_at'] as String
    ..updatedAt = json['updated_at'] as String
    ..manager = json['manager'] as int;
}

Map<String, dynamic> _$PlaceToJson(Place instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'status': instance.status,
      'district': instance.district,
      'pincode': instance.pincode,
      'published_at': instance.publishedAt,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'manager': instance.manager,
    };

ShopPlan _$ShopPlanFromJson(Map<String, dynamic> json) {
  return ShopPlan()
    ..id = json['id'] as int
    ..title = json['title'] as String
    ..description = json['description'] as String
    ..noOfProducts = json['no_of_products'] as int
    ..noOfImagesPerProduct = json['no_of_images_per_product'] as int
    ..isFreePlan = json['is_free_plan'] as bool
    ..publishedAt = json['published_at'] as String
    ..createdBy = json['created_by'] as int
    ..updatedBy = json['updated_by'] as int
    ..createdAt = json['created_at'] as String
    ..updatedAt = json['updated_at'] as String
    ..status = json['status'] as bool
    ..planCoverImage = json['plan_cover_image'] == null
        ? null
        : PlanCoverImage.fromJson(
            json['plan_cover_image'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ShopPlanToJson(ShopPlan instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'no_of_products': instance.noOfProducts,
      'no_of_images_per_product': instance.noOfImagesPerProduct,
      'is_free_plan': instance.isFreePlan,
      'published_at': instance.publishedAt,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'status': instance.status,
      'plan_cover_image': instance.planCoverImage,
    };

PlanCoverImage _$PlanCoverImageFromJson(Map<String, dynamic> json) {
  return PlanCoverImage()
    ..id = json['id'] as int
    ..name = json['name'] as String
    ..alternativeText = json['alternativeText'] as String
    ..caption = json['caption'] as String
    ..width = json['width'] as int
    ..height = json['height'] as int
    ..formats = json['formats'] == null
        ? null
        : Formats.fromJson(json['formats'] as Map<String, dynamic>)
    ..hash = json['hash'] as String
    ..ext = json['ext'] as String
    ..mime = json['mime'] as String
    ..size = (json['size'] as num)?.toDouble()
    ..url = json['url'] as String
    ..previewUrl = json['previewUrl']
    ..provider = json['provider'] as String
    ..providerMetadata = json['provider_metadata']
    ..createdBy = json['created_by'] as int
    ..updatedBy = json['updated_by'] as int
    ..createdAt = json['created_at'] as String
    ..updatedAt = json['updated_at'] as String;
}

Map<String, dynamic> _$PlanCoverImageToJson(PlanCoverImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'alternativeText': instance.alternativeText,
      'caption': instance.caption,
      'width': instance.width,
      'height': instance.height,
      'formats': instance.formats,
      'hash': instance.hash,
      'ext': instance.ext,
      'mime': instance.mime,
      'size': instance.size,
      'url': instance.url,
      'previewUrl': instance.previewUrl,
      'provider': instance.provider,
      'provider_metadata': instance.providerMetadata,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

Formats _$FormatsFromJson(Map<String, dynamic> json) {
  return Formats()
    ..small = json['small'] == null
        ? null
        : Small.fromJson(json['small'] as Map<String, dynamic>)
    ..thumbnail = json['thumbnail'] == null
        ? null
        : Thumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>);
}

Map<String, dynamic> _$FormatsToJson(Formats instance) => <String, dynamic>{
      'small': instance.small,
      'thumbnail': instance.thumbnail,
    };

Small _$SmallFromJson(Map<String, dynamic> json) {
  return Small()
    ..ext = json['ext'] as String
    ..url = json['url'] as String
    ..hash = json['hash'] as String
    ..mime = json['mime'] as String
    ..name = json['name'] as String
    ..path = json['path']
    ..size = (json['size'] as num)?.toDouble()
    ..width = json['width'] as int
    ..height = json['height'] as int;
}

Map<String, dynamic> _$SmallToJson(Small instance) => <String, dynamic>{
      'ext': instance.ext,
      'url': instance.url,
      'hash': instance.hash,
      'mime': instance.mime,
      'name': instance.name,
      'path': instance.path,
      'size': instance.size,
      'width': instance.width,
      'height': instance.height,
    };

Thumbnail _$ThumbnailFromJson(Map<String, dynamic> json) {
  return Thumbnail()
    ..ext = json['ext'] as String
    ..url = json['url'] as String
    ..hash = json['hash'] as String
    ..mime = json['mime'] as String
    ..name = json['name'] as String
    ..path = json['path']
    ..size = (json['size'] as num)?.toDouble()
    ..width = json['width'] as int
    ..height = json['height'] as int;
}

Map<String, dynamic> _$ThumbnailToJson(Thumbnail instance) => <String, dynamic>{
      'ext': instance.ext,
      'url': instance.url,
      'hash': instance.hash,
      'mime': instance.mime,
      'name': instance.name,
      'path': instance.path,
      'size': instance.size,
      'width': instance.width,
      'height': instance.height,
    };

OrderChild _$OrderChildFromJson(Map<String, dynamic> json) {
  return OrderChild()
    ..id = json['id'] as int
    ..shopProduct = json['shop_product']
    ..publishedAt = json['published_at'] as String
    ..createdBy = json['created_by'] as int
    ..updatedBy = json['updated_by'] as int
    ..createdAt = json['created_at'] as String
    ..updatedAt = json['updated_at'] as String
    ..order = json['order'] as int
    ..isProcessed = json['is_processed'] as bool
    ..isDispatched = json['is_dispatched'] as bool
    ..isDelivered = json['is_delivered']
    ..product = json['product'] as int
    ..publicUser = json['public_user']
    ..shopUser = json['shop_user'] as int;
}

Map<String, dynamic> _$OrderChildToJson(OrderChild instance) =>
    <String, dynamic>{
      'id': instance.id,
      'shop_product': instance.shopProduct,
      'published_at': instance.publishedAt,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'order': instance.order,
      'is_processed': instance.isProcessed,
      'is_dispatched': instance.isDispatched,
      'is_delivered': instance.isDelivered,
      'product': instance.product,
      'public_user': instance.publicUser,
      'shop_user': instance.shopUser,
    };

ShopImage _$ShopImageFromJson(Map<String, dynamic> json) {
  return ShopImage()
    ..id = json['id'] as int
    ..name = json['name'] as String
    ..alternativeText = json['alternativeText'] as String
    ..caption = json['caption'] as String
    ..width = json['width'] as int
    ..height = json['height'] as int
    ..formats = json['formats'] == null
        ? null
        : Formats.fromJson(json['formats'] as Map<String, dynamic>)
    ..hash = json['hash'] as String
    ..ext = json['ext'] as String
    ..mime = json['mime'] as String
    ..size = (json['size'] as num)?.toDouble()
    ..url = json['url'] as String
    ..previewUrl = json['previewUrl']
    ..provider = json['provider'] as String
    ..providerMetadata = json['provider_metadata']
    ..createdBy = json['created_by'] as int
    ..updatedBy = json['updated_by'] as int
    ..createdAt = json['created_at'] as String
    ..updatedAt = json['updated_at'] as String;
}

Map<String, dynamic> _$ShopImageToJson(ShopImage instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'alternativeText': instance.alternativeText,
      'caption': instance.caption,
      'width': instance.width,
      'height': instance.height,
      'formats': instance.formats,
      'hash': instance.hash,
      'ext': instance.ext,
      'mime': instance.mime,
      'size': instance.size,
      'url': instance.url,
      'previewUrl': instance.previewUrl,
      'provider': instance.provider,
      'provider_metadata': instance.providerMetadata,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

Medium _$MediumFromJson(Map<String, dynamic> json) {
  return Medium()
    ..ext = json['ext'] as String
    ..url = json['url'] as String
    ..hash = json['hash'] as String
    ..mime = json['mime'] as String
    ..name = json['name'] as String
    ..path = json['path']
    ..size = (json['size'] as num)?.toDouble()
    ..width = json['width'] as int
    ..height = json['height'] as int;
}

Map<String, dynamic> _$MediumToJson(Medium instance) => <String, dynamic>{
      'ext': instance.ext,
      'url': instance.url,
      'hash': instance.hash,
      'mime': instance.mime,
      'name': instance.name,
      'path': instance.path,
      'size': instance.size,
      'width': instance.width,
      'height': instance.height,
    };

ShopCoverImage _$ShopCoverImageFromJson(Map<String, dynamic> json) {
  return ShopCoverImage()
    ..id = json['id'] as int
    ..name = json['name'] as String
    ..alternativeText = json['alternativeText'] as String
    ..caption = json['caption'] as String
    ..width = json['width'] as int
    ..height = json['height'] as int
    ..formats = json['formats'] == null
        ? null
        : Formats.fromJson(json['formats'] as Map<String, dynamic>)
    ..hash = json['hash'] as String
    ..ext = json['ext'] as String
    ..mime = json['mime'] as String
    ..size = (json['size'] as num)?.toDouble()
    ..url = json['url'] as String
    ..previewUrl = json['previewUrl']
    ..provider = json['provider'] as String
    ..providerMetadata = json['provider_metadata']
    ..createdBy = json['created_by'] as int
    ..updatedBy = json['updated_by'] as int
    ..createdAt = json['created_at'] as String
    ..updatedAt = json['updated_at'] as String;
}

Map<String, dynamic> _$ShopCoverImageToJson(ShopCoverImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'alternativeText': instance.alternativeText,
      'caption': instance.caption,
      'width': instance.width,
      'height': instance.height,
      'formats': instance.formats,
      'hash': instance.hash,
      'ext': instance.ext,
      'mime': instance.mime,
      'size': instance.size,
      'url': instance.url,
      'previewUrl': instance.previewUrl,
      'provider': instance.provider,
      'provider_metadata': instance.providerMetadata,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
