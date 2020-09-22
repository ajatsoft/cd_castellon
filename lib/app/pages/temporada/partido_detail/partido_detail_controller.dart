import 'package:cd_castellon/app/data/model/livePartidoModel.dart';
import 'package:cd_castellon/app/pages/temporada/resultadosTemporada_controller.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class PartidoDetailController extends GetxController {
  RefreshController refreshController = RefreshController();

  static final controller = Get.find<ResultadosController>();

  RxList<KeyEvent> _firstHalf = controller.evento;

  List<KeyEvent> get firstHalf => _firstHalf?.value ?? new List<KeyEvent>();

  List<KeyEvent> _secondHalf;

  List<KeyEvent> get secondHalf => _secondHalf;

// void refresh(id) async {
//   // _firstHalf.clear();
//   // await controller.gePartidoDetail(id);
//   refreshController.refreshCompleted();
// }
}
