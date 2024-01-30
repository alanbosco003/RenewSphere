import 'package:flutter/widgets.dart';
import 'package:services/local_db_service/shared_preference_key.dart';
import 'package:services/local_db_service/shared_preference_manager.dart';

class UiSizeUtils {
  UiSizeUtils._();

  static late double _textScaleFactor;
  static late double _deviceSize;
  static late double _deviceHeightSize;
  static bool _isDevicePixelSizeCalculated = false;
  static late double font12;

  static double getWidthSize(double size) {
    return size * _deviceSize / 360;
  }

  static double getHeightSize(double size) {
    return size * _deviceHeightSize / 720;
  }

  static double getFontSize(double size) {
    return getWidthSize(size) * _textScaleFactor;
  }

  static setDeviceScreenSize(BuildContext context) {
    if (!_isDevicePixelSizeCalculated) {
      _textScaleFactor = MediaQuery.of(context).textScaleFactor;
      _deviceSize = MediaQuery.of(context).size.shortestSide;
      _deviceHeightSize = MediaQuery.of(context).size.height;
      SharedPreferenceManager.getInstance()
          .putIntoPref(SHARED_PREFERENCE_KEY.SCREEN_SIZE, _deviceSize);
      SharedPreferenceManager.getInstance()
          .putIntoPref(SHARED_PREFERENCE_KEY.SCREEN_HEIGHT, _deviceHeightSize);
      SharedPreferenceManager.getInstance().putIntoPref(
          SHARED_PREFERENCE_KEY.SCREEN_TEXT_SCALE_FACTOR, _textScaleFactor);
      _isDevicePixelSizeCalculated = true;
      font12 = getFontSize(12);
    }
  }

  static updateSizeFromLocalDB() {
    var size = SharedPreferenceManager.getInstance()
        .getFromPref(SHARED_PREFERENCE_KEY.SCREEN_SIZE);
    if (size != null) {
      _deviceSize = size;
    }
    var height = SharedPreferenceManager.getInstance()
        .getFromPref(SHARED_PREFERENCE_KEY.SCREEN_HEIGHT);
    if (height != null) {
      _deviceHeightSize = height;
    }
    var textSize = SharedPreferenceManager.getInstance()
        .getFromPref(SHARED_PREFERENCE_KEY.SCREEN_TEXT_SCALE_FACTOR);
    if (textSize != null) {
      _textScaleFactor = textSize;
    }
  }
}
