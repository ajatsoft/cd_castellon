import 'package:cd_castellon/app/data/provider/nextPartido_provider.dart';
import 'package:cd_castellon/app/data/repository/nextPartido_repository.dart';
import 'package:get/get.dart';

import 'nextPartido_controller.dart';

class NextPartidoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NextPartidoController>(() => NextPartidoController(
        repository:
            NextPartidoRepository(nextPartidoProvider: NextPartidoProvider())));
  }
}
