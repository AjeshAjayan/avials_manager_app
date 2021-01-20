import 'package:json_annotation/json_annotation.dart';
part 'image.g.dart';

@JsonSerializable()
class Image {
  Image(
    this.id,
    this.name,
    this.alternativeText,
    this.caption,
    this.width,
    this.height,
  );

  int id;
  String name;
  String alternativeText;
  String caption;
  int width;
  int height;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

  Map<String, dynamic> toJson() => _$ImageToJson(this);
}

