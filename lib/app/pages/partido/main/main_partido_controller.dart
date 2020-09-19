import 'package:get/get.dart';
import 'package:cd_castellon/app/pages/partido/home/controller.dart';

class MainPartidoController extends GetxController {
  final _currentIndex = 0.obs;
  set currentIndex(value) => this._currentIndex.value = value;
  get currentIndex => this._currentIndex.value;

  final controllerHome = Get.find<PartidoHomeController>();

  @override
  void onInit() {
    // controllerHome.getPartidoHome();
    print('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% INIT MainPartidoController  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
  }


  changeTab(int index) {
    this.currentIndex = index;
  }

  onTabTapped(int index) {
    this.currentIndex = index;
  }
}
