import 'package:cd_castellon/app/data/model/modelPartidoDetail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controller.dart';

class PartidoCSInfo extends StatelessWidget {
  var dateFormat = new DateFormat('dd-MM-yyyy HH:mm:ss');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        child: GetX<PartidoHomeController>(
            init: PartidoHomeController(),
            builder: (_) {
              return Container(
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Card(
                        color: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Fecha y hora: '),
                              Text(dateFormat
                                  .format(DateTime.parse(_.competition.date))),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text("Partidos anteriores: "),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.45,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        ListView.builder(
                                            shrinkWrap: true,
                                            itemCount: _.formHome.events.length,
                                            itemBuilder: (context, index) {
                                              Evento evento =
                                                  _.formHome.events[index];
                                              return GestureDetector(
                                                onTap: () async {
                                                  // await _.gePartidoDetail(controller.partidos[index].id);
                                                  // Get.toNamed('/partido_detail',
                                                  //     arguments: partidos);
                                                },
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.025,
                                                  margin: EdgeInsets.all(4.0),
                                                  padding: EdgeInsets.all(4.0),
                                                  decoration: BoxDecoration(
                                                    color: Theme.of(context)
                                                        .canvasColor,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    10),
                                                            topRight:
                                                                Radius.circular(
                                                                    10),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    10),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    10)),
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
                                                  child: FittedBox(
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 4.0),
                                                          child: (evento
                                                                      .homeTeamId ==
                                                                  evento
                                                                      .opponent
                                                                      .id)
                                                              ? Text(evento
                                                                  .opponent
                                                                  .displayName)
                                                              : Text(_.form.team
                                                                  .displayName),
                                                        ),
                                                        Text(
                                                            " ${evento.homeTeamScore}"),
                                                        Text(" - "),
                                                        Text(
                                                            "${evento.awayTeamScore} "),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 4.0),
                                                          child: (evento
                                                                      .homeTeamId ==
                                                                  evento
                                                                      .opponent
                                                                      .id)
                                                              ? Text(_.form.team
                                                                  .displayName)
                                                              : Text(evento
                                                                  .opponent
                                                                  .displayName),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.45,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        ListView.builder(
                                            shrinkWrap: true,
                                            itemCount: _.formAway.events.length,
                                            itemBuilder: (context, index) {
                                              Evento evento =
                                                  _.formAway.events[index];
                                              return GestureDetector(
                                                onTap: () async {
                                                  // await _.gePartidoDetail(controller.partidos[index].id);
                                                  // Get.toNamed('/partido_detail',
                                                  //     arguments: partidos);
                                                },
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.025,
                                                  margin: EdgeInsets.all(4.0),
                                                  padding: EdgeInsets.all(4.0),
                                                  decoration: BoxDecoration(
                                                    color: Theme.of(context)
                                                        .canvasColor,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    10),
                                                            topRight:
                                                                Radius.circular(
                                                                    10),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    10),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    10)),
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
                                                  child: FittedBox(
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 4.0),
                                                          child: (evento
                                                                      .homeTeamId ==
                                                                  evento
                                                                      .opponent
                                                                      .id)
                                                              ? Text(evento
                                                                  .opponent
                                                                  .displayName)
                                                              : Text(_.form.team
                                                                  .displayName),
                                                        ),
                                                        Text(
                                                            " ${evento.homeTeamScore}"),
                                                        Text(" - "),
                                                        Text(
                                                            "${evento.awayTeamScore} "),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 4.0),
                                                          child: (evento
                                                                      .homeTeamId ==
                                                                  evento
                                                                      .opponent
                                                                      .id)
                                                              ? Text(_.form.team
                                                                  .displayName)
                                                              : Text(evento
                                                                  .opponent
                                                                  .displayName),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text("Enfrentamientos anteriores: "),
                              ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: _.head_head.length,
                                  itemBuilder: (context, index) {
                                    Evento evento = _.head_head[index];
                                    return GestureDetector(
                                      onTap: () async {
                                        // await _.gePartidoDetail(controller.partidos[index].id);
                                        // Get.toNamed('/partido_detail',
                                        //     arguments: partidos);
                                      },
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.03,
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
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 5,
                                              blurRadius: 7,
                                              offset: Offset(0,
                                                  3), // changes position of shadow
                                            ),
                                          ],
                                        ),
                                        child: FittedBox(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 4.0),
                                                child: (evento.homeTeamId ==
                                                        evento.opponent.id)
                                                    ? Text(evento
                                                        .opponent.displayName)
                                                    : Text(_
                                                        .form.team.displayName),
                                              ),
                                              Text(" ${evento.homeTeamScore}"),
                                              Text(" - "),
                                              Text("${evento.awayTeamScore} "),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 4.0),
                                                child: (evento.homeTeamId ==
                                                        evento.opponent.id)
                                                    ? Text(
                                                        _.form.team.displayName)
                                                    : Text(evento
                                                        .opponent.displayName),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                            ],
                          ),
                        ),
                      )
                    ],
                  ));
            }),
      ),
    );
  }
}
