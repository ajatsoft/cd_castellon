import 'package:cd_castellon/app/data/provider/plantilla_provider.dart';
import 'package:cd_castellon/app/data/repository/plantilla_repository.dart';
import 'package:get/get.dart';
import 'package:cd_castellon/app/data/provider/clasificacion_provider.dart';
import 'package:cd_castellon/app/data/repository/clasificacion_repository.dart';

import 'plantilla_controller.dart';

class PlantillaBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PlantillaController>(() => PlantillaController(
        repository:
            PlantillaRepository(plantillaProvider: PlantillaProvider())));
  }
}
