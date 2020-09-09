import 'package:get/get.dart';
import 'package:cd_castellon/app/data/model/modelPartidoDetail.dart';
import 'package:cd_castellon/app/data/model/partidoHome_model.dart';
import 'package:cd_castellon/app/data/repository/partidoHome_repository.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class PartidoHomeController extends GetxController {
  PartidoHomeController({
    this.repository,
  });

  PartidoHomeRepository repository;

  final _isLoading = false.obs;

  get isLoading => _isLoading.value;

  final _modelPartidoHome = PartidoHomeModel().obs;
  final _partidoDataDetail = PartidoDataDetail().obs;

  List<KeyEvent> get eventos => _partidoDataDetail.value.keyEvents;

  List<PartidoDataDetailRoster> get alineacionPH =>
      _partidoDataDetail.value.rosters;

  // List<KeyEvent> eventos = partidoDataDetail.value.keyEvents;
  // Rx<KeyEvent> _selectedevento = Rx<KeyEvent>();
  // KeyEvent get selectedevento => _selectedevento.value;

  List<Evento> get head_head =>
      _partidoDataDetail.value.headToHeadGames[0].events;

  HeadToHeadGame get form => _partidoDataDetail.value.boxscore.form[0];

  HeadToHeadGame get formHome => _partidoDataDetail.value.boxscore.form[0];

  HeadToHeadGame get formAway => _partidoDataDetail.value.boxscore.form[1];

  CompetitionHome get competition =>
      _modelPartidoHome.value.team.nextEvent[0].competitions[0];

  PartidoDataDetail get partido => _partidoDataDetail.value;

  // GameInfo get gameInfo => partidoDataDetail.value.gameInfo;
  // HeadToHeadGame get headToHead => partidoDataDetail.value.headToHeadGames[0];
  // PartidoDataDetailRoster get alineacionHome => partidoDataDetail.value.rosters[0];
  // PartidoDataDetailRoster get alineacionAway => partidoDataDetail.value.rosters[1];
  get scoreHome =>
      _partidoDataDetail.value.header?.competitions[0].competitors[0].score;

  get scoreAway =>
      _partidoDataDetail.value.header?.competitions[0].competitors[1].score;

  @override
  void onInit() {
    print(
        '%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% INIT PartidoHomeController  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
    getPartidoHome();
  }

  @override
  void onReady() {
    print(
        '%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% ready PartidoHomeController  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
    super.onReady();
  }


  void getPartidoHome() async {
    _isLoading.value = true;
    _modelPartidoHome.value = await repository.getPartidoHome();
    _partidoDataDetail.value = await repository.getPartidoHomeDetail(competition.id);
    print('form....gePartidoDetail===================%%%%%%%%%%%%%=========model=Controller=======${_partidoDataDetail.value.header?.competitions[0].competitors[1].score}');
    print('form....gePartidoDetail===================%%%%%%%%%%%%%=========model=Controller=======${_partidoDataDetail.value.header?.competitions[0].competitors[1].score}');
    print('form....gePartidoDetail===================%%%%%%%%%%%%%=========model=Controller=======${_partidoDataDetail.value.header?.competitions[0].competitors[1].score}');
    _isLoading.value = false;
  }



  RefreshController refreshController = RefreshController();
  Future refresh() async {
    // await Future.delayed(Duration(milliseconds: 1000));
    _partidoDataDetail.value = await repository.getPartidoHomeDetail(competition.id);
    refreshController.refreshCompleted();
    print('refresh');
  }


}


//
//
//
// class PartidoHomeController extends GetxController {
//   PartidoHomeController({
//     this.repository,
//   });
//   PartidoHomeRepository repository;
//
//   final _isLoading = false.obs;
//   get isLoading => _isLoading.value;
//
//   final _modelPartidoHome = PartidoHomeModel().obs;
//   final _partidoDataDetail = PartidoDataDetail().obs;
//   List<KeyEvent> get eventos => _partidoDataDetail.value.keyEvents;
//
//
//   // List<KeyEvent> eventos = partidoDataDetail.value.keyEvents;
//   // Rx<KeyEvent> _selectedevento = Rx<KeyEvent>();
//   // KeyEvent get selectedevento => _selectedevento.value;
//
//
//
//   CompetitionHome get competition => _modelPartidoHome.value.team.nextEvent[0].competitions[0];
//   PartidoDataDetail get partido => _partidoDataDetail.value;
//   // GameInfo get gameInfo => partidoDataDetail.value.gameInfo;
//   // HeadToHeadGame get headToHead => partidoDataDetail.value.headToHeadGames[0];
//   // PartidoDataDetailRoster get alineacionHome => partidoDataDetail.value.rosters[0];
//   // PartidoDataDetailRoster get alineacionAway => partidoDataDetail.value.rosters[1];
//   get scoreHome => _partidoDataDetail.value.header?.competitions[0].competitors[0].score;
//   get scoreAway => _partidoDataDetail.value.header?.competitions[0].competitors[1].score;
//
//
//
//
//
//   @override
//   void onInit() {
//     print('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% INIT PartidoHomeController  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
//     getPartidoHome();
//   }
//
//   @override
//   void onReady() {
//     // print('================== ${eventos[0].id}');
//     // print('================== ${eventos[0].id}');
//     // print('================== ${selectedevento.id}');
//     super.onReady();
//   }
//
//   void getPartidoHome() async {
//     _isLoading.value = true;
//     _modelPartidoHome.value = await repository.getPartidoHome();
//     _partidoDataDetail.value = await repository.getPartidoHomeDetail();
//     print('form....gePartidoDetail===================%%%%%%%%%%%%%=========model=Controller=======${_partidoDataDetail.value.header?.competitions[0].competitors[1].score}');
//     print('form....gePartidoDetail===================%%%%%%%%%%%%%=========model=Controller=======${_partidoDataDetail.value.header?.competitions[0].competitors[1].score}');
//     print('form....gePartidoDetail===================%%%%%%%%%%%%%=========model=Controller=======${_partidoDataDetail.value.header?.competitions[0].competitors[1].score}');
//     _isLoading.value = false;
//   }
//
//
//
//   RefreshController refreshController = RefreshController();
//   Future refresh() async {
//     // await Future.delayed(Duration(milliseconds: 1000));
//     _partidoDataDetail.value = await repository.getPartidoHomeDetail();
//     refreshController.refreshCompleted();
//     print('refresh');
//   }
//
//
// }
//
//
//
