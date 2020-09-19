import 'package:get/get.dart';
import 'package:cd_castellon/app/data/provider/partidoHome_provider.dart';
import 'package:cd_castellon/app/data/repository/partidoHome_repository.dart';

import 'controller.dart';


class PartidoHomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PartidoHomeController>(() =>
        PartidoHomeController(repository: PartidoHomeRepository(partidoHomeProvider: PartidoHomeProvider())));
  }
}
