import 'package:flutter/material.dart';
import 'package:digital14_search/common/rx/rx.dart';

class SearchBarController extends RxController {
  SearchBarController() : super() {
    textController.addListener(() {
      searchKeyword.add(textController.text);
    });
  }

  final TextEditingController textController = TextEditingController();

  final RxStream<String> searchKeyword = RxStream<String>();

  @override
  void updateOnRxListen() {
    searchKeyword.listen((event) => update());
  }
}
