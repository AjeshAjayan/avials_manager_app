import 'package:avilas_manager_app/models/image_format.dart';
import 'package:avilas_manager_app/models/place.dart';
import 'package:avilas_manager_app/models/user.dart';
import 'package:json_annotation/json_annotation.dart';
part 'manager.g.dart';

@JsonSerializable()
class Manager {
  Manager(
    this.id,
    this.fullname,
    this.email,
    this.is_active,
    this.date_of_birth,
    this.date_of_joining,
    this.is_resigned,
    this.is_terminated,
    this.is_verified,
    this.place,
    this.users_permissions_user,
    this.profile_pic,
    this.places,
  );

  int id;
  String fullname;
  String email;
  // ignore: non_constant_identifier_names
  bool is_active;
  Place place;
  bool is_terminated;
  bool is_resigned;
  String date_of_birth;
  String date_of_joining;
  bool is_verified;
  User users_permissions_user;
  ImageFormat profile_pic;
  List<Place> places;

  factory Manager.fromJson(Map<String, dynamic> json) =>
      _$ManagerFromJson(json);

  Map<String, dynamic> toJson() => _$ManagerToJson(this);
}
