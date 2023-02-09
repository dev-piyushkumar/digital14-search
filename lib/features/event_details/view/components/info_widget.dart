import 'package:digital14_search/common/common.dart';
import 'package:digital14_search/features/event_details/controller/event_details_controller.dart';
import 'package:digital14_search/models/view/event_item_view_model.dart';

Widget getInfoWidget(BuildContext context, EventItemViewModel? viewModel,
    EventDetailsController rxController) {
  return Container(
    width: double.maxFinite,
    padding: EdgeInsets.symmetric(horizontal: 24),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        Text(
          viewModel?.formattedDate ?? '',
          style: globalTextStyles.defaultText.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 16),
        Text(
          viewModel?.address ?? '',
          style: globalTextStyles.defaultSubText.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    ),
  );
}
