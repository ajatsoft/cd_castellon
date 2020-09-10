import 'package:cd_castellon/app/pages/widgets_general/dots_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cd_castellon/app/pages/partido/resultados/resultados_controller.dart';
import 'package:cd_castellon/app/data/model/partido.dart';

class ResultadosTemporada extends GetWidget<ResultadosController> {

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.isLoading) {
        return Center(
          child: ColorLoader(),
        );
      }

      if (controller.temporada == null) {
        return Text('esperando API request.');
      }

      return Padding(
        padding: const EdgeInsets.only(top: 54.0, left: 4, right: 4),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 4),
            ),
            itemCount: controller.temporada.length,
            itemBuilder: (context, index) {
              Week temporada = controller.temporada[index];

              return GestureDetector(
                onTap: () async {
                  await controller.getDataPartidos(temporada.urlJornada);
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
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Center(child: Text(temporada.week)),
                ),
              );
            }),
      );
    });
  }
}
