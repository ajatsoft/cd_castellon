import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cd_castellon/app/controller/theme_controller.dart';
import 'package:cd_castellon/app/routes/app_pages.dart';
import 'package:cd_castellon/app/translations/app_translations.dart';
import 'app/pages/partido/resultados/resultados_binding.dart';
import 'app/pages/theme/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.lazyPut<ThemeController>(() => ThemeController());
  ThemeController.to.getThemeMode();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: ResultadosBinding(),
      initialRoute: Routes.initial,
      theme: appThemeData,
      darkTheme: appDarkThemeData,
      themeMode: ThemeController.to.themeMode,
      defaultTransition: Transition.fade,
      getPages: AppPages.pages,
      // home: PartidoPage(),
      locale: Locale('es', 'ES'),
      translationsKeys: AppTranslation.translations,


    );
  }
}
