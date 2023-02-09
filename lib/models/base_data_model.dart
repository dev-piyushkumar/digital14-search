import 'dart:convert';

import 'package:digital14_search/models/to_json_model.dart';

abstract class BaseDataModel<T> implements ToJsonModel<T> {
  BaseDataModel();

  BaseDataModel<T> instanceFromJson(dynamic json);
}

Map<String, dynamic> getJsonAsMap(dynamic json) {
  Map<String, dynamic> result = <String, dynamic>{};
  try {
    if (json is String) {
      result = jsonDecode(json) as Map<String, dynamic>;
    } else if (json is Map<String, dynamic>) {
      result = json;
    }
  } on Exception catch (_) {}
  return result;
}

List<dynamic> getJsonAsList(dynamic json) {
  List<dynamic> result = <dynamic>[];
  try {
    if (json is String) {
      result = jsonDecode(json) as List<dynamic>;
    } else if (json is List<dynamic>) {
      result = json;
    }
  } on Exception catch (_) {}
  return result;
}
