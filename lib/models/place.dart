import 'package:json_annotation/json_annotation.dart';
part 'place.g.dart';

@JsonSerializable()
class Place {
  Place(this.id, this.title, this.status, this.district, this.pincode);

  int id;
  String title;
  bool status;
  int district;
  String pincode;

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);

  Map<String, dynamic> toJson() => _$PlaceToJson(this);
}