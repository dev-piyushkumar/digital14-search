import 'package:digital14_search/common/common.dart';
import 'package:digital14_search/features/event_details/controller/event_details_controller.dart';
import 'package:digital14_search/models/view/event_item_view_model.dart';

Widget getImageWidget(BuildContext context, EventItemViewModel? viewModel,
    EventDetailsController rxController) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 24),
    child: AspectRatio(
      aspectRatio: 16 / 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(
          viewModel?.thumbnailUrl ?? '',
          fit: BoxFit.cover,
          width: double.maxFinite,
        ),
      ),
    ),
  );
}
