import 'package:get/get.dart';

import 'patrocinadores_controller.dart';

class PatrocinadoresBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PatrocinadoresController());
  }
}
