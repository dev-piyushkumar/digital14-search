import 'package:json_annotation/json_annotation.dart';

part 'division.g.dart';

@JsonSerializable()
class Division {
  @JsonKey(name: 'taxonomy_id')
  final int? taxonomyId;
  @JsonKey(name: 'short_name')
  final dynamic shortName;
  @JsonKey(name: 'display_name')
  final String? displayName;
  @JsonKey(name: 'display_type')
  final String? displayType;
  @JsonKey(name: 'division_level')
  final int? divisionLevel;
  final dynamic slug;

  const Division({
    this.taxonomyId,
    this.shortName,
    this.displayName,
    this.displayType,
    this.divisionLevel,
    this.slug,
  });

  factory Division.fromJson(Map<String, dynamic> json) {
    return _$DivisionFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DivisionToJson(this);
}
