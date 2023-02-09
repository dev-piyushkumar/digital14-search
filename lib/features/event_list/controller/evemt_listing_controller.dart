import 'package:digital14_search/common/rx/rx.dart';
import 'package:digital14_search/features/search_bar/controller/seach_bar_controller.dart';
import 'package:digital14_search/common/common.dart';
import 'package:digital14_search/flags/error_state.dart';
import 'package:digital14_search/models/data/event_item/event_item.dart';
import 'package:digital14_search/models/data/event_result.dart';
import 'package:digital14_search/models/response_model.dart';
import 'package:digital14_search/models/view/event_item_view_model.dart';
import 'package:digital14_search/models/view/event_view_model.dart';
import 'package:digital14_search/services/impl/rest_service.dart';

final EventViewModel defaultViewModel =
    EventViewModel(items: <EventItemViewModel>[]);

class EventListingController extends RxController {
  EventListingController({required this.searchBarController}) : super();

  final SearchBarController searchBarController;

  final RxStream<EventViewModel> eventView = RxStream();

  @override
  void updateOnRxListen() {
    searchBarController.searchKeyword.listen(onTextInput);
    onTextInput('', forceCall: true);
  }

  String _query = '';

  Future<dynamic> onTextInput(String newValue, {bool forceCall = false}) async {
    if (newValue == _query && !forceCall) return;
    _query = newValue;
    final List<EventItemViewModel> _newValues = <EventItemViewModel>[];
    if (newValue.isNotEmpty)
      await Future.delayed(const Duration(milliseconds: 300));
    if (_query != newValue) return;

    final ResponseModel<Map<String, dynamic>, EventResult> responseModel =
        await restService.get<Map<String, dynamic>, EventResult>(
      url: evnentSearchUrl(),
      defaultValue: const EventResult(),
      queryParameters: <String, String>{
        // 'client_id': 'MzE4MTY0NzR8MTY3NTgwMDg5MS40MjY5MTM1',
        'q': _query,
      },
    );

    if (responseModel.errorState == ErrorState.noError && _query == newValue) {
      for (final EventItem e in responseModel.data.events ?? <EventItem>[]) {
        _newValues.add(EventItemViewModel(eventItem: e));
      }

      eventView.add(
          (eventView.value ?? defaultViewModel).copyWith(items: _newValues));
    }
  }
}
