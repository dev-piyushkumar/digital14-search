import 'package:digital14_search/common/common.dart';
import 'package:digital14_search/models/view/event_item_view_model.dart';

Widget imageWidget(EventItemViewModel viewModel, BoxConstraints constraints) {
  const double imageSize = 70;
  return Stack(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 6, left: 6),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            viewModel.thumbnailUrl,
            fit: BoxFit.cover,
            width: imageSize,
            height: imageSize,
          ),
        ),
      ),
      if (viewModel.isFav)
        const Positioned(
          top: 0,
          left: 0,
          child: Icon(
            Icons.favorite,
            color: Colors.redAccent,
            size: 16,
          ),
        ),
    ],
  );
}
