import 'package:json_annotation/json_annotation.dart';

import 'colors.dart';
import 'division.dart';
import 'images.dart';
import 'location.dart';
import 'stats.dart';
import 'taxonomy.dart';

part 'performer.g.dart';

@JsonSerializable()
class Performer {
  final String? type;
  final String? name;
  final String? image;
  final int? id;
  final Images? images;
  final List<Division>? divisions;
  @JsonKey(name: 'has_upcoming_events')
  final bool? hasUpcomingEvents;
  final bool? primary;
  final Stats? stats;
  final List<Taxonomy>? taxonomies;
  @JsonKey(name: 'image_attribution')
  final String? imageAttribution;
  final String? url;
  final double? score;
  final String? slug;
  @JsonKey(name: 'home_venue_id')
  final int? homeVenueId;
  @JsonKey(name: 'short_name')
  final String? shortName;
  @JsonKey(name: 'num_upcoming_events')
  final int? numUpcomingEvents;
  final Colors? colors;
  @JsonKey(name: 'image_license')
  final String? imageLicense;
  final int? popularity;
  @JsonKey(name: 'home_team')
  final bool? homeTeam;
  final Location? location;
  @JsonKey(name: 'image_rights_message')
  final String? imageRightsMessage;
  @JsonKey(name: 'away_team')
  final bool? awayTeam;

  const Performer({
    this.type,
    this.name,
    this.image,
    this.id,
    this.images,
    this.divisions,
    this.hasUpcomingEvents,
    this.primary,
    this.stats,
    this.taxonomies,
    this.imageAttribution,
    this.url,
    this.score,
    this.slug,
    this.homeVenueId,
    this.shortName,
    this.numUpcomingEvents,
    this.colors,
    this.imageLicense,
    this.popularity,
    this.homeTeam,
    this.location,
    this.imageRightsMessage,
    this.awayTeam,
  });

  factory Performer.fromJson(Map<String, dynamic> json) {
    return _$PerformerFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PerformerToJson(this);
}
