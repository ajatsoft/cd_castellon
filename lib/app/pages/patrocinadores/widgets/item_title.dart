import 'package:cd_castellon/app/pages/patrocinadores/patrocinadores_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemTitle extends StatelessWidget {
  final PatrocinadoresController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return (controller.products.value.length == 0)
        ? Container()
        : Obx(
            () => AnimatedOpacity(
              opacity: controller.visibleTitle.value ? 1.0 : 0.0,
              duration: Duration(milliseconds: 250),
              onEnd: controller.updateTitleProduct,
              child: Column(
                children: <Widget>[
                  Text(this.controller.titleSubText.value),
                  SizedBox(height: 10),
                  Container(
                    height: 100,
                    child: Text(
                      this.controller.titleName.value,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                        height: 0.98,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
