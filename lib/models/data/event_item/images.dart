import 'package:json_annotation/json_annotation.dart';

part 'images.g.dart';

@JsonSerializable()
class Images {
  final String? huge;

  const Images({this.huge});

  factory Images.fromJson(Map<String, dynamic> json) {
    return _$ImagesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ImagesToJson(this);
}
