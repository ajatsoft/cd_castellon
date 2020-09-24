import 'package:cd_castellon/app/data/model/players.dart';
import 'package:cd_castellon/app/pages/plantilla/jugador_detail/jugadorDetail_controller.dart';
import 'package:cd_castellon/app/pages/plantilla/jugador_detail/widgets/itemStats.dart';
import 'package:cd_castellon/app/pages/plantilla/plantilla_controller.dart';
import 'package:cd_castellon/app/pages/theme/app_theme.dart';
import 'package:cd_castellon/app/pages/widgets_general/appBar.dart';
import 'package:cd_castellon/app/pages/widgets_general/customAppBarAction.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DetailPlayer extends StatelessWidget {
  final AthleteCS player;

  DetailPlayer({this.player});

  // JugadorDetailController controller = Get.put(JugadorDetailController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<JugadorDetailController>(
      init: JugadorDetailController(),
//        initState: (_)=>  PlantillaController.to.loadJugadorDetail(player.url),
      builder: (_) {
//          print("*****************************+${_.jugadoreDetail2.trayectoria}");
        return Scaffold(
          appBar: CustomAppBar(
            "${player.displayName}",
            leadings: [
              CustomAppBarAction(
                    () => Get.back(),
                Icons.arrow_back_ios,
              )
            ],
            actions: [
              Text(
                (player.jersey == null) ? '' : player.jersey,
                style: TextStyle(
                    color: AppThemes.redCS.withAlpha(200),
                    fontFamily: 'Juventus',
                    fontSize: 24),
              ),
            ],
          ),
          body: Container(
            padding: EdgeInsets.only(top: 0, left: 20, right: 16, bottom: 16),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
//            Row(
//              mainAxisSize: MainAxisSize.max,
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: <Widget>[
//                Padding(padding: EdgeInsets.only(left: 8, right: 8),
//                    child: Text("SERIE A", style: TextStyle(
//                        fontFamily: 'Oswald',
//                        fontSize: 14))),
//                Padding(padding: EdgeInsets.only(left: 8, right: 8),
//                    child: Text("UCL", style: TextStyle(
//                        fontFamily: 'Oswald',
//                        fontSize: 14))),
//                Padding(padding: EdgeInsets.only(left: 8, right: 8),
//                    child: Text("COPPA ITALIA", style: TextStyle(
//
//                        fontFamily: 'Oswald',
//                        fontSize: 14))),
//                Padding(padding: EdgeInsets.only(left: 8, right: 8),
//                    child: Text("SUPER CUP", style: TextStyle(
//
//                        fontFamily: 'Oswald',
//                        fontSize: 14)))
//              ],
//            ),
                Expanded(
                  child: ListView(
                    children: <Widget>[
                      Stack(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: ShaderMask(
                              shaderCallback: (rect) {
                                return LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Colors.transparent,
                                    Colors.black,
                                    Colors.black,
                                    Colors.transparent
                                  ],
                                ).createShader(
                                  Rect.fromLTRB(0, 0, rect.width, rect.height),
                                );
                              },
                              blendMode: BlendMode.dstIn,
                              child: Hero(
                                tag: player.id,
                                child: Image.asset(
                                  _.getPlayerIMG(player.id),
                                ),
                              ),
                            ),
                          ),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Opacity(
                                opacity: 0.6,
                                child: Container(
                                  height: 70,
                                  child: Image.asset(
                                    _.getDemarcacion(
                                        player.position.displayName),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          //
                          Positioned(
                            top: 0,
                            left: 10,
                            child: Info(
                              player: player,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      DefaultTabController(
                          initialIndex: 0,
                          length: 3,
                          child: Column(
                            children: [
                              _getTabBar(),
                              Container(
                                height: 3,
                                color: AppThemes.yellowCS,
                              ),
                              Container(
                                height: 300,
                                child: _getTabBarView(
                                  <Widget>[
                                    EstadisticasGeneralesPlayer(
                                      player: player,
                                    ),
                                    EstadisticasOfensivasPlayer(
                                      player: player,
                                    ),
                                    EstadisticasDefensivasPlayer(
                                      player: player,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  TabBar _getTabBar() {
    return TabBar(
      unselectedLabelColor: Colors.grey,
      indicatorSize: TabBarIndicatorSize.tab,
      indicator: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          color: AppThemes.yellowCS),
      labelColor: AppThemes.redCS,
      tabs: <Widget>[
        Tab(text: 'General'),
        Tab(text: 'Ofensivas'),
        Tab(text: 'Defensivas'),
      ],
    );
  }

  TabBarView _getTabBarView(tabs) {
    return TabBarView(
      children: tabs,
    );
  }
}

class Info extends StatelessWidget {
  PlantillaController controller = Get.put(PlantillaController());

  final AthleteCS player;

  Info({this.player});

  @override
  Widget build(BuildContext context) {
    var dateFormat = new DateFormat('dd-MM-yyyy');
    print('===== ===== init infoPlayer ===== ===== ');
    return GetBuilder<JugadorDetailController>(
        init: JugadorDetailController(),
        builder: (_) {
          print('===== ===== init JugadorDetailController ===== ===== ');

          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 4.0),
                child: Container(
                  padding: EdgeInsets.only(
                    left: 2,
                    right: 2,
                  ),
                  color: Colors.black26,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Nacionalidad:", style: TextStyle(fontSize: 12)),
                        (player.flag == null)
                            ? Padding(
                                padding: EdgeInsets.only(left: 0),
                                child: CircularProgressIndicator())
                            : Row(
                                children: [
                                  Image.network(
                                    player.flag.href,
                                    height: 30,
                                  ),
                                ],
                              )
                      ]),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 4.0),
                child: Container(
                  padding: EdgeInsets.only(
                    left: 2,
                    right: 2,
                  ),
                  color: Colors.black26,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Fecha nacimiento:",
                            style: TextStyle(fontSize: 12)),
                        (controller.isLoading)
                            ? Padding(
                            padding: EdgeInsets.only(left: 0),
                            child: CircularProgressIndicator())
                            : Text(
                            dateFormat
                                .format(DateTime.parse(player.dateOfBirth)),
                            style: TextStyle(
                                fontFamily: 'Oswald', fontSize: 15)),
                      ]),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 4.0),
                child: Container(
                  padding: EdgeInsets.only(
                    left: 2,
                    right: 2,
                  ),
                  color: Colors.black26,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Altura/Peso:", style: TextStyle(fontSize: 12)),
                        FittedBox(
                          fit: BoxFit.cover,
                          child: Row(
                            children: [
                              (controller.isLoading)
                                  ? Padding(
                                  padding: EdgeInsets.only(left: 0),
                                  child: CircularProgressIndicator())
                                  : Text(player.displayHeight ?? '',
                                  style: TextStyle(
                                      fontFamily: 'Oswald', fontSize: 15)),
                              Text(' / ',
                                  style: TextStyle(
                                      fontFamily: 'Oswald', fontSize: 15)),
                              (controller.isLoading)
                                  ? Padding(
                                  padding: EdgeInsets.only(left: 0),
                                  child: CircularProgressIndicator())
                                  : Text(player.displayWeight ?? '',
                                  style: TextStyle(
                                      fontFamily: 'Oswald', fontSize: 15)),
                            ],
                          ),
                        )
                      ]),
                ),
              ),
            ],
          );
        });
  }
}

class EstadisticasGeneralesPlayer extends StatelessWidget {
  final AthleteCS player;

  EstadisticasGeneralesPlayer({this.player});

  @override
  Widget build(BuildContext context) {
    return (player.statistics.splits != null)
        ? Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 3 / 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          final Stat generalStats =
          player.statistics.splits.categories[0].stats[index];
          return ItemStat(
            statName: generalStats.displayName,
            statValue: generalStats.displayValue,
          );
        },
        itemCount: player.statistics.splits.categories[0].stats.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
      ),
    )
        : Container();
  }
}

class EstadisticasDefensivasPlayer extends StatelessWidget {
  final AthleteCS player;

  EstadisticasDefensivasPlayer({this.player});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 3 / 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          final Stat generalStats =
          player.statistics.splits.categories[2].stats[index];
          return ItemStat(
            statName: generalStats.displayName,
            statValue: generalStats.displayValue,
          );
        },
        itemCount: player.statistics.splits.categories[2].stats.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
      ),
    );
  }
}

