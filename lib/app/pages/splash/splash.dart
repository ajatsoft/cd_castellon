import 'package:cd_castellon/app/pages/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cd_castellon/app/pages/splash/splash_controller.dart';
import 'package:cd_castellon/app/pages/theme/app_colors.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (controller) => Scaffold(
        body: Stack(
          children: [
            Container(
              alignment: Alignment.center,
              color: Get.isDarkMode ? AppThemes.blackCS : AppThemes.whiteCS,
              child: GestureDetector(
                onTap: () => Get.offNamed("/news"),
                child: Hero(
                  tag: "logo",
                  child: Image.asset(
                    "assets/images/logo.png",
                    width: 128,
                    height: 128,
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Image.asset(
                  "assets/images/logoajat.png",
                  width: 56,
                  height: 56,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}