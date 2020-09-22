import 'package:cd_castellon/app/data/model/players.dart';
import 'package:cd_castellon/app/pages/plantilla/jugador_detail/jugadorDetail_controller.dart';
import 'package:cd_castellon/app/pages/plantilla/jugador_detail/jugador_detail.dart';
import 'package:cd_castellon/app/pages/plantilla/plantilla_controller.dart';
import 'package:cd_castellon/app/pages/theme/app_colors.dart';
import 'package:cd_castellon/app/pages/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlantillaTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PlantillaController>(
        init: PlantillaController(),
        // initState: (_) {
        //   PlantillaController.to.loadJugadores();
        // },
        builder: (_) {
          // if (_.loading) {
          //   return Center(
          //     child: ColorLoader(),
          //   );
          // }
          return GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: (context, index) {
              final AthleteCS jugador = _.modelJugadores.athletes[index];
              return ItemPlayer(
                player: jugador,
              );
            },
            itemCount: _.modelJugadores.athletes.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
          );
        });
  }
}

class ItemPlayer extends StatelessWidget {
  final AthleteCS player;

  ItemPlayer({this.player});

  JugadorDetailController controller = Get.put(JugadorDetailController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // controller.loadJugadorDetail(player.url);
        // controller.loadJugadorDetail2(player.url);

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
              tag: player.id,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  controller.getPlayerIMG(player.id),
                ),
              ),
            ),
            Positioned(
              right: 0,
              child: Text((player.jersey == null) ? '' : player.jersey,
                  style: TextStyle(
                      color: AppThemes.redCS,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(player.displayName,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          background: Paint()..color = Colors.black54,
                          fontFamily: 'Oswald',
                          fontWeight: FontWeight.bold,
                          color: AppThemes.yellowCS,
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