class EstadisticasOfensivasPlayer extends StatelessWidget {
  final AthleteCS player;

  EstadisticasOfensivasPlayer({this.player});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 3 / 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          final Stat generalStats =
          player.statistics.splits.categories[1].stats[index];
          return ItemStat(
            statName: generalStats.displayName,
            statValue: generalStats.displayValue,
          );
        },
        itemCount: player.statistics.splits.categories[1].stats.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
      ),
    );
  }
}

//
// class InfoPlayer extends StatelessWidget {
//   PlantillaController controller = Get.put(PlantillaController());
//
//   @override
//   Widget build(BuildContext context) {
//     print('===== ===== init infoPlayer ===== ===== ');
//     return GetBuilder<JugadorDetailController>(
//         init: JugadorDetailController(),
//         builder: (_) {
//           print('===== ===== init JugadorDetailController ===== ===== ');
//
//           return Column(
//             children: [
//               Padding(
//                   padding: EdgeInsets.only(top: 6),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Container(
//                         padding: EdgeInsets.only(
//                           left: 10,
//                           right: 10,
//                         ),
//                         color: Colors.yellow,
//                         child: Text("Info",
//                             style: TextStyle(
//                                 fontFamily: 'Oswald',
//                                 color: Colors.black,
//                                 fontSize: 20)),
//                       ),
// //                            Text("DISTRIBUTION", style: TextStyle( fontFamily: 'Oswald', fontSize: 12)),
// //                            Text("ATTACK", style: TextStyle(
// //                                fontFamily: 'Oswald',
// //                                fontSize: 12)),
// //                            Text("DISCIPLINE", style: TextStyle( fontFamily: 'Oswald', fontSize: 12)),
//                     ],
//                   )),
//               Container(
//                 height: 3,
//                 color: Colors.yellow,
//               ),
//               (_.loading)
//                   ? Center(
//                 child: ColorLoader(),
//               )
//                   : Column(
//                 children: [
//                   Container(
//                     child: Text(_.jugadoreDetail.descripcion1),
//                   ),
//                   Container(
//                     child: Text(_.jugadoreDetail.descripcion2),
//                   ),
//                 ],
//               ),
//               Padding(
//                   padding: EdgeInsets.only(top: 6),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Container(
//                         padding: EdgeInsets.only(
//                           left: 10,
//                           right: 10,
//                         ),
//                         color: Colors.yellow,
//                         child: Text("Trayectoria",
//                             style: TextStyle(
//                                 fontFamily: 'Oswald',
//                                 color: Colors.black,
//                                 fontSize: 20)),
//                       ),
// //                            Text("DISTRIBUTION", style: TextStyle( fontFamily: 'Oswald', fontSize: 12)),
// //                            Text("ATTACK", style: TextStyle(
// //                                fontFamily: 'Oswald',
// //                                fontSize: 12)),
// //                            Text("DISCIPLINE", style: TextStyle( fontFamily: 'Oswald', fontSize: 12)),
//                     ],
//                   )),
//               Container(
//                 height: 3,
//                 color: Colors.yellow,
//               ),
//               (_.loading2)
//                   ? Center(
//                 child: ColorLoader(),
//               )
//                   : ListView.builder(
//                 itemBuilder: (context, index) {
//                   final trayectorias = _.jugadoreDetail2[index];
//                   return Text(trayectorias);
//                 },
//                 itemCount: _.jugadoreDetail2.length,
//                 scrollDirection: Axis.vertical,
//                 shrinkWrap: true,
//                 physics: ClampingScrollPhysics(),
//               )
//             ],
//           );
//         });
//   }
// }
