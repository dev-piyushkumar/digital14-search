// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taxonomy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Taxonomy _$TaxonomyFromJson(Map<String, dynamic> json) => Taxonomy(
      id: json['id'] as int?,
      name: json['name'] as String?,
      parentId: json['parent_id'],
      documentSource: json['document_source'] == null
          ? null
          : DocumentSource.fromJson(
              json['document_source'] as Map<String, dynamic>),
      rank: json['rank'] as int?,
    );

Map<String, dynamic> _$TaxonomyToJson(Taxonomy instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'parent_id': instance.parentId,
      'document_source': instance.documentSource,
      'rank': instance.rank,
    };
