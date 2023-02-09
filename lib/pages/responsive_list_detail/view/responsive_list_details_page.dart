import 'package:digital14_search/features/event_details/view/event_details_view.dart';
import 'package:digital14_search/features/event_list/controller/evemt_listing_controller.dart';
import 'package:digital14_search/features/event_list/view/event_listing_view.dart';
import 'package:digital14_search/features/search_bar/controller/seach_bar_controller.dart';
import 'package:digital14_search/models/view/event_item_view_model.dart';
import 'package:digital14_search/models/view/event_view_model.dart';
import 'package:digital14_search/pages/listing/controller/listing_page_controller.dart';
import 'package:digital14_search/pages/listing/listing.dart';
import 'package:digital14_search/pages/responsive_list_detail/controller/resposive_list_details_controller.dart';
import 'package:digital14_search/pages/responsive_list_detail/view/components/appbar.dart';
import 'package:flutter/material.dart';

class ResposiveListDetailsPage extends StatefulWidget {
  const ResposiveListDetailsPage({super.key});

  @override
  State<ResposiveListDetailsPage> createState() =>
      _ResposiveListDetailsPageState();
}

class _ResposiveListDetailsPageState extends State<ResposiveListDetailsPage> {
  late ResponsiveListDetailsController rxController;
  late ListingPageController _listingPageController;
  @override
  void initState() {
    super.initState();
    SearchBarController sc = SearchBarController();
    EventListingController elc =
        EventListingController(searchBarController: sc);
    rxController = ResponsiveListDetailsController(
        searchBarController: sc, eventListingController: elc);

    _listingPageController = ListingPageController(
      searchBarController: sc,
      eventListingController: elc,
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 600) {
        // side pane view
        final bool isDesktop = constraints.maxWidth > 1000;
        return Scaffold(
          appBar: appBarWidget(rxController),
          body: Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: isDesktop ? 3 : 2,
                  child: StreamBuilder<EventViewModel>(
                    stream: rxController.eventListingController.eventView,
                    builder: (context, snapshot) => EventListingView(
                      rxController: rxController.eventListingController,
                      needRouting: false,
                    ),
                  ),
                ),
                Container(
                  width: 0.5,
                  color: const Color(0xFF76838c),
                ),
                Expanded(
                  flex: isDesktop ? 7 : 3,
                  child: StreamBuilder<EventItemViewModel>(
                    stream: rxController.eventDetailsController.eventItemView,
                    builder: (context, snapshot) {
                      final value = rxController
                          .eventDetailsController.eventItemView.value;
                      return EventDetailsView(
                        rxController: rxController.eventDetailsController,
                        neednavigation: false,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      } else {
        return EventListingPage(
          rxController: ListingPageController(
            searchBarController: rxController.searchBarController,
            eventListingController: rxController.eventListingController,
          ),
        );
      }
    });
  }
}
