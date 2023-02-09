// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'venue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Venue _$VenueFromJson(Map<String, dynamic> json) => Venue(
      state: json['state'] as String?,
      nameV2: json['name_v2'] as String?,
      postalCode: json['postal_code'] as String?,
      name: json['name'] as String?,
      links: json['links'] as List<dynamic>?,
      timezone: json['timezone'] as String?,
      url: json['url'] as String?,
      score: (json['score'] as num?)?.toDouble(),
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      address: json['address'] as String?,
      country: json['country'] as String?,
      hasUpcomingEvents: json['has_upcoming_events'] as bool?,
      numUpcomingEvents: json['num_upcoming_events'] as int?,
      city: json['city'] as String?,
      slug: json['slug'] as String?,
      extendedAddress: json['extended_address'] as String?,
      id: json['id'] as int?,
      popularity: json['popularity'] as int?,
      accessMethod: json['access_method'],
      metroCode: json['metro_code'] as int?,
      capacity: json['capacity'] as int?,
      displayLocation: json['display_location'] as String?,
    );

Map<String, dynamic> _$VenueToJson(Venue instance) => <String, dynamic>{
      'state': instance.state,
      'name_v2': instance.nameV2,
      'postal_code': instance.postalCode,
      'name': instance.name,
      'links': instance.links,
      'timezone': instance.timezone,
      'url': instance.url,
      'score': instance.score,
      'location': instance.location,
      'address': instance.address,
      'country': instance.country,
      'has_upcoming_events': instance.hasUpcomingEvents,
      'num_upcoming_events': instance.numUpcomingEvents,
      'city': instance.city,
      'slug': instance.slug,
      'extended_address': instance.extendedAddress,
      'id': instance.id,
      'popularity': instance.popularity,
      'access_method': instance.accessMethod,
      'metro_code': instance.metroCode,
      'capacity': instance.capacity,
      'display_location': instance.displayLocation,
    };
