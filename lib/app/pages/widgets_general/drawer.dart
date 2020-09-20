import 'package:cd_castellon/app/config.dart';
import 'package:cd_castellon/app/controller/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class AppDrawer extends GetView {
  @override
  Widget build(BuildContext context) {
    return Container(
      key: Key('container-drawer'),
      width: 260,
      height: Get.height,
      child: Drawer(
          child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: <Widget>[
                FittedBox(child: CustomDrawerHeaderWidget()),
                Stack(
                  children: [
                    ListTile(
                      onTap: () {
                        Get.offAndToNamed("/news");
                      },
                      title: Text(
                        "Noticias",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(FontAwesomeIcons.newspaper),
                    ),
                    Opacity(
                      opacity: 0.1,
                      child: Container(
                        width: Get.width,
                        height: 60,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/noticias.jpg"),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Divider(height: 1, indent: 1.0, endIndent: 1.0),
                GestureDetector(
                  onTap: () {
                    Get.offAndToNamed("/nextpartido");
                  },
                  child: Stack(
                    children: [
                      ListTile(
                        title: Text(
                          "Próximo partido",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(FontAwesomeIcons.futbol),
                      ),
                      Opacity(
                        opacity: 0.1,
                        child: Container(
                          width: Get.width,
                          height: 60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage("assets/images/campo_futbol.jpg"),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Divider(height: 1, indent: 100.0, endIndent: 100.0),
                GestureDetector(
                  onTap: () {
                    Get.offAndToNamed("/clasificacion");
                  },
                  child: Stack(
                    children: [
                      ListTile(
                        title: Text(
                          "Clasificación",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(FontAwesomeIcons.list),
                      ),
                      Opacity(
                        opacity: 0.1,
                        child: Container(
                          width: Get.width,
                          height: 60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage("assets/images/campo_futbol.jpg"),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Divider(height: 1, indent: 100.0, endIndent: 100.0),
                GestureDetector(
                  onTap: () {
                    Get.offAndToNamed("/resultadosTemporada");
                  },
                  child: Stack(
                    children: [
                      ListTile(
                        title: Text(
                          "Resultados Temporada",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(FontAwesomeIcons.calendar),
                      ),
                      Opacity(
                        opacity: 0.1,
                        child: Container(
                          width: Get.width,
                          height: 60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage("assets/images/campo_futbol.jpg"),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Divider(height: 1, indent: 1.0, endIndent: 1.0),
                GestureDetector(
                  onTap: () {
                    Get.offAndToNamed("/plantilla");
                  },
                  child: Stack(
                    children: [
                      ListTile(
                        title: Text(
                          "Plantilla",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(FontAwesomeIcons.userFriends),
                      ),
                      Opacity(
                        opacity: 0.1,
                        child: Container(
                          width: Get.width,
                          height: 60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/plantilla.jpeg"),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Divider(height: 1, indent: 1.0, endIndent: 1.0),
                GestureDetector(
                  onTap: () {
                    Get.offAndToNamed("/patrocinadores");
                  },
                  child: Stack(
                    children: [
                      ListTile(
                        title: Text(
                          "Patrocinadores",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(FontAwesomeIcons.moneyBill),
                      ),
                      Opacity(
                        opacity: 0.1,
                        child: Container(
                          width: Get.width,
                          height: 60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "assets/images/patrocinadores.jpeg"),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Divider(height: 1, indent: 1.0, endIndent: 1.0),
                GestureDetector(
                  onTap: () {
                    Get.offAndToNamed("/contacto");
                  },
                  child: Stack(
                    children: [
                      ListTile(
                        title: Text(
                          "Contacto",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(Icons.alternate_email),
                      ),
                      Opacity(
                        opacity: 0.1,
                        child: Container(
                          width: Get.width,
                          height: 60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/contacto.jpg"),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Divider(height: 1, indent: 1.0, endIndent: 1.0),
                SizedBox(
                  height: 32,
                ),
              ],
            ),
            Column(
              children: [
                Divider(height: 1, indent: 100.0, endIndent: 100.0),
                GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Cambiar a: '),
                      Container(
                          child: isModoDark
                              ? Text('Tema Claro')
                              : Text('Tema Oscuro')),
                      SizedBox(
                        width: 8.0,
                      ),
                      Icon(
                        Icons.brightness_4,
                        color: isModoDark ? Colors.white : Colors.black,
                      ),
                    ],
                  ),
                  onTap: () {
                    Get.offAndToNamed("/news");
                    ThemeController.to.modoDark.value =
                        !ThemeController.to.modoDark.value;
                    if (ThemeController.to.modoDark.value) {
                      ThemeController.to.changeTheme(ThemeMode.dark);
                    } else {
                      ThemeController.to.changeTheme(ThemeMode.light);
                    }
                  },
                ),
                Divider(height: 1, indent: 100.0, endIndent: 100.0),
                SizedBox(
                  height: 12.0,
                )
              ],
            ),
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
                      "assets/images/logo.png",
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
          ],
        ),
      ),
    );
  }
}
