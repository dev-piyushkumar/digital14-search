// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventResult _$EventResultFromJson(Map<String, dynamic> json) => EventResult(
      events: (json['events'] as List<dynamic>?)
          ?.map((e) => EventItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'],
    );

Map<String, dynamic> _$EventResultToJson(EventResult instance) =>
    <String, dynamic>{
      'events': instance.events,
      'meta': instance.meta,
    };
