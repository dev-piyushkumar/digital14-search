import 'package:json_annotation/json_annotation.dart';

part 'colors.g.dart';

@JsonSerializable()
class Colors {
  final List<String>? all;
  final String? iconic;
  final List<String>? primary;

  const Colors({this.all, this.iconic, this.primary});

  factory Colors.fromJson(Map<String, dynamic> json) {
    return _$ColorsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ColorsToJson(this);
}
