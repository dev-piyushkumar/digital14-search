import 'package:digital14_search/features/event_list/controller/evemt_listing_controller.dart';
import 'package:digital14_search/features/event_list/interactor/event_list_interactor.dart';
import 'package:digital14_search/models/view/event_item_view_model.dart';
import 'package:digital14_search/models/view/event_view_model.dart';
import 'package:digital14_search/common/common.dart';

import 'components/item_widget.dart';

class EventListingView extends StatelessWidget {
  const EventListingView(
      {required this.rxController, this.needRouting = false, super.key});

  final EventListingController rxController;
  final bool needRouting;

  @override
  Widget build(BuildContext context) {
    if ((rxController.eventView.value?.items.length ?? 0) > 0) {
      return LayoutBuilder(builder: (context, constraints) {
        return ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: rxController.eventView.value?.items.length ?? 0,
          shrinkWrap: true,
          itemBuilder: (context, i) => itemWidget(
              context,
              i,
              rxController.eventView.value ?? defaultViewModel,
              constraints,
              rxController,
              needRouting),
        );
      });
    }
    return const SizedBox.shrink();
  }
}
