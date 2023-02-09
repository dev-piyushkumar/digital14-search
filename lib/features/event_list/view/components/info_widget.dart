import 'package:digital14_search/common/common.dart';
import 'package:digital14_search/models/view/event_item_view_model.dart';

Widget infoWidget(EventItemViewModel viewModel, BoxConstraints constraints) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const SizedBox(height: 6),
      Text(
        viewModel.title,
        style: globalTextStyles.defaultText.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      const SizedBox(height: 4),
      Text(
        viewModel.address,
        style: globalTextStyles.defaultSubText.copyWith(
          fontSize: 12,
          fontWeight: FontWeight.w300,
        ),
      ),
      const SizedBox(height: 4),
      Text(
        viewModel.formattedDate,
        style: globalTextStyles.defaultSubText.copyWith(
          fontSize: 12,
          fontWeight: FontWeight.w300,
        ),
      ),
    ],
  );
}
