import 'package:cd_castellon/app/data/model/patrocinadoresModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListItem extends StatelessWidget {
  final String index;
  final Empresa product;

  ListItem(this.index, this.product);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Get.toNamed("/patrocinadores/$index", arguments: this.product),
      child: Container(
        width: Get.width,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Hero(
                tag: "product_image_$index",
                child: Container(
                    constraints: BoxConstraints(maxWidth: Get.width / 2),
                    child: Image.network(this.product.urlImg)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
