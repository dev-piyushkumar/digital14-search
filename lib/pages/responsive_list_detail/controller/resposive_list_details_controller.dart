import 'package:digital14_search/common/rx/rx.dart';
import 'package:digital14_search/features/event_details/controller/event_details_controller.dart';
import 'package:digital14_search/features/event_list/controller/evemt_listing_controller.dart';
import 'package:digital14_search/features/search_bar/controller/seach_bar_controller.dart';
import 'package:digital14_search/models/data/event_item/event_item.dart';
import 'package:digital14_search/models/view/event_item_view_model.dart';
import 'package:digital14_search/models/view/event_view_model.dart';

class ResponsiveListDetailsController extends RxController {
  ResponsiveListDetailsController(
      {required this.searchBarController, required this.eventListingController})
      : super();

  final SearchBarController searchBarController;

  final EventListingController eventListingController;

  final EventDetailsController eventDetailsController =
      EventDetailsController(eventItem: const EventItem());

  int _lastSelection = -1;

  void _onUpdateList(EventViewModel newValue) {
    if (_lastSelection != newValue.clickedIndex &&
        newValue.clickedIndex > -1 &&
        newValue.clickedIndex < newValue.items.length) {
      final eventItem = newValue.items[newValue.clickedIndex].eventItem;
      eventDetailsController.eventItemView
          .add(EventItemViewModel(eventItem: eventItem));
      _lastSelection = newValue.clickedIndex;
    }
  }

  void onFav(EventItemViewModel newValue) {
    eventListingController.eventView.add(
        (eventListingController.eventView.value ?? defaultViewModel)
            .copyWith());
  }

  @override
  void updateOnRxListen() {
    eventListingController.eventView.listen(_onUpdateList);
    eventDetailsController.onTapFav = onFav;
  }
}
