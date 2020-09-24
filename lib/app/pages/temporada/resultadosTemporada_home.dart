import 'dart:ui';

import 'package:cd_castellon/app/data/model/partido.dart';
import 'package:cd_castellon/app/pages/temporada/resultadosTemporada_controller.dart';
import 'package:cd_castellon/app/pages/widgets_general/customAppBarAction.dart';
import 'package:cd_castellon/app/pages/widgets_general/dots_loader.dart';
import 'package:cd_castellon/app/pages/widgets_general/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultadosTemporadaPage extends GetWidget<ResultadosController> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.isLoading) {
        return Center(
          child: ColorLoader(),
        );
      }

      if (controller.temporada == null) {
        return Text('Error en red.');
      }

      return SafeArea(
        bottom: false,
        top: false,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.linearToSrgbGamma(),
              image: AssetImage('assets/images/Foto-web-estadio.jpg'),
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor.withOpacity(0.5)),
              child: Scaffold(
                key: _scaffoldKey,
                backgroundColor: Colors.transparent,
                drawer: AppDrawer(),
                appBar: AppBar(
                  leading: CustomAppBarAction(
                    () => _scaffoldKey.currentState.openDrawer(),
                    Icons.menu,
                  ),
                  backgroundColor: Colors.transparent,
                  title: Text('Temporada 20/21'),
                  elevation: 0,
                  centerTitle: true,
                ),
                body: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      childAspectRatio: (context.isLandscape)
                          ? MediaQuery.of(context).size.width /
                          (MediaQuery.of(context).size.height / 3)
                          : MediaQuery.of(context).size.width /
                          (MediaQuery.of(context).size.height / 4),
                    ),
                    itemCount: controller.temporada.length,
                    itemBuilder: (context, index) {
                      Week temporada = controller.temporada[index];

                      return GestureDetector(
                        onTap: () async {
                          print(temporada.urlJornada);

                          await controller
                              .getDataPartidos(temporada.urlJornada);

                          print(temporada.urlJornada);
                          Get.toNamed('/jornada_detail', arguments: temporada);
                        },
                        child: Container(
                          height: 20,
                          margin: EdgeInsets.all(4.0),
                          padding: EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                            color: Theme.of(context).canvasColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 2,
                                offset:
                                Offset(1, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Center(child: Text(temporada.week)),
                        ),
                      );
                    }),
              ),
            ),
          ),
        ),
      );
    });
  }
}
