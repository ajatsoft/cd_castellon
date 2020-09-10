import 'package:get/get.dart';

import 'contacto_controller.dart';

class ContactoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ContactoController());
  }
}
