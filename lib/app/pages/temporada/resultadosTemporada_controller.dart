import 'package:cd_castellon/app/data/model/livePartidoModel.dart';
import 'package:get/get.dart';

// import 'package:cd_castellon/app/data/model/livePartidoModel2.bak';
import 'package:cd_castellon/app/data/model/partido.dart';
import 'package:cd_castellon/app/data/repository/partido_repository.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class ResultadosController extends GetxController {
  ResultadosController({this.repository});

  final PartidoRepository repository;

  static ResultadosController get to => Get.find();

  final _isLoading = false.obs;

  get isLoading => _isLoading.value;

  Temporada modelTemporada;
  final modelJornada = Jornada().obs;

  final _modelPratidoDataDetail = LivePartidoDataDetail().obs;

  get livePartidoDataDetail => _modelPratidoDataDetail;

  Boxscore form;
  Header header;
  Play _play;

  @override
  void onInit() {
    print(
        '%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% INIT RESULTADOS CONTR0LLER');
    _getData();
  }

  void _getData() async {
    _isLoading.value = true;
    modelTemporada = await repository.getData();
    _isLoading.value = false;
  }

  void getDataPartidos(jornada) async {
    _isLoading.value = true;
    modelJornada.value = await repository.getDataPartidos(jornada);
    _isLoading.value = false;
    update();
  }

  Future refreshJornada(jornada) async {
    modelJornada.value = await repository.getDataPartidos(jornada);
    refreshController.refreshCompleted();
    print('refresh');
    update();
  }

  void gePartidoDetail(id) async {
    _isLoading.value = true;
    _modelPratidoDataDetail.value = await repository.getPartidoDetail(id);
    _isLoading.value = false;
  }

  RefreshController refreshController = RefreshController();

  Future refresh(id) async {
    _modelPratidoDataDetail.value =
    await repository.getPartidoDetail(id);
    refreshController.refreshCompleted();
    print('refresh');
    update();
  }

  //
  // void loadLiveData(id) async {
  //   refreshController.requestRefresh();
  //   modelPratidoDataDetail = await repository.getPartidoDetail(id);
  //   refreshController.refreshCompleted();
  // }

  List<Week> get temporada => modelTemporada?.temporada;

  List<Event> get partidos => modelJornada.value.sports[0].leagues[0].events;

  ///DETAILDATA
  ///
  ///
  get attendance => _modelPratidoDataDetail.value.gameInfo.attendance;

  List<FormEvent> get formGameEvents =>
      _modelPratidoDataDetail.value.boxscore?.form[1].events;

  Participante get datospartidoHome =>
      _modelPratidoDataDetail.value.header?.competitions[0].competitors[0];

  Participante get datospartidoAway =>
      _modelPratidoDataDetail.value.header?.competitions[0].competitors[1];

  TeamTeam get equipospartidoHome =>
      _modelPratidoDataDetail.value.header?.competitions[0].competitors[0].team;

  TeamTeam get equipospartidoAway =>
      _modelPratidoDataDetail.value.header?.competitions[0].competitors[1].team;

  List<LivePartidoDataDetailRoster> get alineacion =>
      _modelPratidoDataDetail.value.rosters;

  RxList<KeyEvent> get evento => _modelPratidoDataDetail.value.keyEvents.obs;


  final _screen = 0.obs;

  get screen => this._screen.value;

  set screen(value) => this._screen.value = value;

  final currentIndex = 0.obs;

  void changeIndex(int index) {
    currentIndex.value = index;
    update();
  }
}
