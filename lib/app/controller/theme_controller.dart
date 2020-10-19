// import 'package:cd_castellon/app/pages/temporada/resultadosTemporada_controller.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// class ThemeController extends GetxController {
//   static ThemeController get to => Get.put(ThemeController());
//   Future<SharedPreferences> sharedPreferences = SharedPreferences.getInstance();
//
//   ThemeMode _themeMode;
//
//   ThemeMode get themeMode => _themeMode;
//   RxBool modoDark = true.obs;
//
//   Future<void> changeTheme(ThemeMode themeMode) async {
//     final SharedPreferences prefs = await sharedPreferences;
//     if (themeMode == ThemeMode.system) themeMode = ThemeMode.light;
//
//     Get.changeThemeMode(themeMode);
//     _themeMode = themeMode;
//     update();
//     await prefs.setString('theme', themeMode.toString().split('.')[1]);
//   }
//
//   getThemeMode() async {
//     final SharedPreferences prefs = await sharedPreferences;
//     ThemeMode themeMode;
//     String themeText = prefs.getString('theme') ?? 'system';
//     try {
//       themeMode =
//           ThemeMode.values.firstWhere((e) => describeEnum(e) == themeText);
//     } catch (e) {
//       themeMode = ThemeMode.light;
//     }
//
//     if (themeMode == ThemeMode.dark)
//       modoDark.value = true;
//     else
//       modoDark.value = false;
//
//     changeTheme(themeMode);
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

// https://gist.github.com/RodBr/37310335c6639f486bb3c8a628052405
//https://medium.com/swlh/flutter-dynamic-themes-in-3-lines-c3b375f292e3

class ThemeController extends GetxController {
  static ThemeController get to => Get.find();
  final theme = "system".obs;
  final store = GetStorage();
  ThemeMode _themeMode;

  ThemeMode get themeMode => _themeMode;

  String get currentTheme => theme.value;

  ThemeMode getThemeModeFromString(String themeString) {
    ThemeMode _setThemeMode = ThemeMode.system;
    if (themeString == 'light') {
      _setThemeMode = ThemeMode.light;
    }
    if (themeString == 'dark') {
      _setThemeMode = ThemeMode.dark;
    }
    return _setThemeMode;
  }

  Future<void> setThemeMode(String value) async {
    theme.value = value;
    _themeMode = getThemeModeFromString(value);
    Get.changeThemeMode(_themeMode);
    await store.write('theme', value);
    update();
  }

  getThemeModeFromStore() async {
    String _themeString = await store.read('theme') ?? 'system';
    setThemeMode(_themeString);
  }

  // checks whether darkmode is set via system or previously by user
  bool get isDarkModeOn {
    if (currentTheme == 'system') {
      if (WidgetsBinding.instance.window.platformBrightness ==
          Brightness.dark) {
        return true;
      }
    }
    if (currentTheme == 'dark') {
      return true;
    }
    return false;
  }
}
