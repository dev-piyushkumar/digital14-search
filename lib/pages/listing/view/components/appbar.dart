import 'package:digital14_search/features/search_bar/view/search_bar_view.dart';
import 'package:digital14_search/pages/listing/controller/listing_page_controller.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget appBarWidget(ListingPageController rxController) {
  return AppBar(
    title: SearchbarView(rxController: rxController.searchBarController),
  );
}
