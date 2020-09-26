import 'package:cd_castellon/app/pages/nextPartido/tabs/alineacion.dart';
import 'package:cd_castellon/app/pages/nextPartido/tabs/info.dart';
import 'package:cd_castellon/app/pages/nextPartido/tabs/live.dart';
import 'package:cd_castellon/app/pages/nextPartido/widgets/IconMatchHeader.dart';
import 'package:cd_castellon/app/pages/widgets_general/customAppBarAction.dart';
import 'package:cd_castellon/app/pages/widgets_general/dots_loader.dart';
import 'package:cd_castellon/app/pages/widgets_general/drawer.dart';
import 'package:cd_castellon/app/pages/widgets_general/nativeAds.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'nextPartido_controller.dart';

class NextPartidoPage extends StatelessWidget {
  const NextPartidoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return GetBuilder<NextPartidoController>(
      builder: (_) => (_.isLoading == true)
          ? Center(
              child: ColorLoader(),
            )
          : Stack(
              children: [
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
                      key: _scaffoldKey,
                      drawer: AppDrawer(),
                      appBar: AppBar(
                        leading: CustomAppBarAction(
                          () => _scaffoldKey.currentState.openDrawer(),
                          Icons.menu,
                        ),
                        bottom: PreferredSize(
                            child: Container(
                              color: Colors.transparent,
                              padding: const EdgeInsets.only(
                                  top: 0, left: 8, right: 8),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 35,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: const EdgeInsets.only(
                                                left: 4.0),
                                            child: (_.partidolive.boxscore
                                                        .form[0].team.logo !=
                                                    null)
                                                ? LogoIcon(
                                                    _.partidolive.boxscore
                                                        .form[0].team.logo,
                                                    60,
                                                    false)
                                                : LogoIconAsset(
                                                    _.partidolive.boxscore
                                                        .form[0].team.id,
                                                    60,
                                                    false)),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 0, horizontal: 20),
                                          child: FittedBox(
                                            child: Text(
                                              _.partidolive.boxscore.form[0]
                                                  .team.displayName,
                                              style: TextStyle(fontSize: 14.0),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 25,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 25),
                                          child: (_.scoreHome != null)
                                              ? Text(
                                                  _.scoreHome +
                                                      " : " +
                                                      _.scoreAway,
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 14),
                                              child: Text('Minuto: ',
                                                  style: TextStyle(
                                                    fontSize: 12.0,
                                                    // fontWeight: FontWeight.bold,
                                                  )),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 14),
                                              child: Text(_.clock ?? '-',
                                                  style: TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.bold,
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 35,
                                    child: Column(
                                      children: [
                                        Padding(
                                            padding: const EdgeInsets.only(
                                                left: 4.0),
                                            child: (_.partidolive.boxscore
                                                        .form[1].team.logo !=
                                                    null)
                                                ? LogoIcon(
                                                    _.partidolive.boxscore
                                                        .form[1].team.logo,
                                                    60,
                                                    false)
                                                : LogoIconAsset(
                                                    _.partidolive.boxscore
                                                        .form[1].team.id,
                                                    60,
                                                    false)),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 0, horizontal: 20),
                                          child: FittedBox(
                                            child: Text(
                                              _.partidolive.boxscore.form[1]
                                                  .team.displayName,
                                              style: TextStyle(fontSize: 14.0),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
                                NextPartidoLive(_.partidolive),
                                NextPartidoInfo(),
                                NextPartidoAlineacion()
                              ],
                            ),
                          ),
                          CustomAd(
                            adUnitID: _.adNewsPage,
                            height: MediaQuery
                                .of(context)
                                .size
                                .height * .1,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
    );
  }
}
