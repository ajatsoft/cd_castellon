import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cd_castellon/app/pages/partido/main/main_partido_controller.dart';
import 'package:cd_castellon/app/pages/partido/clasificacion/index.dart';
import 'package:cd_castellon/app/pages/partido/estadistica.dart';
import 'package:cd_castellon/app/pages/partido/home/index.dart';
import 'package:cd_castellon/app/pages/partido/resultados/resultados_home.dart';
import 'package:cd_castellon/app/pages/theme/app_colors.dart';
import 'package:cd_castellon/app/pages/widgets_general/drawer.dart';

class MainPartidoPage extends GetWidget<MainPartidoController> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // Get.locale = Localizations.localeOf(Get.context) ?? Locale('en', 'US');
    return SafeArea(
        bottom: false,
        top: false,
        child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.linearToSrgbGamma(),
              image: AssetImage('images/Foto-web-estadio.jpg'),
            )),
            child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).canvasColor.withOpacity(0.5)),
                  child: Scaffold(
                      backgroundColor: Colors.transparent,
                      key: _scaffoldKey,
                      drawer: AppDrawer(),
                      floatingActionButtonLocation:
                          FloatingActionButtonLocation.miniStartTop,
                      floatingActionButton: FloatingActionButton(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        onPressed: () => _scaffoldKey.currentState.openDrawer(),
                        child: new Icon(
                          Icons.menu,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                      body: Obx(() => IndexedStack(
                            index: controller.currentIndex,
                            children: <Widget>[
                              PartidoHome(),
                              ResultadosTemporada(),
                              Clasificacion(),
                              EstadisticaTemporada(),
                            ],
                          )),
                      bottomNavigationBar: Obx(() => BottomNavigationBar(
                            items: [
                              BottomNavigationBarItem(
                                  icon: Icon(Icons.home),
                                  title: Text("Inicio")),
                              BottomNavigationBarItem(
                                  icon: Icon(Icons.calendar_today),
                                  title: Text("Resultados")),

                              BottomNavigationBarItem(
                                  icon: Icon(Icons.clear_all),
                                  title: Text("Clasificacion")),
                              BottomNavigationBarItem(
                                  icon: Icon(Icons.insert_chart),
                                  title: Text("Estadistica")),
                            ],
                        currentIndex: controller.currentIndex,
                        onTap: controller.onTabTapped,
                        unselectedItemColor: Colors.grey,
                        selectedItemColor: AColors.primary,
                        unselectedFontSize: 10,
                        selectedFontSize: 14,
                          ))),
                ))));
  }

  Widget buildListItem(IconData icon, String title, BuildContext context,
      void Function() onTap) {
    return GestureDetector(
      child: ListTile(
        leading: Icon(
          icon,
          size: 30,
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.headline1,
          // style: Get.textTheme.headline1, //不管用,不知道原因
        ),
      ),
      onTap: onTap,
    );
  }

  Container buildTopView(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      color: Theme.of(context).primaryColor,
      alignment: Alignment(0, 0.72),
      child: Text(
        "Let's Go !!!".tr,
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    );
  }
}
