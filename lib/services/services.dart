import 'dart:core';

import 'package:digital14_search/services/base_service.dart';

export 'package:digital14_search/services/base_service.dart';
export 'package:digital14_search/services/impl/dio_client_service.dart';
export 'package:digital14_search/services/impl/rest_service.dart';
export 'package:digital14_search/services/impl/shared_preference_service.dart';

Future<void> initializeServices(List<BaseService> services) async {
  final List<Future<dynamic>> futureTasks = <Future<dynamic>>[];
  for (final BaseService s in services) {
    futureTasks.add(s.init());
  }
  await Future.wait<dynamic>(futureTasks);
}
