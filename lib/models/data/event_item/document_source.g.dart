// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DocumentSource _$DocumentSourceFromJson(Map<String, dynamic> json) =>
    DocumentSource(
      sourceType: json['source_type'] as String?,
      generationType: json['generation_type'] as String?,
    );

Map<String, dynamic> _$DocumentSourceToJson(DocumentSource instance) =>
    <String, dynamic>{
      'source_type': instance.sourceType,
      'generation_type': instance.generationType,
    };
