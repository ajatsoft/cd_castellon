import 'dart:convert';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:cd_castellon/app/data/model/patrocinadoresModel.dart';
import 'package:get/state_manager.dart';
import 'package:http/http.dart' as http;

class PatrocinadoresController extends GetxController {
  // PatrocinadoresController() {
  //   _showAfter();
  // }
  CarouselController carouselController = CarouselController();

  RxList<Empresa> products = RxList<Empresa>();

  RxBool visibleTitle = RxBool(false);

  setVisibleTitle(bool visibleTitle) => this.visibleTitle.value = visibleTitle;
  RxString titleName = RxString("");

  setTitleName(String value) => titleName.value = value;
  RxString titleSubText = RxString("");

  setTitleSubText(String value) => titleSubText.value = value;

  RxBool visible = RxBool(true);

  setVisible(bool visible) => this.visible.value = visible;

  // RxBool finished = RxBool(false);
  // setFinished(bool finished) => this.finished.value = finished;

  Future<void> _showAfter() async {
    await Future.delayed(Duration(milliseconds: 1000), () => {});
    setVisible(false);
    updateTitleProduct();
  }

  onInit() async {
    await getPartidoDetail();
    await getLivePartidoDetail();
    await _showAfter();
    print(products.value.length);
  }

  onReady() async {
    print(products.value.length);
  }

  ///GET DATA
  void getLivePartidoDetail() async {
    products.value = await getPartidoDetail();
    update();
  }

  Future<List<Empresa>> getPartidoDetail() async {
    String url =
        'https://39465863.servicio-online.net/cd_castellon/patrocinadores.json';
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var body = json.decode(utf8.decode(response.bodyBytes));
      print(body);
      return Patrocinadores.fromJson(body).empresa;
    } else {
      return throw Exception('Error getting scoreboard');
    }
  }

  ///ANIMATION

  RxInt selectedIndex = RxInt(0);

  setSelectedIndex(int value) {
    this.selectedIndex.value = value;
    setVisibleTitle(false);
  }

  updateTitleProduct() {
    setTitleName(products[selectedIndex.value].nombre);
    setTitleSubText(products[selectedIndex.value].subText);
    setVisibleTitle(true);
  }
}
