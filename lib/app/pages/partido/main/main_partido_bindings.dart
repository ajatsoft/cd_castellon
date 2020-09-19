import 'package:get/get.dart';
import 'package:cd_castellon/app/pages/partido/main/main_partido_controller.dart';

class MainPartidoBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainPartidoController>(() => MainPartidoController());
  }
}
