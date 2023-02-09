import 'package:json_annotation/json_annotation.dart';

import 'document_source.dart';

part 'taxonomy.g.dart';

@JsonSerializable()
class Taxonomy {
  final int? id;
  final String? name;
  @JsonKey(name: 'parent_id')
  final dynamic parentId;
  @JsonKey(name: 'document_source')
  final DocumentSource? documentSource;
  final int? rank;

  const Taxonomy({
    this.id,
    this.name,
    this.parentId,
    this.documentSource,
    this.rank,
  });

  factory Taxonomy.fromJson(Map<String, dynamic> json) {
    return _$TaxonomyFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TaxonomyToJson(this);
}
