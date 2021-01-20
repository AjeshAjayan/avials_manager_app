import 'package:avilas_manager_app/models/image_format_def.dart';
import 'package:avilas_manager_app/models/image_formats.dart';
import 'package:json_annotation/json_annotation.dart';
part 'image_format.g.dart';

@JsonSerializable()
class ImageFormat {
  ImageFormat(
    this.name,
    this.width,
    this.height,
    this.caption,
    this.alternativeText,
    this.id,
    this.formats,
  );

  int id;
  String name;
  String alternativeText;
  String caption;
  int width;
  int height;

  ImageFormats formats;

  factory ImageFormat.fromJson(Map<String, dynamic> json) =>
      _$ImageFormatFromJson(json);

  Map<String, dynamic> toJson() => _$ImageFormatToJson(this);
}
