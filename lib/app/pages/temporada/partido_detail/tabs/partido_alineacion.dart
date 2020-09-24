import 'package:cd_castellon/app/data/model/livePartidoModel.dart';
import 'package:cd_castellon/app/data/model/partido.dart';
import 'package:cd_castellon/app/pages/temporada/resultadosTemporada_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PartidoAlineacion extends StatelessWidget {
  final Event jornada;

  PartidoAlineacion(this.jornada);

  final ResultadosController c = Get.put(ResultadosController());

  @override
  Widget build(BuildContext context) {
    return ListView(padding: EdgeInsets.all(0), children: [
      // Row(children: [
      //   Expanded(
      //       flex: 5,
      //       child: Padding(
      //         padding: const EdgeInsets.only(top: 18.0),
      //         child:
      //             Center(child: Text(c.alineacion[0].team.displayName.toString() ?? '')),
      //       )),
      //   Expanded(
      //       flex: 5,
      //       child: Padding(
      //         padding: const EdgeInsets.only(top: 18.0),
      //         child:
      //             Center(child: Text(c.alineacion[1].team.displayName.toString() ?? '')),
      //       )),
      // ]),
      Padding(
          padding: const EdgeInsets.all(2.0),
          child: Center(
            child: Text(
              '11 Titular',
              style: Theme.of(context).textTheme.caption,
            ),
          )),
      Row(children: [
        Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: buildLineupTitulares(context, c.alineacion[0].roster),
            )),
        Expanded(
            flex: 5,
            child: buildLineupTitulares(context, c.alineacion[1].roster)),
      ]),
      Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: Text(
              'Banquillo',
              style: Theme.of(context).textTheme.caption,
            ),
          )),
      Container(
        child: Row(children: [
          Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: buildLineupSuplentes(context, c.alineacion[0].roster),
              )),
          Expanded(
              flex: 5,
              child: buildLineupSuplentes(context, c.alineacion[1].roster)),
        ]),
      ),
    ]);
  }
}

Widget buildLineupTitulares(BuildContext context, List<RosterRoster> players) {
  return ListView.separated(
    physics: const NeverScrollableScrollPhysics(),

    padding: EdgeInsets.only(top: 12.0),
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    itemBuilder: (BuildContext context, index) {
      var player = players[index];
      return (player.starter)
          ? GestureDetector(
        onTap: () =>
            Get.dialog(AlertDialog(
              // title:  eventosAlineacion(player.plays),
              content: Text("Proximamente"),
            )),
        child: Card(
          color: Colors.white10,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Column(
              children: [
                Row(children: [
                  Expanded(
                    flex: 15,
                    child: Container(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 2.0),
                      child: Text(
                        player.jersey,
                        style: Theme.of(context).textTheme.caption,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 85,
                    child: Stack(
                      children: [
                        Text(
                            player.athlete.displayName,
                            style: Theme.of(context).textTheme.caption,
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.ellipsis),

                        Positioned(
                          right: 0,
                          child: Container(
                              height: 20,
                              width: 40,
                              child: eventosAlineacion(player.plays)),
                        ),

                      ],
                    ),
                  ),
                  // Expanded(
                  //   flex: 20,
                  //   child: Container(
                  //       height: 20,
                  //       // width: 40,
                  //       child: eventosAlineacion(player.plays)),
                  // ),
                ]),
                (player.subbedOut)
                    ? Row(children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.only(left: 2.0),
                      child: Icon(
                        Icons.replay,
                        color: Colors.green,
                        size: 15,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.only(left: 2.0),
                      child: Text(
                        player.subbedOutFor.jersey,
                        style: Theme.of(context).textTheme.caption,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Text(
                        player.subbedOutFor.athlete.displayName,
                        style: Theme.of(context).textTheme.caption,
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis),
                  ),
                ])
                    : Container(),
              ],
            ),
          ),
        ),
      )
          : Container(
        color: Colors.black,
      );
    },
    separatorBuilder: (BuildContext context, index) {
      return Divider(
        height: 0.0,
        // color: Colors.transparent,
      );
    },
    itemCount: players?.length ?? 0,
  );
}

Widget buildLineupSuplentes(BuildContext context, List<RosterRoster> players) {
  return ListView.separated(
    physics: const NeverScrollableScrollPhysics(),

    padding: EdgeInsets.all(0.0),
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    itemBuilder: (BuildContext context, index) {
      var player = players[index];

      return (!player.starter)
          ? Row(children: [
        Expanded(
          flex: 2,
          child: Container(
            padding:
            const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8),
            child: Text(player.jersey,
                style: Theme.of(context).textTheme.caption,
                textAlign: TextAlign.start,
                overflow: TextOverflow.ellipsis),
          ),
        ),
        Expanded(
          flex: 8,
          child: Stack(
            children: [
              Text(
                player.athlete.displayName,
                style: Theme.of(context).textTheme.caption,
                textAlign: TextAlign.start,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
              ),
              Positioned(
                right: 0,
                child: Container(
                    height: 20,
                    width: 40,
                    child: eventosAlineacion(player.plays)),
              ),

            ],
          ),
        ),
      ])
          : Container();
    },
    separatorBuilder: (BuildContext context, index) {
      return Divider(
        height: 0.0,
        // color: Colors.transparent,
      );
    },
    itemCount:  players?.length ?? 0,
  );
}

Widget eventosAlineacion(List<Play> player) {
  return Container(
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: player?.length ?? 0,
      itemBuilder: (context, index) {
        Play player2 = player[index];
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            (player != null)
                ? (player2.scoringPlay)
                ? Stack(
              children: [
                Container(
                    child: Icon(
                      Icons.fiber_manual_record,
                            size: 16,
                            color: Colors.white,
                          )),
                Container(
                    child: Text(
                      player2.clock.displayValue, style: TextStyle(fontSize: 12),
                    )),
              ],
            )
                : Container()
                : Container(),
            (player2.redCard)
                ? Stack(
              children: [
                Container(
                    child: Icon(
                      Icons.fiber_manual_record,
                      color: Colors.red,
                      size: 14,
                    )),
                Container(
                    child: Text(
                      player2.clock.displayValue, style: TextStyle(fontSize: 12),
                    )),
              ],
            )
                : Container(),
            (player2.yellowCard)
                ? Stack(
              children: [
                Container(
                    child: Icon(
                      Icons.fiber_manual_record,
                      color: Colors.yellow,
                      size: 14,
                    )),
                Container(
                    child: Text(
                      player2.clock.displayValue, style: TextStyle(fontSize: 12),
                    )),
              ],
            )
                : Container(),
            // (player2.substitution)
            //     ? Container(
            //         padding: const EdgeInsets.symmetric(horizontal: 2.0),
            //         child: Icon(
            //           Icons.replay,
            //           color: Colors.blue, size: 10,
            //         ))
            //     : Container(),
          ],
        );
      },
    ),
  );
}
