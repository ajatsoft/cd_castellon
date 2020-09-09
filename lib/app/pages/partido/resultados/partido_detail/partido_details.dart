import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cd_castellon/app/pages/partido/resultados/resultados_controller.dart';
import 'package:cd_castellon/app/data/model/partido.dart';
import 'package:cd_castellon/app/pages/partido/resultados/partido_detail/tabs/partido_alineacion.dart';
import 'package:cd_castellon/app/pages/partido/resultados/partido_detail/tabs/partido_estadisticas.dart';
import 'package:cd_castellon/app/pages/partido/resultados/partido_detail/tabs/partido_live.dart';
import 'package:cd_castellon/app/pages/partido/resultados/partido_detail/tabs/partido_resumen.dart';
import 'package:cd_castellon/app/pages/partido/resultados/partido_detail/widgets/partido_detail_header.dart';

class PartidoDetail extends StatelessWidget {
  final ResultadosController controller = Get.put(ResultadosController());

  @override
  Widget build(BuildContext context) {
    Event partido = Get.arguments;
    String myTitle = "";

    ScrollController _scrollController;
    TabController _tabController;

    return SafeArea(
        bottom: false,
        top: false,
        child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.linearToSrgbGamma(),
                    image: NetworkImage(
                        "https://www.eysmunicipales.es/static/media/images/actualidad/el-estadio-municipal-de-castalia-en-castellon-contara-con-leds-en-sus-cuatro-torres-de-iluminacion.jpg"))),
            child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).canvasColor.withOpacity(0.5)),
                  child: Scaffold(
                    extendBody: true,
                    backgroundColor: Colors.transparent,
                    body: DefaultTabController(
                      length: 3,
                      child: NestedScrollView(
                        controller: _scrollController,
                        headerSliverBuilder:
                            (BuildContext context, bool innerBoxIsScrolled) {
                          return <Widget>[
                            SliverAppBar(
                              backgroundColor: Colors.transparent,
                              expandedHeight: 110.0,
                              floating: true,
                              pinned: true,
                              flexibleSpace: FlexibleSpaceBar(
                                  centerTitle: true,
                                  title: Text(myTitle),
                                  // title: MatchHead(match), //Text(myTitle),
                                  collapseMode: CollapseMode.parallax,
                                  background: MatchHead(partido)),
                            ),
                            SliverPersistentHeader(
                              delegate: _SliverAppBarDelegate(
                                TabBar(
                                  labelPadding: EdgeInsets.symmetric(horizontal: 20),
                                  isScrollable: true,
                                  indicatorColor: Colors.white,
                                  controller: _tabController,
                                  tabs: <Widget>[
                                    Tab(
                                        child: Text("Live",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6)),
                                    Tab(
                                        child: Text("Alineacion",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6)),
                                    Tab(
                                        child: Text("Resumen",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6)),
                                  ],
                                ),
                              ),
                              pinned: true,
                            ),
                          ];
                        },
                        body:  TabBarView(
                          children: [
                            PartidoLive(partido),
                            PartidoAlineacion(partido),
                            PartidoEstadisticas(partido),
                          ],
                          controller: _tabController,
                        ),
                      ),
                    ),
                  ),
                ))));


  }
}
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("Details"),
//        elevation: 0,
//        centerTitle: true,
//      ),
//      body: Center(
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: [
//              Text(
//                '${jornada.teamAway}',
//                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
//              ),
//              SizedBox(
//                height: 35,
//              ),
//              Text(
//                "Total Confirmed",
//                style: TextStyle(
//                  fontSize: 25,
//                ),
//              ),
//              Text(
//                '${jornada.teamHome}',
//                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
//              ),
//              SizedBox(
//                height: 10,
//              ),
//              Text(
//                "Total Deaths",
//                style: TextStyle(
//                  fontSize: 25,
//                ),
//              ),
//              Text(
//                '${jornada.scoreAway}',
//                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
//              ),
//              SizedBox(
//                height: 10,
//              ),
//              Text(
//                "Total Recovered",
//                style: TextStyle(
//                  fontSize: 25,
//                ),
//              ),
//              Text(
//                '${jornada.scoreHome}',
//                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
//              ),
//            ],
//          )),
//    );
//class MatchDetailStatus extends StatelessWidget {
////  final Models.Match match;
//
//  const MatchDetailStatus(this.match);
//
//  @override
//  Widget build(BuildContext context) {
//    switch (match.status) {
////      case Models.MatchStatus.Postponed:
////      case Models.MatchStatus.Cancelled:
////      case Models.MatchStatus.Suspended:
//        {
//          var index = match.status.toString().lastIndexOf('.') + 1;
//          var status = match.status.toString().substring(index);
//          return Text(
//            '!\n$status',
//            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14, color: Colors.orange),
//            textAlign: TextAlign.center,
//          );
//        }
//        break;
//
////      case Models.MatchStatus.Scheduled:
////        {
////          return Text(match.time);
////        }
////        break;
////
////      case Models.MatchStatus.Finished:
////      case Models.MatchStatus.In_Play:
//        {
//          return Column(
//            mainAxisAlignment: MainAxisAlignment.start,
//            crossAxisAlignment: CrossAxisAlignment.center,
//            children: [
//              Padding(
//                padding: const EdgeInsets.only(top: 10),
//                child: Text(match.score.home.toString() + " : " + match.score.away.toString(), style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.white)),
//              ),
//            ],
//          );
//        }
//        break;
//
//      default:
//        {
//          return Text('');
//        }
//        break;
//    }
//  }
//}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      color: Colors.transparent,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
