import 'package:digital14_search/features/search_bar/view/search_bar_view.dart';
import 'package:digital14_search/pages/responsive_list_detail/controller/resposive_list_details_controller.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget appBarWidget(ResponsiveListDetailsController rxController) {
  return AppBar(
    title: SearchbarView(rxController: rxController.searchBarController),
  );
}
