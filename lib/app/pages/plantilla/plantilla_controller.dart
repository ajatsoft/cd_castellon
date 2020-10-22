import 'dart:async';

import 'package:cd_castellon/app/data/model/cuerpo_tecnico.dart';
import 'package:cd_castellon/app/data/model/players.dart';
import 'package:cd_castellon/app/data/provider/plantilla_provider.dart';
import 'package:cd_castellon/app/data/repository/plantilla_repository.dart';
import 'package:get/get.dart';

class PlantillaController extends GetxController {
  static PlantillaController get to => Get.find();

  PlantillaController({
    this.repository,
  });

  final PlantillaRepository repository;

  final _isLoadingj = false.obs;

  get isLoading => _isLoadingj.value;

  Jugadores modelJugadores;

  List<AthleteCS> get playerCS => modelJugadores.athletes;

  void getJugadores() async {
    _isLoadingj.value = true;
    modelJugadores = await repository.getJugadores();
    // print(playerCS[0].displayName);
    _isLoadingj.value = false;
  }

  // List<Jugador> _jugadores = [];
  //
  // List<Jugador> get jugadores => _jugadores;

  List<CuerpoTecnico> _personal = [];

  List<CuerpoTecnico> get personal => _personal;

  bool _loading = true;

  bool get loading => _loading;

  bool _loading2 = true;

  bool get loading2 => _loading2;


  @override
  void onInit() {
    getJugadores();
    this.loadCT();
    // this.loadJugadores();
    super.onReady();
  }

  @override
  void onReady() {
    super.onReady();
  }

  // Future<void> loadJugadores() async {
  //   print('loadJugadores');
  //   final data = await JugadoresAPI.instance.getJugadores();
  //   print('loadJugadoresdata $data');
  //
  //   this._jugadores = data;
  //   // this._loading = false;
  //   update();
  // }

  Future<void> loadCT() async {
    final data = await JugadoresAPI.instance.getCT();
    this._personal = data;
    this._loading2 = false;
    update();
  }

  ///TABS
  final _currentIndex = 0.obs;

  set currentIndex(value) => this._currentIndex.value = value;

  get currentIndex => this._currentIndex.value;

  changeTab(int index) {
    this.currentIndex = index;
  }

  onTabTapped(int index) {
    this.currentIndex = index;
  }
}
