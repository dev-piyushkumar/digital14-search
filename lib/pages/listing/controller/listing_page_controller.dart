import 'package:digital14_search/common/rx/rx.dart';
import 'package:digital14_search/features/event_list/controller/evemt_listing_controller.dart';
import 'package:digital14_search/features/search_bar/controller/seach_bar_controller.dart';
import 'package:digital14_search/common/common.dart';

class ListingPageController extends RxController {
  ListingPageController(
      {required this.searchBarController, required this.eventListingController})
      : super();

  final SearchBarController searchBarController;

  final EventListingController eventListingController;

  @override
  void updateOnRxListen() {
    /// todo
  }
}
