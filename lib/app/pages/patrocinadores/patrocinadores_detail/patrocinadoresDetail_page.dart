import 'package:cd_castellon/app/data/model/patrocinadoresModel.dart';
import 'package:cd_castellon/app/pages/patrocinadores/patrocinadores_detail/widgets/bottonLink.dart';
import 'package:cd_castellon/app/pages/theme/app_theme.dart';
import 'package:cd_castellon/app/pages/widgets_general/customAppBarAction.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'patrocinadoresDetail_controller.dart';
import 'widgets/about.dart';

class PatrocinadoresDetail extends StatelessWidget {
  final String index = Get.parameters['index'];
  final Empresa product = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PatrocinadoresDetailController>(
      init: PatrocinadoresDetailController(),
      builder: (controller) => Scaffold(
        appBar: AppBar(
          leading: CustomAppBarAction(
            () => Get.back(),
            Icons.arrow_back_ios,
          ),
          backgroundColor: AppThemes.yellowCS,
          elevation: 0,
        ),
        body: SafeArea(
          child: Container(
            height: Get.height,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Hero(
                        tag: "background_container",
                        child: Container(
                          width: Get.width,
                          height: Get.width - 50,
                          decoration: BoxDecoration(
                            color: AppThemes.yellowCS,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.elliptical(30, 25),
                              bottomRight: Radius.elliptical(30, 25),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: Get.width - 50,
                            alignment: Alignment.center,
                            child: Hero(
                              tag: "product_image_$index",
                              child: Image.network(this.product.urlImg),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  AboutProduct(this.product),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottonLink(
          this.product.web,
          // controller.quantity.value,
        ),
      ),
    );
  }
}
