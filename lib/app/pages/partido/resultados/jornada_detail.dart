import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cd_castellon/app/pages/partido/resultados/resultados_controller.dart';
import 'package:cd_castellon/app/data/model/partido.dart';


class JornadaDetail extends StatelessWidget{

  final ResultadosController controller = Get.put(ResultadosController());

  @override
  Widget build(BuildContext context) {
    Week jornadaName = Get.arguments;
    // print(controller.partidos[0].competitors[0].logo);

    return SafeArea(
        bottom: false,
        top: false,
        child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                colorFilter: ColorFilter.linearToSrgbGamma(),
                image: AssetImage('images/Foto-web-estadio.jpg'),
              ),
            ),
            child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).canvasColor.withOpacity(0.5)),
                  child: Scaffold(
                    backgroundColor: Colors.transparent,
                    appBar: AppBar(
                      backgroundColor: Colors.transparent,
                      title: Text(jornadaName.week),
                      elevation: 0,
                      centerTitle: true,
                    ),
                    body: Center(
                        child: ListView.builder(
                            itemCount: controller.partidos.length,
                            itemBuilder: (context, index) {
                              Event partidos = controller.partidos[index];
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
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 4.0),
                                        child: (partidos.competitors[0].logo == '')
                                            ? logoHome(partidos.competitors[0].name)
                                            : Container(
                                                width: 30.0,
                                                height: 30.0,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                    fit: BoxFit.fill,
                                                    image: NetworkImage(
                                                        partidos.competitors[0].logo),
                                                  ),
                                                )),
                                      ),
                                      Expanded(
                                        child: Center(
                                            child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(partidos.competitors[0].name),
                                        )),
                                      ),
                                      Text("${partidos.competitors[0].score}"),
                                      Text(" - "),
                                      Text("${partidos.competitors[1].score}"),
                                      Expanded(
                                        child: Center(
                                            child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(partidos.competitors[1].name),
                                        )),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 4.0),
                                        child: (partidos.competitors[1].logo == '')
                                            ? logoAway(partidos.competitors[1].name)
                                            : Container(
                                                width: 30.0,
                                                height: 30.0,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                    fit: BoxFit.fill,
                                                    image: NetworkImage(
                                                        partidos.competitors[1].logo),
                                                  ),
                                                )),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                    ),
                  ),
                ))));
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
            image: AssetImage(
                'images/castellon.png'),
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
                'images/carthagene.png'),
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
                'images/sabadell.png'),
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
                'images/ud-logrones.png'),
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
                'images/castellon.png'),
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
                'images/carthagene.png'),
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
                'images/sabadell.png'),
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
                'images/ud-logrones.png'),
          ),
        ),);
    }
  }
}
