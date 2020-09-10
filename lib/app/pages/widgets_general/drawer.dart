import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cd_castellon/app/config.dart';
import 'package:cd_castellon/app/controller/theme_controller.dart';

class AppDrawer extends GetView {
  @override
  Widget build(BuildContext context) {
    return Container(
      key: Key('container-drawer'),
      width: 260,
      child: Drawer(
          child: Container(
        height: Get.height,
        child: Column(
          children: <Widget>[
            FittedBox(child: CustomDrawerHeaderWidget()),
            ListTile(
              onTap: () {
                Get.toNamed("/news");
              },
              title: Text("Noticias"),
              trailing: Icon(Icons.fiber_new),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Get.toNamed("/plantilla");
              },
              title: Text("Plantilla"),
              trailing: Icon(Icons.supervised_user_circle),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Get.toNamed("/mainPartido");
              },
              title: Text("Temporada"),
              trailing: Icon(Icons.videogame_asset),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Get.toNamed("/aficion");
              },
              title: Text("Patrocinadores"),
              trailing: Icon(Icons.public),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Get.offAllNamed("/");
              },
              title: Text("Contacto"),
              trailing: Icon(Icons.alternate_email),
            ),
            Divider(),
          ],
        ),
      )),
    );
  }
}

class CustomDrawerHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(
        width: 220,
        height: 50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "images/logo.png",
                    ),
                  ),
                ),
              ),
              FittedBox(
                child: Text(
                  'CD CASTELLON',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ]),
            FittedBox(
              child: Text(
                'PAM PAM ORELLUT!!!',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            GestureDetector(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      child: isModoDark
                          ? Text('Tema Claro')
                          : Text('Tema Oscuro')),
                  SizedBox(width: 10.0,),
                  Icon(
                    Icons.brightness_4,
                    color: isModoDark ? Colors.white : Colors.black,
                  ),
                ],
              ),
              onTap: () {
                ThemeController.to.modoDark.value =
                !ThemeController.to.modoDark.value;

                if (ThemeController.to.modoDark.value) {
                  ThemeController.to.changeTheme(ThemeMode.dark);
                } else {
                  ThemeController.to.changeTheme(ThemeMode.light);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
