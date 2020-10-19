import 'package:get/get.dart';

import 'redes_controller.dart';

class RedesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RedesController>(
      () => RedesController(),
    );
  }
}
