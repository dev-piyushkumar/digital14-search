import 'package:digital14_search/common/common.dart';
import 'package:digital14_search/features/event_list/controller/evemt_listing_controller.dart';
import 'package:digital14_search/features/event_list/interactor/event_list_interactor.dart';
import 'package:digital14_search/models/view/event_item_view_model.dart';
import 'package:digital14_search/models/view/event_view_model.dart';

import 'image_widget.dart';
import 'info_widget.dart';

Widget? itemWidget(
    BuildContext context,
    int i,
    EventViewModel eventViewModel,
    BoxConstraints constraints,
    EventListingController rxController,
    bool needRouting) {
  if (i > -1 && i < eventViewModel.items.length) {
    EventItemViewModel viewModel = eventViewModel.items[i];
    return InkWell(
      onTap: EventListInteractor().onTapEventItem(
          rxController, i, eventViewModel, needRouting, context),
      child: IntrinsicHeight(
        child: Container(
          padding: const EdgeInsets.only(top: 10, bottom: 16),
          decoration: BoxDecoration(
            color: (eventViewModel.clickedIndex == i)
                ? themeSwatch.shade50.withOpacity(0.2)
                : Colors.white,
            border: Border(
              bottom: BorderSide(color: Color(0xFF76838c), width: 0.5),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(width: 10),

              /// Image
              imageWidget(viewModel, constraints),

              const SizedBox(width: 16),

              /// Info
              Expanded(child: infoWidget(viewModel, constraints)),

              const SizedBox(width: 16),
            ],
          ),
        ),
      ),
    );
  }

  return null;
}
