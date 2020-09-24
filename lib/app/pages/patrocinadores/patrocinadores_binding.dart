import 'package:cd_castellon/app/pages/patrocinadores/patrocinadores_controller.dart';
import 'package:get/get.dart';

class PatrocinadoresBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PatrocinadoresController());
  }
}
