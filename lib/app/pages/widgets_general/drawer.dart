import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cd_castellon/app/config.dart';
import 'package:cd_castellon/app/controller/global_controller.dart';
import 'package:cd_castellon/app/controller/theme_controller.dart';
import 'package:cd_castellon/app/pages/theme/app_colors.dart';

class AppDrawer extends GetView {
  @override
  Widget build(BuildContext context) {
    return Container(
      key: Key('container-drawer'),
      width: 250,
      child: Drawer(
          child: Container(
        height: Get.height,
        child: ListView(
          children: <Widget>[
            CustomDrawerHeaderWidget(),
            ListTile(
              onTap: () {
                Get.toNamed("/news");
              },
              title: Text("Noticias"),
              trailing: Icon(Icons.camera),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Get.toNamed("/plantilla");
              },
              title: Text("Plantilla"),
              trailing: Icon(Icons.swap_horizontal_circle),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Get.toNamed("/mainPartido");
              },
              title: Text("Temporada"),
              trailing: Icon(Icons.exit_to_app),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Get.toNamed("/aficion");

              },
              title: Text("Aficion"),
              trailing: Icon(Icons.exit_to_app),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Get.offAllNamed("/");
              },
              title: Text("Temporada"),
              trailing: Icon(Icons.exit_to_app),
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
        width: 200,
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
              Text(
                'CD CASTELLON',
                style: TextStyle(fontSize: 20, ),
              ),

            ]),
            Text(
              'PAM PAM ORELLUT!!!',
              style: TextStyle(fontSize: 16,),
            ),
            Container(child: IconButton(
                icon: Icon(
                  Icons.lightbulb_outline,
                  color: isModoDark ? Colors.white : Colors.black,
                ),
                onPressed: () {
                  ThemeController.to.modoDark.value = !ThemeController.to.modoDark.value;

                  if (ThemeController.to.modoDark.value) {
                    ThemeController.to.changeTheme(ThemeMode.dark);
                  } else {
                    ThemeController.to.changeTheme(ThemeMode.light);
                  }
                }),),
          ],
        ),
      ),
    );
  }
}


