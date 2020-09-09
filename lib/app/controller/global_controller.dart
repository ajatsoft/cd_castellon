import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:get_storage/get_storage.dart';


class GlobalController extends GetxController {
  static GlobalController get to => Get.find();

//  final box = GetStorage();

//  final _themeIsDark = false.obs;
//  get themeIsDark => this._themeIsDark.value;
//  set themeIsDark(value) => this._themeIsDark.value = value;

//  @override
//  onInit() {
//    box.writeIfNull('key', false);
//    this.themeIsDark = box.read('key');
//  }

  @override
  void onReady() {
//    changeTheme();
    super.onReady();
  }

//  changeTheme() async{
//    Get.changeTheme(
////        this.themeIsDark == false ? ThemeData.light() : ThemeData.dark());
////    box.write('key', this.themeIsDark );
////    this.themeIsDark = !this.themeIsDark;
//  }

//  final _lang = 'en-US'.obs;
//  String get lang => this._lang.value;
//  set lang(value) => this._lang.value = value;
//
//  changeLanguage(lang){
//    this.lang = lang;
//    if(lang == 'pt-BR'){
//      Get.updateLocale(Locale('pt'));
//    }else if( lang == 'en-US'){
//      Get.updateLocale(Locale('en'));
//    }else if(lang == 'es-MX'){
//      Get.updateLocale(Locale('es'));
//    }
//    print(Get.locale);
//  }

}