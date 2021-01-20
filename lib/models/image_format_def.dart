import 'package:json_annotation/json_annotation.dart';
part 'image_format_def.g.dart';

@JsonSerializable()
class FormatDef {
  FormatDef(
      this.ext,
      this.height,
      this.width,
      this.url,
      this.size,
      this.path,
      this.name,
      this.hash,
      this.mime,
      );

  String ext;
  String url;
  String hash;
  String mime;
  String name;
  String path;
  int size;
  int width;
  int height;

  factory FormatDef.fromJson(Map<String, dynamic> json) =>
      _$FormatDefFromJson(json);

  Map<String, dynamic> toJson() => _$FormatDefToJson(this);
}