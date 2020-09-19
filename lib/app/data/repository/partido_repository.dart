import 'package:cd_castellon/app/data/model/livePartidoModel.dart';
import 'package:cd_castellon/app/data/model/partido.dart';
import 'package:cd_castellon/app/data/provider/partido_provider.dart';

class PartidoRepository {
  PartidoRepository({this.partidoProvider});
  final PartidoProvider partidoProvider;

  Future<Temporada> getData() async {
    return partidoProvider.getData();
  }

  Future<Jornada> getDataPartidos(jornada) async {
    return partidoProvider.getDataPartidos(jornada);
  }

  Future<LivePartidoDataDetail> getPartidoDetail(id) async {
    return partidoProvider.getPartidoDetail(id);
  }
}
