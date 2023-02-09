import 'package:json_annotation/json_annotation.dart';

part 'document_source.g.dart';

@JsonSerializable()
class DocumentSource {
  @JsonKey(name: 'source_type')
  final String? sourceType;
  @JsonKey(name: 'generation_type')
  final String? generationType;

  const DocumentSource({this.sourceType, this.generationType});

  factory DocumentSource.fromJson(Map<String, dynamic> json) {
    return _$DocumentSourceFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DocumentSourceToJson(this);
}
