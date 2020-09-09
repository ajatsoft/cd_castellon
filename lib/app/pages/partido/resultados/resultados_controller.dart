import 'package:get/get.dart';
import 'package:cd_castellon/app/data/model/modelPartidoDetail.dart';
import 'package:cd_castellon/app/data/model/partido.dart';
import 'package:cd_castellon/app/data/repository/partido_repository.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class ResultadosController extends GetxController {
  ResultadosController({this.repository});

  final PartidoRepository repository;

  static ResultadosController get to => Get.find();

  RefreshController refreshController = RefreshController();

  final _isLoading = false.obs;

  get isLoading => _isLoading.value;

  Temporada modelTemporada;
  Jornada modelJornada;

  PartidoDataDetail modelPratidoDataDetail;

  Boxscore form;
  Header header;
  Play _play;

  @override
  void onInit() {
    print('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% INIT RESULTADOS CONTR0LLER');
    _getData();
  }

  void _getData() async {
    _isLoading.value = true;
    modelTemporada = await repository.getData();
    _isLoading.value = false;
  }

  void getDataPartidos(jornada) async {
    _isLoading.value = true;
    modelJornada = await repository.getDataPartidos(jornada);
    _isLoading.value = false;
  }

  void gePartidoDetail(id) async {
    _isLoading.value = true;
    modelPratidoDataDetail = await repository.getPartidoDetail(id);
    _isLoading.value = false;
  }

  void loadLiveData(id) async {
    refreshController.requestRefresh();
    modelPratidoDataDetail = await repository.getPartidoDetail(id);
    refreshController.refreshCompleted();
  }

  List<Week> get temporada => modelTemporada?.temporada;

  List<Event> get partidos => modelJornada?.sports[0].leagues[0].events;

  ///DETAILDATA
  ///
  ///
  get attendance => modelPratidoDataDetail.gameInfo.attendance;

  List<Evento> get formGameEvents =>
      modelPratidoDataDetail.boxscore?.form[1].events;

  Participante get datospartidoHome =>
      modelPratidoDataDetail.header?.competitions[0].competitors[0];

  Participante get datospartidoAway =>
      modelPratidoDataDetail.header?.competitions[0].competitors[1];

  CompetitorTeam get equipospartidoHome =>
      modelPratidoDataDetail.header?.competitions[0].competitors[0].team;

  CompetitorTeam get equipospartidoAway =>
      modelPratidoDataDetail.header?.competitions[0].competitors[1].team;

  List<PartidoDataDetailRoster> get alineacion =>
      modelPratidoDataDetail.rosters;

  RxList<KeyEvent> get evento => modelPratidoDataDetail.keyEvents.obs;

  final _screen = 0.obs;

  get screen => this._screen.value;

  set screen(value) => this._screen.value = value;

  final currentIndex = 0.obs;

  void changeIndex(int index) {
    currentIndex.value = index;
    update();
  }
}
