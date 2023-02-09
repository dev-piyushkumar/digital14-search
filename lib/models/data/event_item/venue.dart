import 'package:json_annotation/json_annotation.dart';

import 'location.dart';

part 'venue.g.dart';

@JsonSerializable()
class Venue {
  final String? state;
  @JsonKey(name: 'name_v2')
  final String? nameV2;
  @JsonKey(name: 'postal_code')
  final String? postalCode;
  final String? name;
  final List<dynamic>? links;
  final String? timezone;
  final String? url;
  final double? score;
  final Location? location;
  final String? address;
  final String? country;
  @JsonKey(name: 'has_upcoming_events')
  final bool? hasUpcomingEvents;
  @JsonKey(name: 'num_upcoming_events')
  final int? numUpcomingEvents;
  final String? city;
  final String? slug;
  @JsonKey(name: 'extended_address')
  final String? extendedAddress;
  final int? id;
  final int? popularity;
  @JsonKey(name: 'access_method')
  final dynamic accessMethod;
  @JsonKey(name: 'metro_code')
  final int? metroCode;
  final int? capacity;
  @JsonKey(name: 'display_location')
  final String? displayLocation;

  const Venue({
    this.state,
    this.nameV2,
    this.postalCode,
    this.name,
    this.links,
    this.timezone,
    this.url,
    this.score,
    this.location,
    this.address,
    this.country,
    this.hasUpcomingEvents,
    this.numUpcomingEvents,
    this.city,
    this.slug,
    this.extendedAddress,
    this.id,
    this.popularity,
    this.accessMethod,
    this.metroCode,
    this.capacity,
    this.displayLocation,
  });

  factory Venue.fromJson(Map<String, dynamic> json) => _$VenueFromJson(json);

  Map<String, dynamic> toJson() => _$VenueToJson(this);
}
