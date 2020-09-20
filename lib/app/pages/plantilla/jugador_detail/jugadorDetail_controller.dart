import 'package:get/get.dart';

class JugadorDetailController extends GetxController {
  static JugadorDetailController get to => Get.find();

  bool _loading = true;

  bool get loading => _loading;

  bool _loading2 = true;

  bool get loading2 => _loading2;

  //
  // Jugador _jugadoreDetail;
  // AthleteCS get jugadoreDetail => PlantillaController.to.modelJugadores.athletes;
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
      case '307382':
        return 'assets/jugadores/307382.jpg';
        break;
      case '194182':
        return 'assets/jugadores/194182.jpg';
        break;
      case '155725':
        return 'assets/jugadores/155725.jpg';
        break;
      case '285347':
        return 'assets/jugadores/285347.png';
        break;
      case '283819':
        return 'assets/jugadores/283819.jpg';
        break;
      case '290832':
        return 'assets/jugadores/290832.jpg';
        break;
      case '171119':
        return 'assets/jugadores/171119.jpg';
        break;
      case '168469':
        return 'assets/jugadores/168469.jpg';
        break;
      case '279518':
        return 'assets/jugadores/279518.jpg';
        break;
      case '176748':
        return 'assets/jugadores/176748.jpg';
        break;
      case '259139':
        return 'assets/jugadores/259139.jpg';
        break;
      case '265776':
        return 'assets/jugadores/265776.jpg';
        break;
      case '283827':
        return 'assets/jugadores/265776.jpg';
        break;
      case '193504':
        return 'assets/jugadores/193504.jpg';
        break;
      case '157344':
        return 'assets/jugadores/157344.jpg';
        break;
      case '260257':
        return 'assets/jugadores/260257.jpg';
        break;
      case '214280':
        return 'assets/jugadores/214280.jpg';
        break;
      case '214345':
        return 'assets/jugadores/214345.png';
        break;
      case '186571':
        return 'assets/jugadores/186571.jpg';
        break;
      case '125702':
        return 'assets/jugadores/125702.jpg';
        break;
      case '279725':
        return 'assets/jugadores/279725.jpg';
        break;
      case '130137':
        return 'assets/jugadores/130137.jpg';
        break;
      case '267514':
        return 'assets/jugadores/267514.jpg';
        break;
      case '170236':
        return 'assets/jugadores/170236.jpg';
        break;
      case '275934':
        return 'assets/jugadores/275934.jpg';
        break;
    }
  }

  getDemarcacion(demarcacion) {
    switch (demarcacion) {
      case 'Arquero':
        return 'assets/football/demarcacion.png';
        break;
      case 'Defensor':
        return 'Defensa';
        break;
      case 'Mediocampista':
        return 'Centrocampista';
        break;
      case 'Atacante':
        return 'Delantero';
        break;
    }
  }
}
