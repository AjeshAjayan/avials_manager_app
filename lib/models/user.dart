import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

@JsonSerializable()
class User {
  User(
    this.id,
    this.email,
    this.username,
    this.blocked,
    this.confirmed,
    this.provider,
    this.role,
  );

  int id;
  String username;
  String email;
  String provider;
  bool confirmed;
  bool blocked;
  int role;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
