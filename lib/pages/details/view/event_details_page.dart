import 'package:digital14_search/common/common.dart';
import 'package:digital14_search/features/event_details/controller/event_details_controller.dart';
import 'package:digital14_search/features/event_details/view/event_details_view.dart';
import 'package:digital14_search/models/data/event_item/event_item.dart';
import 'package:digital14_search/models/view/event_item_view_model.dart';

class EventDetailsPage extends StatefulWidget {
  const EventDetailsPage({required this.eventItem, super.key});

  final EventItem eventItem;

  @override
  State<EventDetailsPage> createState() => _EventDetailsPageState();
}

class _EventDetailsPageState extends State<EventDetailsPage> {
  late EventDetailsController rxController;

  @override
  void initState() {
    super.initState();
    rxController = EventDetailsController(eventItem: widget.eventItem);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: StreamBuilder<EventItemViewModel>(
          stream: rxController.eventItemView,
          builder: (context, snapshot) {
            return EventDetailsView(
              rxController: rxController,
              neednavigation: true,
            );
          },
        ),
      ),
    );
  }
}
