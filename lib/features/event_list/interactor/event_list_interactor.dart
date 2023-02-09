import 'package:digital14_search/common/common.dart';
import 'package:digital14_search/features/event_list/controller/evemt_listing_controller.dart';
import 'package:digital14_search/models/view/event_item_view_model.dart';
import 'package:digital14_search/models/view/event_view_model.dart';
import 'package:go_router/go_router.dart';

class EventListInteractor {
  Function() onTapEventItem(EventListingController rxController, int i,
      EventViewModel eventViewModel, bool needRouting, BuildContext context) {
    return () {
      final EventViewModel newValue = eventViewModel.copyWith(clickedIndex: i);
      rxController.eventView.add(newValue);

      /// Route to Details Page if needed
      if (needRouting && i > -1 && i < eventViewModel.items.length) {
        context.push('/details', extra: eventViewModel.items[i].eventItem);
      }
    };
  }
}
