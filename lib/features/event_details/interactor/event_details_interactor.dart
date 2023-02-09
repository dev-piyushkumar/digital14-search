import 'package:digital14_search/common/common.dart';
import 'package:digital14_search/features/event_details/controller/event_details_controller.dart';
import 'package:digital14_search/models/view/event_item_view_model.dart';
import 'package:digital14_search/services/impl/shared_preference_service.dart';
import 'package:go_router/go_router.dart';

class EventDetailsInteractor {
  Function() onClickBack(
      EventDetailsController rxController, BuildContext context) {
    return () {
      context.pop();
    };
  }

  Function() onClickFav(
      EventDetailsController rxController, EventItemViewModel? viewModel) {
    return () async {
      final eventItem = viewModel?.eventItem;
      if (eventItem != null) {
        final bool result = (viewModel?.isFav ?? false)
            ? (await sharedPreferenceService
                .removeFavItems((eventItem.id ?? '').toString()))
            : (await sharedPreferenceService
                .addFavItems((eventItem.id ?? '').toString()));
        if (result) {
          final EventItemViewModel newValue =
              (rxController.eventItemView.value ??
                      EventItemViewModel(eventItem: eventItem))
                  .copyWith();
          rxController.eventItemView.add(newValue);
          rxController.onTapFav(newValue);
        }
      }
    };
  }
}
