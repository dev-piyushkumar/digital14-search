// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'division.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Division _$DivisionFromJson(Map<String, dynamic> json) => Division(
      taxonomyId: json['taxonomy_id'] as int?,
      shortName: json['short_name'],
      displayName: json['display_name'] as String?,
      displayType: json['display_type'] as String?,
      divisionLevel: json['division_level'] as int?,
      slug: json['slug'],
    );

Map<String, dynamic> _$DivisionToJson(Division instance) => <String, dynamic>{
      'taxonomy_id': instance.taxonomyId,
      'short_name': instance.shortName,
      'display_name': instance.displayName,
      'display_type': instance.displayType,
      'division_level': instance.divisionLevel,
      'slug': instance.slug,
    };
