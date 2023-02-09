import 'package:digital14_search/common/common.dart';
import 'package:digital14_search/models/data/event_item/event_item.dart';
import 'package:digital14_search/pages/details/view/event_details_page.dart';
import 'package:go_router/go_router.dart';
import 'package:digital14_search/pages/listing/listing.dart';
import 'package:digital14_search/pages/responsive_list_detail/responsive_list_detail.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      name: 'Home',
      path: '/',
      builder: (context, state) => const ResposiveListDetailsPage(),
    ),
    GoRoute(
      name: 'Details',
      path: '/details',
      builder: (context, state) {
        if (state.extra is EventItem) {
          return EventDetailsPage(
            eventItem: state.extra as EventItem,
          );
        }
        return const SizedBox.shrink();
      },
    ),
  ],
);
