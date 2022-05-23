import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../constants.dart';

class ThemeController extends GetxController {
  static ThemeController instance = Get.find();
  final _box = GetStorage();
  final _key = 'isDarkMode';
  ThemeMode get theme => _loadThemeFromBox() ? ThemeMode.dark : ThemeMode.light;
  bool _loadThemeFromBox() => _box.read(_key) ?? false;
  _saveThemeToBox(bool isDarkMode) => _box.write(_key, isDarkMode);

  /// Switch theme and save to local storage
  void switchTheme() {
    Get.changeThemeMode(_loadThemeFromBox() ? ThemeMode.light : ThemeMode.dark);
    _saveThemeToBox(!_loadThemeFromBox());
  }

  final light = ThemeData(
      brightness: Brightness.light,
      fontFamily: 'Cairo',
      scaffoldBackgroundColor: primaryLightColor);
  final dark = ThemeData(
      brightness: Brightness.dark,
      fontFamily: 'Cairo',
      scaffoldBackgroundColor: primaryLightColor);
}
