import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cd_castellon/app/pages/theme/app_colors.dart';

class Watermark extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "logo2",
      child: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
          color: Get.isDarkMode ? AColors.dark : AColors.light,
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.9),
                      BlendMode.clear,
                    ),
                    image: AssetImage(
                      "images/logo.png",
                    ),
                    fit: BoxFit.cover,
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
