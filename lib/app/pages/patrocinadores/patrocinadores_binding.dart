import 'package:cd_castellon/app/pages/nextPartido/nextPartido_controller.dart';
import 'package:get/get.dart';

class PatrocinadoresBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NextPartidoController());
  }
}
