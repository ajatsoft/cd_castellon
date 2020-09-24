import 'package:cd_castellon/app/pages/patrocinadores/patrocinadores_controller.dart';
import 'package:cd_castellon/app/pages/widgets_general/dots_loader.dart';
import 'package:cd_castellon/app/utils/calcs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Leafs extends StatelessWidget {
  final PatrocinadoresController controller = Get.find();
  final double topDistance = Get.height * 0.20;
  final double scaledLeafHeight = Get.height * 0.55;

  @override
  Widget build(BuildContext context) {
    return (controller.products.value.length == 0)
        ? Center(child: ColorLoader())
        : Obx(() => AnimatedPositioned(
              top: topDistance,
              left: Calcs.calcHorizontalParallaxPosition(
                backgroundOriginalHeight: 439,
                backgroundOriginalWidth: 999,
                backgroundRenderHeight: scaledLeafHeight,
                screenWidth: Get.width,
                foregroundTotalSteps: controller.products.value.length,
                foregroundStepIndex: controller.selectedIndex.value,
                offsetPadding: Get.width / 2,
              ),
              duration: Duration(milliseconds: 200),
              child: Hero(
                tag: "leafs",
                child: Container(
                  child: ShaderMask(
                    shaderCallback: (rect) {
                      return LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.transparent,
                          Colors.black,
                          Colors.black,
                          Colors.black,
                          Colors.transparent,
                          Colors.transparent
                        ],
                      ).createShader(
                        Rect.fromLTRB(0, 0, rect.width, rect.height),
                      );
                    },
                    blendMode: BlendMode.dstIn,
                    child: Opacity(
                      opacity: 0.5,
                      child: Image.asset(
                        "assets/images/leafs.png",
                        height: Get.height * 0.62,
                      ),
                    ),
                  ),
                ),
              ),
            ));
  }
}
