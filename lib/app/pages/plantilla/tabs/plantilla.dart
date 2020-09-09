import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cd_castellon/app/controller/jugadorDetail_controller.dart';
import 'package:cd_castellon/app/controller/plantilla_controller.dart';
import 'package:cd_castellon/app/data/model/jugadores.dart';
import 'package:cd_castellon/app/pages/plantilla/jugador_detail.dart';
import 'package:cd_castellon/app/pages/theme/app_colors.dart';

class PlantillaTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PlantillaController>(
        init: PlantillaController(),
        initState: (_) {
          PlantillaController.to.loadJugadores();
        },
        builder: (_) {
          if (_.loading) {
            return Center(
              child: LinearProgressIndicator(),
            );
          }
          return GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: (context, index) {
              final Jugador jugador = _.jugadores[index];
              return ItemPlayer(
                player: jugador,
              );
            },
            itemCount: _.jugadores.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
          );
        });
  }
}

class ItemPlayer extends StatelessWidget {
  final Jugador player;
  ItemPlayer({this.player});
  JugadorDetailController controller = Get.put(JugadorDetailController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.loadJugadorDetail(player.url);
        controller.loadJugadorDetail2(player.url);

//        JugadorDetailController.to.setUrl(player.url);
        Get.to(DetailPlayer(player: player));
//        print('plantilla_send_url=====================================================${player.url}');
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 4.0),
        width: 150,
        child: Stack(
          children: <Widget>[
            Hero(
              tag: player.imageurl,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  player.imageurl,
                ),
              ),
            ),
            Positioned(
              right: 0,
              child: Text(player.numero,
                  style: TextStyle(
                      fontFamily: 'Juventus',
                      color: AColors.secondary,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(player.nombre,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          background: Paint()..color = Colors.black54,
                          fontFamily: 'Oswald',
                          fontWeight: FontWeight.bold,
                          color: AColors.primary,
                          fontSize: 22)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
