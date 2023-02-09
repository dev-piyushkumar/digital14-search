import 'package:digital14_search/common/common.dart';
import 'package:digital14_search/features/search_bar/controller/seach_bar_controller.dart';

class SearchBarInteractor {
  Function() onClickCloseIcon(SearchBarController rxController) {
    return () {
      rxController.textController.text = '';
    };
  }

  Function() onClickCancel(SearchBarController rxController) {
    return () {
      rxController.textController.text = '';
    };
  }
}
