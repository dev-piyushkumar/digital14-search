import 'package:digital14_search/features/search_bar/controller/seach_bar_controller.dart';
import 'package:digital14_search/features/search_bar/interactor/search_bar_interactor.dart';
import 'package:digital14_search/common/common.dart';

class SearchbarView extends StatelessWidget {
  const SearchbarView({required this.rxController, super.key});

  final SearchBarController rxController;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String>(
      stream: rxController.searchKeyword,
      builder: (context, snapshot) {
        return Row(
          children: <Widget>[
            Expanded(
              child: getFieldWidget(snapshot),
            ),
            const SizedBox(width: 4),
            getCancelWidget(snapshot),
          ],
        );
      },
    );
  }

  Widget getCancelWidget(AsyncSnapshot<String> snapshot) {
    return InkWell(
      onTap: SearchBarInteractor().onClickCancel(rxController),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Text(
          'Cancel',
          style: globalTextStyles.appBarText,
        ),
      ),
    );
  }

  Widget getFieldWidget(AsyncSnapshot<String> snapshot) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: SizedBox(
        height: 42,
        child: TextFormField(
          controller: rxController.textController,
          decoration: getSearchDecoration(snapshot),
          style: globalTextStyles.appBarText.copyWith(fontSize: 18),
        ),
      ),
    );
  }

  InputDecoration getSearchDecoration(AsyncSnapshot<String> snapshot) {
    return InputDecoration(
      border: InputBorder.none,
      fillColor: themeSwatch.shade100,
      filled: true,
      contentPadding: const EdgeInsets.all(0),
      prefixIcon: const Icon(
        Icons.search,
        color: Colors.white,
        size: 24,
      ),
      suffixIcon: (snapshot.data ?? '').isNotEmpty
          ? GestureDetector(
              onTap: SearchBarInteractor().onClickCloseIcon(rxController),
              child: const Icon(
                Icons.cancel_rounded,
                color: Colors.white,
                size: 24,
              ),
            )
          : null,
    );
  }
}
