import 'dart:ui';

import 'package:cd_castellon/app/data/model/partido.dart';
import 'package:cd_castellon/app/pages/temporada/resultadosTemporada_controller.dart';
import 'package:cd_castellon/app/pages/widgets_general/dots_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class JornadaDetail extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Week jornadaName = Get.arguments;
    var dateFormat = new DateFormat('dd-MM-yyyy HH:mm:ss');
    return GetBuilder<ResultadosController>(
      builder: (controller) => (controller.isLoading == true)
          ? Center(
              child: ColorLoader(),
            )
          : SafeArea(
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
                            color:
                                Theme.of(context).canvasColor.withOpacity(0.5)),
                        child: SmartRefresher(
                          header: WaterDropMaterialHeader(),
                          controller: controller.refreshController,
                          enablePullUp: false,
                          enablePullDown: true,
                          onRefresh: () =>
                              controller.refreshJornada(jornadaName.urlJornada),
                          // onLoading: () => controller.load(),
                          child: Scaffold(
                            backgroundColor: Colors.transparent,
                            appBar: AppBar(
                              backgroundColor: Colors.transparent,
                              title: Text(jornadaName.week),
                              elevation: 0,
                              centerTitle: true,
                            ),
                            body: Obx(
                              () => Center(
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: controller.partidos.length,
                                    itemBuilder: (context, index) {
                                      print(controller
                                          .partidos[10].competitors[0].score);
                                      print(controller
                                          .partidos[10].competitors[0].name);
                                      Event partidos =
                                          controller.partidos[index];
                                      return GestureDetector(
                                        onTap: () {
                                          controller.gePartidoDetail(
                                              controller.partidos[index].id);
                                          Get.toNamed('/partido_detail',
                                              arguments: partidos);
                                        },
                                        child: Container(
                                          margin: EdgeInsets.all(4.0),
                                          padding: EdgeInsets.all(4.0),
                                          decoration: BoxDecoration(
                                            color:
                                                Theme.of(context).canvasColor,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10),
                                                bottomLeft: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10)),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.5),
                                                spreadRadius: 5,
                                                blurRadius: 7,
                                                offset: Offset(0,
                                                    3), // changes position of shadow
                                              ),
                                            ],
                                          ),
                                          child: Column(
                                            children: [
                                              Text(dateFormat.format(
                                                  DateTime.parse(partidos.date
                                                      .add(Duration(hours: 2))
                                                      .toIso8601String()))),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 4.0),
                                                    child: (partidos
                                                                .competitors[0]
                                                                .logo ==
                                                            '')
                                                        ? logoHome(partidos
                                                            .competitors[0]
                                                            .name)
                                                        : Container(
                                                            width: 30.0,
                                                            height: 30.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                              image:
                                                                  DecorationImage(
                                                                fit:
                                                                    BoxFit.fill,
                                                                image: NetworkImage(
                                                                    partidos
                                                                        .competitors[
                                                                            0]
                                                                        .logo),
                                                              ),
                                                            )),
                                                  ),
                                                  Expanded(
                                                    child: Center(
                                                        child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(partidos
                                                          .competitors[0].name),
                                                    )),
                                                  ),
                                                  Text(
                                                      "${partidos.competitors[0].score}"),
                                                  Text(" - "),
                                                  Text(
                                                      "${partidos.competitors[1].score}"),
                                                  Expanded(
                                                    child: Center(
                                                        child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(partidos
                                                          .competitors[1].name),
                                                    )),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 4.0),
                                                    child: (partidos
                                                                .competitors[1]
                                                                .logo ==
                                                            '')
                                                        ? logoAway(partidos
                                                            .competitors[1]
                                                            .name)
                                                        : Container(
                                                            width: 30.0,
                                                            height: 30.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                              image:
                                                                  DecorationImage(
                                                                fit:
                                                                    BoxFit.fill,
                                                                image: NetworkImage(
                                                                    partidos
                                                                        .competitors[
                                                                            1]
                                                                        .logo),
                                                              ),
                                                            )),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                              ),
                            ),
                          ),
                        ),
                      )))),
    );
  }


  logoHome(team) {
    if (team == "Castellon") {
      return Container(
        width: 30.0,
        height: 30.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/castellon.png'),
          ),
        ),);
    } else if (team == "FC Cartagena") {
      return Container(
        width: 30.0,
        height: 30.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
                'assets/images/carthagene.png'),
          ),
        ),);
    }else if (team == "CD Sabadell") {
      return Container(
        width: 30.0,
        height: 30.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
                'assets/images/sabadell.png'),
          ),
        ),);
    } else {
      return Container(
        width: 30.0,
        height: 30.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
                'assets/images/ud-logrones.png'),
          ),
        ),);
    }
  }

  logoAway(team) {
    if (team == "Castellon") {
      return Container(
        width: 30.0,
        height: 30.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
                'assets/images/castellon.png'),
          ),
        ),);
    } else if (team == "FC Cartagena") {
      return Container(
        width: 30.0,
        height: 30.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
                'assets/images/carthagene.png'),
          ),
        ),);
    }else if (team == "CD Sabadell") {
      return Container(
        width: 30.0,
        height: 30.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
                'assets/images/sabadell.png'),
          ),
        ),);
    } else {
      return Container(
        width: 30.0,
        height: 30.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
                'assets/images/ud-logrones.png'),
          ),
        ),);
    }
  }
}
