import 'package:intl/intl.dart';

import 'package:digital14_search/models/data/event_item/event_item.dart';
import 'package:digital14_search/models/data/event_item/performer.dart';
import 'package:digital14_search/services/impl/shared_preference_service.dart';

class EventItemViewModel {
  EventItemViewModel({
    required this.eventItem,
  });

  final EventItem eventItem;

  static final DateFormat dateFormat = DateFormat('EEE, dd MMM yyyy hh:mm a');

  String get title => eventItem.title ?? '';

  String get address => eventItem.venue?.displayLocation ?? '';

  String get thumbnailUrl => (eventItem.performers?.isNotEmpty ?? false)
      ? (eventItem.performers ?? <Performer>[])[0].image ?? ''
      : '';

  String get formattedDate {
    String result = '';
    try {
      result = dateFormat.format(DateTime.parse(eventItem.datetimeLocal ?? ''));
    } on Exception catch (_) {}
    return result;
  }

  bool get isFav => sharedPreferenceService.favItems
      .contains((eventItem.id ?? '').toString());

  EventItemViewModel copyWith({
    EventItem? eventItem,
  }) {
    return EventItemViewModel(
      eventItem: eventItem ?? this.eventItem,
    );
  }
}
