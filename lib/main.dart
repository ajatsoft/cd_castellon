import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cd_castellon/app/controller/theme_controller.dart';
import 'package:cd_castellon/app/routes/app_pages.dart';
import 'package:cd_castellon/app/translations/app_translations.dart';
import 'app/pages/theme/app_theme.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  Get.put<ThemeController>(ThemeController());
  // Get.put<LanguageController>(LanguageController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeController.to.getThemeModeFromStore();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // initialBinding: ResultadosBinding(),
      initialRoute: Routes.initial,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeMode.system,
      defaultTransition: Transition.fade,
      getPages: AppPages.pages,
      // home: PartidoPage(),
      locale: Locale('es', 'ES'),
      translationsKeys: AppTranslation.translations,
    );
  }
}
