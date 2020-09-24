import 'package:carousel_slider/carousel_slider.dart';
import 'package:cd_castellon/app/data/model/patrocinadoresModel.dart';
import 'package:cd_castellon/app/pages/patrocinadores/patrocinadores_controller.dart';
import 'package:cd_castellon/app/pages/patrocinadores/widgets/item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'nav_button.dart';

class ListProducts extends StatelessWidget {
  final PatrocinadoresController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        CarouselSlider(
          options: CarouselOptions(
            height: Get.height,
            viewportFraction: 0.9,
            enableInfiniteScroll: false,
            enlargeCenterPage: true,
            onPageChanged: (int index, _) => controller.setSelectedIndex(index),
          ),
          carouselController: controller.carouselController,
          items: controller.products.map((Empresa product) {
            return Builder(
              builder: (BuildContext context) {
                return ListItem(
                    controller.products.value.indexOf(product).toString(),
                    product);
              },
            );
          }).toList(),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Padding(
            padding: EdgeInsets.only(left: 15, right: 15.0, top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                NavButton(
                  FontAwesomeIcons.chevronCircleLeft,
                  controller.carouselController.previousPage,
                ),
                Text('Mas info pulsando en imagen'),
                NavButton(
                  FontAwesomeIcons.chevronCircleRight,
                  controller.carouselController.nextPage,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
