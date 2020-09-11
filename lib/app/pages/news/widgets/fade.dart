import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cd_castellon/app/pages/news/news_controller.dart';
import 'package:cd_castellon/app/pages/theme/app_colors.dart';

class Fade extends StatelessWidget {
  final NewsController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Visibility(
        visible: controller.finished.value == false,
        child: Positioned(
          left: 0,
          top: 50,
          right: 0,
          bottom: 50,
          child: AnimatedOpacity(
            opacity: controller.visible.value ? 1.0 : 0.02,
            duration: Duration(milliseconds: 2500),
            onEnd: () => controller.setFinished(true),
            child: Hero(
              tag: "logo",
              child: Container(
                decoration: BoxDecoration(
                  color: Get.isDarkMode ? AColors.dark : AColors.light,
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/logo.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
