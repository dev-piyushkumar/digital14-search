import 'event_item_view_model.dart';

class EventViewModel {
  EventViewModel({
    required this.items,
    this.clickedIndex = -1,
  });

  final List<EventItemViewModel> items;
  final int clickedIndex;

  EventViewModel copyWith({
    List<EventItemViewModel>? items,
    int? clickedIndex,
  }) {
    return EventViewModel(
      items: items ?? this.items,
      clickedIndex: clickedIndex ?? this.clickedIndex,
    );
  }
}
