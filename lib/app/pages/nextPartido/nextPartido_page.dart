import 'package:cd_castellon/app/pages/nextPartido/widgets/alineacion.dart';
import 'package:cd_castellon/app/pages/nextPartido/widgets/info.dart';
import 'package:cd_castellon/app/pages/nextPartido/widgets/live.dart';
import 'package:cd_castellon/app/pages/widgets_general/dots_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'nextPartido_controller.dart';

class NextPartidoPage extends StatelessWidget {
  const NextPartidoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NextPartidoController>(
      builder: (_) => (_.isLoading == true)
          ? Center(
              child: ColorLoader(),
            )
          : Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 180.0),
                  child: Container(child: MatchHead()),
                ),
                DefaultTabController(
                  initialIndex: 1,
                  length: 3,
                  child: SmartRefresher(
                    header: WaterDropMaterialHeader(),
                    controller: _.refreshController,
                    enablePullUp: false,
                    enablePullDown: true,
                    onRefresh: () => _.refresh(),
                    // onLoading: () => controller.load(),
                    child: Scaffold(
                      appBar: AppBar(
                        bottom: PreferredSize(
                            child: MatchHead(),
                            preferredSize: Size.fromHeight(80.0)),
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        iconTheme: IconThemeData(
                          color:
                              Get.isDarkMode ? Colors.white70 : Colors.black54,
                        ),
                      ),
                      backgroundColor: Get.isDarkMode
                          ? Color(0xFF1E1E1E)
                          : Color(0xFFe0e5ec),
                      body: Column(
                        children: <Widget>[
                          Container(
                            constraints: BoxConstraints(maxHeight: 50.0),
                            child: Material(
                              color: Colors.transparent,
                              child: TabBar(
                                isScrollable: true,
                                // labelPadding: EdgeInsets.symmetric(horizontal: 20),
                                tabs: [
                                  Tab(
                                      child: Text("Live",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6)),
                                  Tab(
                                      child: Text("Info",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6)),
                                  Tab(
                                      child: Text("Alineacion",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6)),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: TabBarView(
                              children: [
                                // (_.modelNexPartido == null) ?
                                NextPartidoLive(_.partidolive),

                                // : NextPartidoLive2(),
                                // (_.modelNexPartido == null) ?
                                NextPartidoInfo(),
                                // : NextPartidoInfo2(),
                                // (_.modelNexPartido == null) ?
                                NextPartidoAlineacion()
                                // : NextPartidoAlineacion2(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // AppBar(
                  //   bottom: TabBar,
                  //   backgroundColor: Colors.transparent,
                  //   elevation: 0,
                  //   iconTheme: IconThemeData(
                  //     color: Get.isDarkMode ? Colors.white70 : Colors.black54,
                )
              ],
            ),
    );
  }
}

class MatchHead extends GetView<NextPartidoController> {
  Widget buildTeamHome() {
    return Expanded(
      flex: 4,
      child: GestureDetector(
        onTap: () {
//          Navigator.push(
//            context,
//            MaterialPageRoute(builder: (context) => TeamDetail(team)),
//          );
        },
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child:
                    (controller.partidolive.boxscore.form[0].team.logo != null)
                        ? LogoIcon(
                            controller.partidolive.boxscore.form[0].team.logo,
                            60,
                            false)
                        : LogoIconAsset(
                            controller.partidolive.boxscore.form[0].team.id,
                            60,
                            false)),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
              child: Text(
                controller.partidolive.boxscore.form[0].team.displayName,
                style: TextStyle(fontSize: 14.0),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildTeamAway() {
    return Expanded(
      flex: 4,
      child: GestureDetector(
        onTap: () {
//          Navigator.push(
//            context,
//            MaterialPageRoute(builder: (context) => TeamDetail(team)),
//          );
        },
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child:
                    (controller.partidolive.boxscore.form[1].team.logo != null)
                        ? LogoIcon(
                            controller.partidolive.boxscore.form[1].team.logo,
                            60,
                            false)
                        : LogoIconAsset(
                            controller.partidolive.boxscore.form[1].team.id,
                            60,
                            false)),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
              child: Text(
                controller.partidolive.boxscore.form[1].team.displayName,
                style: TextStyle(fontSize: 14.0),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.isLoading) {
        return Center(
          child: ColorLoader(),
        );
      }

      if (controller.partidolive == null) {
        return Text('esperando API request.');
      }
      return Container(
        color: Colors.transparent,
        padding: const EdgeInsets.only(top: 0, left: 8, right: 8),
        child: Row(
          children: [
            buildTeamHome(),
            MatchDetailStatus(),
            buildTeamAway(),
          ],
        ),
      );
    });
  }
}

class MatchDetailStatus extends GetView<NextPartidoController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: (controller.scoreHome != null)
              ? Text(controller.scoreHome + " : " + controller.scoreAway,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ))
              : Text('' + " : " + '',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  )),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 14),
              child: Text('Minuto: ',
                  style: TextStyle(
                    fontSize: 16.0,
                    // fontWeight: FontWeight.bold,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 14),
              child: Text(
                  (controller.nexPartido.status == 'in')
                      ? controller.partidolive.header.competitions[0].status
                          .displayClock
                      : '-',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ],
        ),
      ],
    );
  }
}

class LogoIcon extends StatelessWidget {
  final String url;
  final double height;
  final bool allowSvg;

  const LogoIcon(this.url, this.height, this.allowSvg);

  @override
  Widget build(BuildContext context) {
    try {
      if (url != null && url.isNotEmpty) {
        if (allowSvg && url.toLowerCase().endsWith('.svg')) {
          return Image.network(
            url,
            height: height,
//             placeholderBuilder: (BuildContext context) => Container(
// //                padding: const EdgeInsets.all(30.0),
//                 child: const CircularProgressIndicator()),
          );
        }
        if (url.toLowerCase().endsWith('.png')) {
          return Image.network(
            url,
            height: height,
          );
        }
      }
    } catch (e) {
      print('Exception in _buildImage for $url: $e');
    }

    return CircleAvatar(
      backgroundColor: Colors.grey,
      maxRadius: height / 2,
    );
  }
}

class LogoIconAsset extends StatelessWidget {
  final String team;
  final double height;
  final bool allowSvg;

  const LogoIconAsset(this.team, this.height, this.allowSvg);

  @override
  Widget build(BuildContext context) {
    try {
      if (team == "4438") {
        return Image.asset(
          'assets/images/castellon.png',
          height: height,
        );
      } else if (team == "5419") {
        return Image.asset(
          'assets/images/carthagene.png',
          height: height,
        );
      } else if (team == "11487") {
        return Image.asset(
          'assets/images/sabadell.png',
          height: height,
        );
      } else {
        return Image.asset(
          'assets/images/ud-logrones.png',
          height: height,
        );
      }
    } catch (e) {
      print('Exception in _buildImage for : $e');
    }
    return CircleAvatar(
      backgroundColor: Colors.grey,
      maxRadius: height / 2,
    );
  }
}
