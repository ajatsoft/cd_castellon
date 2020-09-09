import 'package:cd_castellon/app/data/model/modelPartidoDetail.dart';
import 'package:cd_castellon/app/data/model/partidoHome_model.dart';
import 'package:cd_castellon/app/data/provider/partidoHome_provider.dart';

class PartidoHomeRepository {
  PartidoHomeRepository({this.partidoHomeProvider});
  final PartidoHomeProvider partidoHomeProvider;



  Future<PartidoHomeModel> getPartidoHome() async {
    return partidoHomeProvider.getPartidoHome();
  }

Future<PartidoDataDetail> getPartidoHomeDetail(id) async {
    return partidoHomeProvider.getPartidoHomeDetail(id);
  }





}