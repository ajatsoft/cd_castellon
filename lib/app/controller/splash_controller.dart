import 'package:flutter/material.dart';
import 'dart:async';

import 'package:get/get.dart';

class SplashController extends GetxController {

  @override
  void onInit() {
    startTime();
    super.onInit();
  }

  startTime() async {
    var duration = new Duration(seconds: 1);
    return new Timer(duration, route);
  }

  route() {
    Get.offNamed("/news");
  }

}