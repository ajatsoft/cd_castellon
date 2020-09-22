import 'package:cd_castellon/app/pages/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Watermark extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "logo2",
      child: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
          color: Get.isDarkMode ? AppThemes.blackCS : AppThemes.whiteCS,
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
                      "assets/images/logo.png",
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
