import 'package:digital14_search/common/common.dart';
import 'package:digital14_search/common/rx/rx.dart';
import 'package:digital14_search/models/data/event_item/event_item.dart';
import 'package:digital14_search/models/view/event_item_view_model.dart';

void defaultOnFav(EventItemViewModel newValue) {}

class EventDetailsController extends RxController {
  EventDetailsController(
      {required EventItem eventItem, this.onTapFav = defaultOnFav})
      : eventItemView = RxStream<EventItemViewModel>()
          ..add(EventItemViewModel(eventItem: eventItem)),
        super();

  Function(EventItemViewModel newValue) onTapFav;

  final RxStream<EventItemViewModel> eventItemView;
  // RxStream<EventItemViewModel>();

  @override
  void updateOnRxListen() {}
}
