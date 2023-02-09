import 'package:digital14_search/common/common.dart';
import 'package:digital14_search/features/event_details/controller/event_details_controller.dart';
import 'package:digital14_search/features/event_details/interactor/event_details_interactor.dart';
import 'package:digital14_search/models/view/event_item_view_model.dart';

Widget getTitleWidget(BuildContext context, EventItemViewModel? viewModel,
    EventDetailsController rxController, bool neednavigation) {
  return Stack(
    children: <Widget>[
      Positioned(
        child: Container(
          constraints: const BoxConstraints(minHeight: 63),
          margin: const EdgeInsets.only(left: 48, right: 48),
          padding: const EdgeInsets.only(top: 8),
          alignment: Alignment.centerLeft,
          child: Text(
            (viewModel?.title ?? ''),
            style: globalTextStyles.headerText.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      if (neednavigation)
        Positioned(
          left: 0,
          top: 0,
          child: InkWell(
            onTap: EventDetailsInteractor().onClickBack(rxController, context),
            child: const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Icon(
                Icons.arrow_back_ios_new,
                size: 24,
                color: Color(0xFF228ae6),
              ),
            ),
          ),
        ),
      Positioned(
        right: 0,
        top: 0,
        child: InkWell(
          onTap: EventDetailsInteractor().onClickFav(rxController, viewModel),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Icon(
              (viewModel?.isFav ?? false)
                  ? Icons.favorite
                  : Icons.favorite_outline,
              size: 24,
              color: (viewModel?.isFav ?? false)
                  ? Colors.redAccent
                  : Color(0xFF76838c),
            ),
          ),
        ),
      ),
    ],
  );
}
