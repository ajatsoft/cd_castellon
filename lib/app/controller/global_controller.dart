import 'package:cd_castellon/app/controller/theme_controller.dart';
import 'package:cd_castellon/app/pages/partido/home/controller.dart';
import 'package:cd_castellon/app/pages/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:get_storage/get_storage.dart';

class BaseController implements Bindings {
  @override
  void dependencies() {
    Get.put<ThemeController>(ThemeController());
  }
}
