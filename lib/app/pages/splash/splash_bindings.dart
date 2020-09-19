import 'package:cd_castellon/app/pages/splash/splash_controller.dart';
import 'package:get/get.dart';
import 'package:cd_castellon/app/pages/partido/main/main_partido_controller.dart';

class SplashBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
  }
}
