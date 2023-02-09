import 'package:digital14_search/models/base_data_model.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:digital14_search/models/data/event_item/event_item.dart';

part 'event_result.g.dart';

@JsonSerializable()
class EventResult implements BaseDataModel<Map<String, dynamic>> {
  final List<EventItem>? events;
  final dynamic meta;

  const EventResult({
    this.events,
    this.meta,
  });
  factory EventResult.fromJson(Map<String, dynamic> json) {
    return _$EventResultFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$EventResultToJson(this);

  @override
  EventResult instanceFromJson(dynamic json) {
    return _$EventResultFromJson(getJsonAsMap(json));
  }
}
