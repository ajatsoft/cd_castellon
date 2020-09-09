import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cd_castellon/app/pages/partido/resultados/resultados_controller.dart';
import 'package:cd_castellon/app/pages/theme/app_colors.dart';

class CustomBottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.transparent,
        clipBehavior: Clip.hardEdge,
        shape: CircularNotchedRectangle(),
        child: GetX<ResultadosController>(
          builder: (_) => BottomNavigationBar(
            backgroundColor: Colors.transparent,
              type: BottomNavigationBarType.shifting,
              currentIndex: _.screen,
              onTap: (index) => _.screen = index,
              fixedColor: AColors.primary,
              unselectedItemColor: Colors.grey,
              showUnselectedLabels: true,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), title: Text("Home")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.calendar_today), title: Text("Resultados")),

                BottomNavigationBarItem(
                    icon: Icon(Icons.filter_1), title: Text("Clasificacion")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.insert_chart), title: Text("Estadistica")),
              ]),
        ));
  }
}