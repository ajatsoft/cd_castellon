import 'dart:async';

import 'package:get/get.dart';

class SplashController extends GetxController {

  @override
  void onInit() {
    startTime();
    super.onInit();
  }

  startTime() async {
    var duration = new Duration(milliseconds: 1500);
    return new Timer(duration, route);
  }

  route() {
    Get.offNamed("/news");
  }

}