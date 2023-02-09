// ignore_for_file: constant_identifier_names

import 'package:digital14_search/services/base_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String PREFS_KEY_FAV_ITEMS = 'fav_items';

class SharedPreferenceService extends BaseService {
  SharedPreferenceService._() : super();
  late SharedPreferences _sharedPrefs;

  @override
  Future<void> init() async {
    _sharedPrefs = await SharedPreferences.getInstance();
  }

  Future<bool> addFavItems(String itemId) async {
    if (_sharedPrefs != null) {
      final Set<String> currentValues = favItems.toSet();
      if (currentValues.add(itemId)) {
        return (await setFavItems(currentValues.toList()));
      }
    }
    return false;
  }

  Future<bool> removeFavItems(String itemId) async {
    if (_sharedPrefs != null) {
      final Set<String> currentValues = favItems.toSet();
      if (currentValues.contains(itemId)) {
        currentValues.remove(itemId);
        return (await setFavItems(currentValues.toList()));
      }
    }
    return false;
  }

  Future<bool> setFavItems(List<String> newItems) async {
    if (_sharedPrefs != null) {
      return (await _sharedPrefs.setStringList(PREFS_KEY_FAV_ITEMS, newItems));
    }
    return false;
  }

  List<String> get favItems {
    List<String> result = <String>[];
    if (_sharedPrefs != null) {
      result = _sharedPrefs.getStringList(PREFS_KEY_FAV_ITEMS) ?? <String>[];
    }
    return result;
  }
}

final SharedPreferenceService sharedPreferenceService =
    SharedPreferenceService._();
