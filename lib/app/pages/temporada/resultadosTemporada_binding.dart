import 'package:get/get.dart';
import 'package:cd_castellon/app/pages/temporada/resultadosTemporada_controller.dart';
import 'package:cd_castellon/app/data/provider/partido_provider.dart';
import 'package:cd_castellon/app/data/repository/partido_repository.dart';


class ResultadosTemporadaBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ResultadosController>(() => ResultadosController(
        repository: PartidoRepository(partidoProvider: PartidoProvider())));
  }
}
