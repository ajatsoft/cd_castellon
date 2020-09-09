import 'package:get/get.dart';
import 'package:cd_castellon/app/data/provider/clasificacion_provider.dart';
import 'package:cd_castellon/app/data/repository/clasificacion_repository.dart';

import 'controller.dart';


class ClasificacionBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ClasificacionController>(() =>
        ClasificacionController(repository: ClasificacionRepository(clasificacionProvider: ClasificacionProvider())));
  }
}
