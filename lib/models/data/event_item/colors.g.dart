// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'colors.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Colors _$ColorsFromJson(Map<String, dynamic> json) => Colors(
      all: (json['all'] as List<dynamic>?)?.map((e) => e as String).toList(),
      iconic: json['iconic'] as String?,
      primary:
          (json['primary'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ColorsToJson(Colors instance) => <String, dynamic>{
      'all': instance.all,
      'iconic': instance.iconic,
      'primary': instance.primary,
    };
