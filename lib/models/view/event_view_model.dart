import 'event_item_view_model.dart';

class EventViewModel {
  EventViewModel({
    required this.items,
    this.clickedIndex = -1,
    this.callingApi = false,
  });

  final List<EventItemViewModel> items;
  final int clickedIndex;
  final bool callingApi;

  EventViewModel copyWith({
    List<EventItemViewModel>? items,
    int? clickedIndex,
    bool? callingApi,
  }) {
    return EventViewModel(
      items: items ?? this.items,
      clickedIndex: clickedIndex ?? this.clickedIndex,
      callingApi: callingApi ?? this.callingApi,
    );
  }
}
