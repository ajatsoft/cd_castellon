import 'package:cd_castellon/app/pages/patrocinadores/patrocinadores_detail/patrocinadoresDetail_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class BottonLink extends GetWidget<PatrocinadoresDetailController> {
  final String web;

  BottonLink(this.web);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Get.isDarkMode ? Colors.white10 : Colors.black12,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Visitanos en:",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  web,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 50,
              height: 42,
              child: RawMaterialButton(
                onPressed: () => controller.launchInBrowser('https://$web'),
                fillColor: Colors.black,
                elevation: 0,
                disabledElevation: 0,
                focusElevation: 0,
                highlightElevation: 0,
                hoverElevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SizedBox.expand(
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: Icon(
                          FontAwesomeIcons.globe,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        bottom: 4,
                        right: 6,
                        child: Icon(
                          FontAwesomeIcons.mousePointer,
                          size: 14,
                          color: Colors.green,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
