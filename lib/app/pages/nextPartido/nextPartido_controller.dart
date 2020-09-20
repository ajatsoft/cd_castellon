import 'package:cd_castellon/app/data/model/livePartidoModel.dart';
import 'package:cd_castellon/app/data/model/nextPartidoModel.dart';
import 'package:cd_castellon/app/data/repository/nextPartido_repository.dart';
import 'package:get/state_manager.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

const baseUrl = 'https://www.espn.com/soccer/team/_/id/4438&xhr=1';

class NextPartidoController extends GetxController {
  NextPartidoController({
    this.repository,
  });

  NextPartidoRepository repository;

  final _isLoading = true.obs;

  get isLoading => _isLoading.value;

  ///      LIVE_PARTIDO

  final _modelNexPartido = NextPartido().obs;

  get modelNexPartido => _modelNexPartido;

  Feed get nexPartido => _modelNexPartido.value.columns[0].items[0].feed[1];

  String get idPartido => nexPartido.id;

  ///      LIVE_PARTIDO

  final _livePartidoDataDetail = LivePartidoDataDetail().obs;

  get livePartidoDataDetail => _livePartidoDataDetail;

  List<KeyEvent> get eventos => _livePartidoDataDetail.value.keyEvents;

  List<LivePartidoDataDetailRoster> get alineacionPH =>
      _livePartidoDataDetail.value.rosters;

  List<HeadToHeadGameEvent> get head_head =>
      _livePartidoDataDetail.value.headToHeadGames[0].events;

  Form get form => _livePartidoDataDetail.value.boxscore.form[0];

  Form get formHome => _livePartidoDataDetail.value.boxscore.form[0];

  Form get formAway => _livePartidoDataDetail.value.boxscore.form[1];

  LivePartidoDataDetail get partidolive => _livePartidoDataDetail.value;

  get scoreHome =>
      _livePartidoDataDetail.value.header?.competitions[0].competitors[0].score;

  get scoreAway =>
      _livePartidoDataDetail.value.header?.competitions[0].competitors[1].score;

  @override
  void onInit() async {
    await getPartidoHome();
    await getLivePartidoDetail();
    print('%%%%%%%%% INIT NextPartidoController  %%%%%%%%%%%%%${idPartido}');
  }

  @override
  void onReady() {
    print('%%%%%%%%%%%% ready NextPartidoController  %%%%%%%%%%%%%%%');
    super.onReady();
  }

  void getPartidoHome() async {
    _modelNexPartido.value = await repository.getPartidoHome();
  }

  void getLivePartidoDetail() async {
    _livePartidoDataDetail.value =
        await repository.getLivePartidoDetail(nexPartido.id);
    _isLoading.value = false;
    update();
  }

  RefreshController refreshController = RefreshController();

  Future refresh() async {
    _livePartidoDataDetail.value =
        await repository.getLivePartidoDetail(nexPartido.id);
    refreshController.refreshCompleted();
    print('refresh');
    update();
  }
}
