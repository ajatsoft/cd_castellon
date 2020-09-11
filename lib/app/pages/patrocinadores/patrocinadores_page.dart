import 'package:cd_castellon/app/pages/theme/app_colors.dart';
import 'package:cd_castellon/app/pages/widgets_general/appBar.dart';
import 'package:cd_castellon/app/pages/widgets_general/customAppBarAction.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

import 'patrocinadores_controller.dart';
import 'widgets/bottom_card_widget.dart';
import 'widgets/top_card_widget.dart';

class PatrocinadoresPage extends StatelessWidget {
  const PatrocinadoresPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PatrocinadoresController>(
      builder: (_) => Scaffold(
        backgroundColor: Get.isDarkMode ? AColors.dark : Colors.white70,
        body: Stack(
          children: <Widget>[
            SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: [
                      CustomAppBarAction(
                        () => Get.back(),
                        Icons.arrow_back_ios,
                      ),
                      SizedBox(width: 16),
                      Text(
                        "Patrocinadores",
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  // Tabs(),
                  // SizedBox(height: 8),
                  SlidingCardsView(),
                ],
              ),
            ),
            ExhibitionBottomSheet(), //use this or ScrollableExhibitionSheet
          ],
        ),
      ),
    );
  }
}
