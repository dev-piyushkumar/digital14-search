// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventItem _$EventItemFromJson(Map<String, dynamic> json) => EventItem(
      type: json['type'] as String?,
      id: json['id'] as int?,
      datetimeUtc: json['datetime_utc'] as String?,
      venue: json['venue'] == null
          ? null
          : Venue.fromJson(json['venue'] as Map<String, dynamic>),
      datetimeTbd: json['datetime_tbd'] as bool?,
      performers: (json['performers'] as List<dynamic>?)
          ?.map((e) => Performer.fromJson(e as Map<String, dynamic>))
          .toList(),
      isOpen: json['is_open'] as bool?,
      links: json['links'] as List<dynamic>?,
      datetimeLocal: json['datetime_local'] as String?,
      timeTbd: json['time_tbd'] as bool?,
      shortTitle: json['short_title'] as String?,
      visibleUntilUtc: json['visible_until_utc'] as String?,
      stats: json['stats'] == null
          ? null
          : Stats.fromJson(json['stats'] as Map<String, dynamic>),
      taxonomies: (json['taxonomies'] as List<dynamic>?)
          ?.map((e) => Taxonomy.fromJson(e as Map<String, dynamic>))
          .toList(),
      url: json['url'] as String?,
      score: (json['score'] as num?)?.toDouble(),
      announceDate: json['announce_date'] as String?,
      createdAt: json['created_at'] as String?,
      dateTbd: json['date_tbd'] as bool?,
      title: json['title'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      description: json['description'] as String?,
      status: json['status'] as String?,
      accessMethod: json['access_method'],
      eventPromotion: json['event_promotion'],
      announcements: json['announcements'] == null
          ? null
          : Announcements.fromJson(
              json['announcements'] as Map<String, dynamic>),
      conditional: json['conditional'] as bool?,
      enddatetimeUtc: json['enddatetime_utc'],
      themes: json['themes'] as List<dynamic>?,
      domainInformation: json['domain_information'] as List<dynamic>?,
    );

Map<String, dynamic> _$EventItemToJson(EventItem instance) => <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'datetime_utc': instance.datetimeUtc,
      'venue': instance.venue,
      'datetime_tbd': instance.datetimeTbd,
      'performers': instance.performers,
      'is_open': instance.isOpen,
      'links': instance.links,
      'datetime_local': instance.datetimeLocal,
      'time_tbd': instance.timeTbd,
      'short_title': instance.shortTitle,
      'visible_until_utc': instance.visibleUntilUtc,
      'stats': instance.stats,
      'taxonomies': instance.taxonomies,
      'url': instance.url,
      'score': instance.score,
      'announce_date': instance.announceDate,
      'created_at': instance.createdAt,
      'date_tbd': instance.dateTbd,
      'title': instance.title,
      'popularity': instance.popularity,
      'description': instance.description,
      'status': instance.status,
      'access_method': instance.accessMethod,
      'event_promotion': instance.eventPromotion,
      'announcements': instance.announcements,
      'conditional': instance.conditional,
      'enddatetime_utc': instance.enddatetimeUtc,
      'themes': instance.themes,
      'domain_information': instance.domainInformation,
    };
