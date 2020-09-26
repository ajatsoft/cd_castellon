import 'dart:ui';

import 'package:cd_castellon/app/data/model/partido.dart';
import 'package:cd_castellon/app/pages/temporada/partido_detail/tabs/partido_alineacion.dart';
import 'package:cd_castellon/app/pages/temporada/partido_detail/tabs/partido_info.dart';
import 'package:cd_castellon/app/pages/temporada/partido_detail/tabs/partido_live.dart';
import 'package:cd_castellon/app/pages/temporada/partido_detail/widgets/partido_detail_header.dart';
import 'package:cd_castellon/app/pages/temporada/resultadosTemporada_controller.dart';
import 'package:cd_castellon/app/pages/widgets_general/dots_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PartidoDetail extends StatelessWidget {
  final ResultadosController controller = Get.put(ResultadosController());

  @override
  Widget build(BuildContext context) {
    Event partido = Get.arguments;

    return Obx(() {
      if (controller.isLoading) {
        return Center(
          child: ColorLoader(),
        );
      }

      return SafeArea(
        bottom: false,
        top: false,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.linearToSrgbGamma(),
              image: AssetImage('assets/images/Foto-web-estadio.jpg'),
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor.withOpacity(0.5)),
              child: Stack(children: [
                DefaultTabController(
                  initialIndex: 1,
                  length: 3,
                  child: Scaffold(
                    appBar: AppBar(
                      bottom: PreferredSize(
                          child: MatchHead(partido),
                          preferredSize: Size.fromHeight(80.0)),
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      iconTheme: IconThemeData(
                        color: Get.isDarkMode ? Colors.white70 : Colors.black54,
                      ),
                    ),
                    backgroundColor: Colors.transparent,
                    body: Column(children: <Widget>[
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
                                  child: Text("Alineacion",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6)),
                              Tab(
                                  child: Text("Info",
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
                            PartidoLive(partido),
                            PartidoAlineacion(partido),
                            PartidoInfo(partido),
                          ],
                          // controller: _tabController,
                        ),
                      ),
                    ]),
                  ),
                ),
              ]),
            ),
          ),
        ),
      );
    });
  }
}
