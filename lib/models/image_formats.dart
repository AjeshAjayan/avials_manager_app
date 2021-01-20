import 'package:json_annotation/json_annotation.dart';

import 'image_format_def.dart';
part 'image_formats.g.dart';

@JsonSerializable()
class ImageFormats {
  ImageFormats(this.large, this.small, this.medium, this.thumbnail);

  FormatDef large;

  FormatDef small;

  FormatDef medium;

  FormatDef thumbnail;

  factory ImageFormats.fromJson(Map<String, dynamic> json) => _$ImageFormatsFromJson(json);

  Map<String, dynamic> toJson() => _$ImageFormatsToJson(this);
}