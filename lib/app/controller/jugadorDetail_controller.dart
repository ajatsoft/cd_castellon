import 'package:get/get.dart';
import 'package:cd_castellon/app/data/model/jugadores.dart';
import 'package:cd_castellon/app/data/provider/plantilla_provider.dart';
//import 'package:get_flutter/models/home_model.dart';
//import 'package:get_flutter/repository/home_repository.dart';

class JugadorDetailController extends GetxController {

  static JugadorDetailController get to => Get.find();

  // bool _loading = true;
  // bool get loading => _loading;
  //
  // bool _loading2 = true;
  // bool get loading2 => _loading2;
  //
  // Jugador _jugadoreDetail;
  // Jugador get jugadoreDetail => _jugadoreDetail;
  //
  // List <String> _jugadoreDetail2;
  // List <String> get jugadoreDetail2 => _jugadoreDetail2;

  @override
  void onInit() {
    super.onReady();
  }

  @override
  void onReady() {
    super.onReady();
  }

  // Future<void> loadJugadorDetail(url) async {
  //   final data = await JugadoresAPI.instance.getJugadorDetail(url);
  //   this._jugadoreDetail = data;
  //   this._loading = false;
  //   update();
  //   print('===**********==== loadJugadorDetail ===**********====');
  // }
  //
  // Future<void> loadJugadorDetail2(url) async {
  //   final data = await JugadoresAPI.instance.getJugadorDetail2(url);
  //   this._jugadoreDetail2 = data;
  //   this._loading2 = false;
  //   update();
  //   print('===**********==== loadJugadorDetail2 ===**********====');
  // }

  getPlayerIMG(id) {
    switch (id) {
      case '145209':
        return 'assets/jugadores/145209.jpg';
        break;
      case '194182':
        return 'assets/jugadores/194182.jpg';
        break;
      case '155725':
        return 'assets/jugadores/155725.jpg';
        break;
      case '285347':
        return 'assets/jugadores/285347.jpg';
        break;
      case '283819':
        return 'assets/jugadores/283819.jpg';
        break;
    }
  }
}

