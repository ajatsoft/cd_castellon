import 'package:cd_castellon/app/pages/widgets_general/dots_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cd_castellon/app/pages/partido/home/widget/alineacion.dart';
import 'package:cd_castellon/app/pages/partido/home/widget/info.dart';
import 'package:cd_castellon/app/pages/partido/home/widget/live.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../config.dart';
import 'controller.dart';

class PartidoHome extends GetView<PartidoHomeController> {

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.isLoading) {
        return Center(
          child: ColorLoader(),
        );
      }

      if (controller.competition == null) {
        return Text('esperando API request.');
      }
      return  SmartRefresher(
        header: WaterDropMaterialHeader(),

        controller: controller.refreshController,
        enablePullUp: false,
        enablePullDown: true,
        onRefresh: () => controller.refresh(),
        // onLoading: () => controller.load(),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height * 0.17),
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.06),
              child: MatchHead(),
            ),
          ),
          body: DefaultTabController(
            initialIndex: 1,
            length: 3,
            child: Column(
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
                                style: Theme.of(context).textTheme.headline6)),
                        Tab(
                            child: Text("Info",
                                style: Theme.of(context).textTheme.headline6)),
                        Tab(
                            child: Text("Alineacion",
                                style: Theme.of(context).textTheme.headline6)),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      PartidoCSLive(controller.partido),
                      PartidoCSInfo(),
                      PartidoCSAlineacion(),
                    ],
                  ),
                ),
              ],
            ),
          ),


        ),
      );
    });
  }
}


class MatchHead extends GetView<PartidoHomeController> {

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
                padding:
                const EdgeInsets.only(left: 4.0),
                child: (controller.partido.boxscore.form[0].team.logo != null)
                    ? LogoIcon(
                    controller.partido.boxscore.form[0].team.logo, 60, false)
                    : LogoIconAsset(
                    controller.partido.boxscore.form[0].team.id, 60, false)),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
              child: Text(
                controller.partido.boxscore.form[0].team.displayName,
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
                padding:
                const EdgeInsets.only(left: 4.0),
                child: (controller.partido.boxscore.form[1].team.logo != null)
                    ? LogoIcon(controller.partido.boxscore.form[1].team.logo, 60, false)
                    : LogoIconAsset(controller.partido.boxscore.form[1].team.id, 60, false)),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
              child: Text(
                controller.partido.boxscore.form[1].team.displayName,
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

      if (controller.partido == null) {
        return Text('esperando API request.');
      }
      return Container(
        color: Colors.transparent,
        padding: const EdgeInsets.only(
            top: 40, left: defaultPadding, right: defaultPadding),
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

class MatchDetailStatus extends GetView<PartidoHomeController> {


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child:
          (controller.scoreHome != null)

              ? Text(controller.scoreHome + " : " +
              controller.scoreAway,
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold,))
              : Text('' + " : " + '',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold,)),
        ),
      ],
    );
  }}


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
          'images/castellon.png',
          height: height,
        );
      } else if (team == "5419") {
        return Image.asset(
          'images/carthagene.png',
          height: height,
        );
      } else if (team == "11487") {
        return Image.asset(
          'images/sabadell.png',
          height: height,
        );
      } else {
        return Image.asset(
          'images/ud-logrones.png',
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

