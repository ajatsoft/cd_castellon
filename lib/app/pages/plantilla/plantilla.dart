import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';

import 'package:cd_castellon/app/controller/plantilla_controller.dart';
import 'package:cd_castellon/app/pages/plantilla/tabs/cuerpo_tecnico.dart';
import 'package:cd_castellon/app/pages/plantilla/tabs/otro.dart';
import 'package:cd_castellon/app/pages/plantilla/tabs/plantilla.dart';
import 'package:cd_castellon/app/pages/theme/app_colors.dart';
import 'package:cd_castellon/app/pages/widgets_general/appBar.dart';
import 'package:cd_castellon/app/pages/widgets_general/customAppBarAction.dart';
import 'package:cd_castellon/app/pages/widgets_general/drawer.dart';

class PlantillaPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


  //
  final List<Widget> _children = [
    PlantillaTab(),
    CuerpoTecTab(),
    OtroTab(),
  ];

  @override
  Widget build(BuildContext context) {
    print("CONSTRUIDO");

    return GetBuilder<PlantillaController>(
        init: PlantillaController(),
        builder: (_) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/logo.png"),
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
              body: _children[_.index],
              bottomNavigationBar: GetBuilder<PlantillaController>(
                  init: PlantillaController(),
                  builder: (_) {
                    return FFNavigationBar(
                      theme: FFNavigationBarTheme(
                        itemWidth: 40,
                        barHeight: 40,
                        barBackgroundColor: Theme
                            .of(context)
                            .backgroundColor,
                        selectedItemBorderColor: AColors.primary,
                        selectedItemBackgroundColor: AColors.accent,
                        selectedItemIconColor: Colors.white,
                        selectedItemLabelColor: Theme
                            .of(context)
                            .textTheme
                            .headline5
                            .color,
                      ),
                      onSelectTab: (index) {
                        _.menu(index);
                      },
                      selectedIndex: _.index,
                      items: [
                        FFNavigationBarItem(
                          iconData: Icons.local_hospital,
                          label: 'Plantilla',
                        ),
                        FFNavigationBarItem(
                          iconData: Icons.local_hospital,
                          label: 'Cuerpo Técnico',
                        ),
                        FFNavigationBarItem(
                          iconData: Icons.gps_fixed,
                          label: 'Otros',
                        )
                      ],
                    );
                  }),
            ),
          );
        });
  }

}