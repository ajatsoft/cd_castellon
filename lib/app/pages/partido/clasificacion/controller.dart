import 'package:get/get.dart';
import 'package:cd_castellon/app/data/model/modelClasificacion.dart';
import 'package:cd_castellon/app/data/model/partido.dart';
import 'package:cd_castellon/app/data/provider/partido_provider.dart';
import 'package:cd_castellon/app/data/repository/clasificacion_repository.dart';
import 'package:cd_castellon/app/data/repository/partido_repository.dart';
import 'package:cd_castellon/app/translations/en_US/en_us_translations.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';


class ClasificacionController extends GetxController {

  static ClasificacionController get to => Get.find();
  ClasificacionController({
    this.repository,
  });

  final ClasificacionRepository repository;

  final _isLoading = false.obs;

  get isLoading => _isLoading.value;

  Standings modelClasificacion;
  Child modelChild;
  Entry modelEquipo;

  List<Child> get datos => modelClasificacion.children;

  List<Entry> get entries => datos[0].standings.entries;

  @override
  void onInit() {
    print(
        '%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% INIT ClasificacionController  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');

    getClasificacion();
  }

  void getClasificacion() async {
    _isLoading.value = true;
    modelClasificacion = await repository.getClasificacion();
    _isLoading.value = false;
  }




  RefreshController refreshController = RefreshController();
  Future refresh() async {
    // await Future.delayed(Duration(milliseconds: 1000));
    modelClasificacion = await repository.getClasificacion();
    refreshController.refreshCompleted();
  }

  // Future load() async {
  //   modelClasificacion = await repository.getClasificacion();
  //     refreshController.loadComplete();
  //   print('load');
  //
  // }

  }
