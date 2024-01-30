import 'dart:convert';
import 'package:native_shared_preferences/native_shared_preferences.dart';

class SharedPreferenceManager {
  static final SharedPreferenceManager _instance = SharedPreferenceManager();
  static late NativeSharedPreferences _sharedPreference;

  static SharedPreferenceManager getInstance() {
    return _instance;
  }

  static Future<NativeSharedPreferences> initSharedPreference() async {
    _sharedPreference = await NativeSharedPreferences.getInstance();
    return _sharedPreference;
  }

  putIntoPref(String key, Object value) {
    if (value is int) {
      _sharedPreference.setInt(key, value);
    } else if (value is double) {
      _sharedPreference.setDouble(key, value);
    } else if (value is String) {
      _sharedPreference.setString(key, value);
    } else if (value is bool) {
      _sharedPreference.setBool(key, value);
    } else if (value is List<String>) {
      _sharedPreference.setStringList(key, value);
    } else {
      _sharedPreference.getString(json.encode(value));
    }
  }

  getFromPref(String key) {
    return _sharedPreference.get(key);
  }

  bool getBoolFromPref(String key) {
    bool? value = _sharedPreference.getBool(key);
    if (value == null) {
      return false;
    }
    return value;
  }

  logout() {
    _sharedPreference.clear();
    // WebEngageManager.getInstance().logout();
    // BlocManager.clearBlocManager();
    // BlocManagerV2.clearScreenRoutingBloc();
    // LocalData.clearUserSession();
  }
}
