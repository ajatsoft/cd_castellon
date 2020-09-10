import 'package:cd_castellon/app/pages/widgets_general/dots_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cd_castellon/app/pages/partido/clasificacion/widgets/clasificacion_table.dart';
import 'controller.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class Clasificacion extends GetView<ClasificacionController> {
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

      return Padding(
        padding: const EdgeInsets.only(top: 48.0),
        child: SmartRefresher(
          controller: controller.refreshController,
          enablePullUp: false,
          enablePullDown: true,
          onRefresh: () => controller.refresh(),
          // onLoading: () => controller.load(),
          child: SingleChildScrollView(
            child: CompetitionTable(controller.entries),
          ),
        ),
      );
    });
  }
}
