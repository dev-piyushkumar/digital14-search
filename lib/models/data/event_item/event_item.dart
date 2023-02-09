import 'package:digital14_search/models/base_data_model.dart';
import 'package:json_annotation/json_annotation.dart';

import 'announcements.dart';
import 'performer.dart';
import 'stats.dart';
import 'taxonomy.dart';
import 'venue.dart';

part 'event_item.g.dart';

@JsonSerializable()
class EventItem implements BaseDataModel<Map<String, dynamic>> {
  final String? type;
  final int? id;
  @JsonKey(name: 'datetime_utc')
  final String? datetimeUtc;
  final Venue? venue;
  @JsonKey(name: 'datetime_tbd')
  final bool? datetimeTbd;
  final List<Performer>? performers;
  @JsonKey(name: 'is_open')
  final bool? isOpen;
  final List<dynamic>? links;
  @JsonKey(name: 'datetime_local')
  final String? datetimeLocal;
  @JsonKey(name: 'time_tbd')
  final bool? timeTbd;
  @JsonKey(name: 'short_title')
  final String? shortTitle;
  @JsonKey(name: 'visible_until_utc')
  final String? visibleUntilUtc;
  final Stats? stats;
  final List<Taxonomy>? taxonomies;
  final String? url;
  final double? score;
  @JsonKey(name: 'announce_date')
  final String? announceDate;
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @JsonKey(name: 'date_tbd')
  final bool? dateTbd;
  final String? title;
  final double? popularity;
  final String? description;
  final String? status;
  @JsonKey(name: 'access_method')
  final dynamic accessMethod;
  @JsonKey(name: 'event_promotion')
  final dynamic eventPromotion;
  final Announcements? announcements;
  final bool? conditional;
  @JsonKey(name: 'enddatetime_utc')
  final dynamic enddatetimeUtc;
  final List<dynamic>? themes;
  @JsonKey(name: 'domain_information')
  final List<dynamic>? domainInformation;

  const EventItem({
    this.type,
    this.id,
    this.datetimeUtc,
    this.venue,
    this.datetimeTbd,
    this.performers,
    this.isOpen,
    this.links,
    this.datetimeLocal,
    this.timeTbd,
    this.shortTitle,
    this.visibleUntilUtc,
    this.stats,
    this.taxonomies,
    this.url,
    this.score,
    this.announceDate,
    this.createdAt,
    this.dateTbd,
    this.title,
    this.popularity,
    this.description,
    this.status,
    this.accessMethod,
    this.eventPromotion,
    this.announcements,
    this.conditional,
    this.enddatetimeUtc,
    this.themes,
    this.domainInformation,
  });

  factory EventItem.fromJson(Map<String, dynamic> json) {
    return _$EventItemFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$EventItemToJson(this);

  @override
  EventItem instanceFromJson(dynamic json) {
    return _$EventItemFromJson(getJsonAsMap(json));
  }
}
