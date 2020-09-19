import 'package:cd_castellon/app/pages/widgets_general/dots_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cd_castellon/app/pages/clasificacion/widgets/clasificacion_table.dart';
import 'clasificacion_controller.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class ClasificacionPage extends GetView<ClasificacionController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.isLoading) {
        return Center(
          child: ColorLoader(),
        );
      }

      if (controller.modelClasificacion == null) {
        return Text('Error de red');
      }

      return Scaffold(
          appBar: AppBar(
            title: Text(
              'Clasificación',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            iconTheme: IconThemeData(
              color: Get.isDarkMode ? Colors.white70 : Colors.black54,
            ),
          ),
          // backgroundColor: Colors.transparent,
          body: SmartRefresher(
            controller: controller.refreshController,
            header: WaterDropMaterialHeader(),
            enablePullUp: false,
            enablePullDown: true,
            onRefresh: () => controller.refresh(),
            // onLoading: () => controller.load(),
            child: SingleChildScrollView(
              child: CompetitionTable(controller.entries),
            ),
          ));
    });
  }
}
