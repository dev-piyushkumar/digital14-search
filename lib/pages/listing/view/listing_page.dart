import 'package:digital14_search/features/event_list/controller/evemt_listing_controller.dart';
import 'package:digital14_search/features/event_list/view/event_listing_view.dart';
import 'package:digital14_search/features/search_bar/controller/seach_bar_controller.dart';
import 'package:digital14_search/models/view/event_view_model.dart';
import 'package:digital14_search/pages/listing/controller/listing_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:digital14_search/pages/listing/view/components/appbar.dart';

class EventListingPage extends StatefulWidget {
  const EventListingPage({this.rxController, super.key});

  final ListingPageController? rxController;

  @override
  State<EventListingPage> createState() => _EventListingPageState(rxController);
}

class _EventListingPageState extends State<EventListingPage> {
  _EventListingPageState(ListingPageController? controller) {
    if (controller != null) {
      rxController = controller;
    }
  }

  late ListingPageController rxController;

  @override
  void initState() {
    super.initState();
    if (rxController == null) {
      SearchBarController sc = SearchBarController();
      EventListingController elc =
          EventListingController(searchBarController: sc);
      rxController = ListingPageController(
        searchBarController: sc,
        eventListingController: elc,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(rxController),
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: StreamBuilder<EventViewModel>(
          stream: rxController.eventListingController.eventView,
          builder: (context, snapshot) => EventListingView(
            rxController: rxController.eventListingController,
            needRouting: true,
          ),
        ),
      ),
    );
  }
}
