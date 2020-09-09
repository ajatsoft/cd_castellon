
import 'package:get/get.dart';
import 'package:cd_castellon/app/data/model/modelPartidoDetail.dart';
import 'package:cd_castellon/app/data/repository/partido_repository.dart';
import 'package:cd_castellon/app/pages/partido/resultados/partido_detail/tabs/partido_live.dart';
import 'package:cd_castellon/app/pages/partido/resultados/resultados_controller.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';


class PartidoDetailController extends GetxController {
  RefreshController refreshController = RefreshController();


  static final controller = Get.find<ResultadosController>();
  // final PartidoController c = Get.put(PartidoController());


  // @override
  // void onInit() {
  //   _firstHalf = _generateFirstHalfData();
  //   _secondHalf = _generateSecondHalfData();
  //
  // }

  RxList<KeyEvent> _firstHalf = controller.evento;
  List<KeyEvent> get firstHalf  => _firstHalf?.value ?? new List<KeyEvent>();


  List<KeyEvent> _secondHalf;
  List<KeyEvent> get secondHalf  => _secondHalf;


  void refresh(id) async {
    // _firstHalf.clear();
    await controller.gePartidoDetail(id);
    refreshController.refreshCompleted();

  }






}



// void loadNewEvents() {
//   RxList<KeyEvent> newData = List<KeyEvent>().obs;
//   newData.value = await controller.loadLiveData(id);
// }




// final _obj = ''.obs;
// set obj(value) => _obj = value;
// get obj => _obj;


//
//
// List<FootballData> _generateFirstHalfData() {
//   return <FootballData>[
//     const FootballData(
//       time: "5'",
//       team: Team.arsenal,
//       action: Action.foul,
//       title: 'Foul!',
//       subtitle: 'David Luiz brings his opponent down.',
//     ),
//     const FootballData(
//       time: "6'",
//       team: Team.arsenal,
//       action: Action.foul,
//       title: 'Yellow',
//       subtitle: 'This yellow card was deserved.',
//     ),
//     const FootballData(
//       time: "17'",
//       team: Team.barcelona,
//       action: Action.goal,
//       title: 'Gooooaaaal!',
//       subtitle:
//       'Goal! Lionel Messi slams the ball into the open net from close range.',
//     ),
//     const FootballData(
//       time: "30'",
//       team: Team.barcelona,
//       action: Action.yellowCard,
//       title: 'One more!',
//       subtitle: 'Piqué gets a yellow card for arguing with the referee.',
//     ),
//     const FootballData(
//       time: "42'",
//       team: Team.arsenal,
//       action: Action.injury,
//       title: 'Ouchh',
//       subtitle:
//       'Mesut Özil is writhing in pain and can now receive medical treatment.',
//     ),
//   ];
// }
//
// List<FootballData> _generateSecondHalfData() {
//   return <FootballData>[
//     const FootballData(
//       time: "50'",
//       team: Team.barcelona,
//       action: Action.offside,
//       title: 'Offside!',
//       subtitle:
//       'The referee whistle as the Luis Suárez was trying to advance for the goal.',
//     ),
//     const FootballData(
//       time: "61'",
//       team: Team.barcelona,
//       action: Action.redCard,
//       title: 'Red card!',
//       subtitle:
//       'He’s off! Busquets gets his marching orders from referee Felix Brych after the VAR review.',
//     ),
//     const FootballData(
//       time: "72'",
//       team: Team.arsenal,
//       action: Action.goal,
//       title: 'Goal!',
//       subtitle: 'Nicolas Pépé puts the ball past the goalkeeper!',
//     ),
//     const FootballData(
//       time: "84'",
//       team: Team.arsenal,
//       action: Action.goal,
//       title: 'Coming from behind!!',
//       subtitle:
//       'Wonderful finish from Alexandre Lacazette. He drills a low shot precisely into the bottom left corner. No chance for the goalkeeper!',
//     ),
//   ];
// }
//

