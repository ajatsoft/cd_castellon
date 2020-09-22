import 'dart:ui';
import 'package:cd_castellon/app/pages/theme/app_theme.dart';
import 'package:cd_castellon/app/pages/widgets_general/dots_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';

import 'package:cd_castellon/app/pages/plantilla/plantilla_controller.dart';
import 'package:cd_castellon/app/pages/plantilla/tabs/cuerpo_tecnico.dart';
import 'package:cd_castellon/app/pages/plantilla/tabs/plantilla.dart';
import 'package:cd_castellon/app/pages/theme/app_colors.dart';
import 'package:cd_castellon/app/pages/widgets_general/appBar.dart';
import 'package:cd_castellon/app/pages/widgets_general/customAppBarAction.dart';
import 'package:cd_castellon/app/pages/widgets_general/drawer.dart';

class PlantillaPage extends GetView<PlantillaController> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.isLoading) {
        return Center(
          child: ColorLoader(),
        );
      }

      if (controller.modelJugadores == null) {
        return Text('Error de red');
      }

      return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/logo.png"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.srgbToLinearGamma(),
            ),
          ),
          child: Scaffold(
              key: _scaffoldKey,
              resizeToAvoidBottomPadding: false,
              drawer: AppDrawer(),
              appBar: CustomAppBar(
                "Plantilla",
                leadings: [
                  CustomAppBarAction(
                        () => _scaffoldKey.currentState.openDrawer(),
                    Icons.menu,
                  )
                ],
              ),
              body: Obx(() =>
                  IndexedStack(
                    index: controller.currentIndex,
                    children: <Widget>[
                      PlantillaTab(),
                      CuerpoTecTab(),
                    ],
                  )),
              bottomNavigationBar: Obx(() =>
                  BottomNavigationBar(
                    currentIndex: controller.currentIndex,
                  onTap: controller.onTabTapped,
                  unselectedItemColor: Colors.grey,
                  selectedItemColor: AppThemes.yellowCS,
                  unselectedFontSize: 10,
                  selectedFontSize: 14,
                  items: [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.people), title: Text("Plantilla")),

                    BottomNavigationBarItem(
                        icon: Icon(Icons.perm_contact_calendar),
                        title: Text("Cuerpo Técnico")),

                    // FFNavigationBarItem(
                      //   iconData: Icons.gps_fixed,
                      //   label: 'Otros',
                      // )
                    ],

                  ),
              )
          ));
    });
  }
}