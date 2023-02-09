import 'package:digital14_search/common/common.dart';
import 'package:digital14_search/features/event_details/controller/event_details_controller.dart';
import 'package:digital14_search/features/event_details/view/components/image_widget.dart';
import 'package:digital14_search/features/event_details/view/components/info_widget.dart';
import 'package:digital14_search/features/event_details/view/components/title_widget.dart';
import 'package:digital14_search/models/view/event_item_view_model.dart';

class EventDetailsView extends StatelessWidget {
  const EventDetailsView(
      {required this.rxController, this.neednavigation = false, super.key});

  final EventDetailsController rxController;

  final bool neednavigation;

  @override
  Widget build(BuildContext context) {
    final EventItemViewModel? viewModel = rxController.eventItemView.value;
    if ((viewModel?.eventItem.id ?? '').toString().isNotEmpty) {
      final Widget content = Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          /// Title Widget
          getTitleWidget(context, viewModel, rxController, neednavigation),

          /// Divider
          Container(
            width: double.maxFinite,
            height: 1,
            color: Color(0xFF76838c),
            margin: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          ),

          /// Image Widget
          getImageWidget(context, viewModel, rxController),

          /// Info Widget
          getInfoWidget(context, viewModel, rxController),
        ],
      );
      return Container(
        child: neednavigation
            ? content
            : SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: content,
              ),
      );
    }

    return Container();
  }
}
