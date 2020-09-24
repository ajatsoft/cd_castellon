import 'package:cd_castellon/app/pages/clasificacion/widgets/clasificacion_table.dart';
import 'package:cd_castellon/app/pages/widgets_general/customAppBarAction.dart';
import 'package:cd_castellon/app/pages/widgets_general/dots_loader.dart';
import 'package:cd_castellon/app/pages/widgets_general/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'clasificacion_controller.dart';

class ClasificacionPage extends GetView<ClasificacionController> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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
          key: _scaffoldKey,
          drawer: AppDrawer(),
          appBar: AppBar(
            leading: CustomAppBarAction(
              () => _scaffoldKey.currentState.openDrawer(),
              Icons.menu,
            ),
            title: Text(
              'Clasificación',
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w700),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
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
