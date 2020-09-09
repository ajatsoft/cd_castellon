import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cd_castellon/app/controller/splash_controller.dart';
import 'package:cd_castellon/app/pages/theme/app_colors.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (controller) => Scaffold(
        body: Container(
          alignment: Alignment.center,
          color: Get.isDarkMode ? AColors.dark : AColors.light,
          child: GestureDetector(
            onTap: () => Get.offNamed("/news"),
            child: Hero(
              tag: "logo",
              child: Image.asset(
                "images/logo.png",
                width: 128,
                height: 128,
              ),
            ),
          ),
        ),
      ),
    );
  }
}